// ignore_for_file: unnecessary_lambdas

import 'dart:convert';

import 'package:dart_holodex_api/src/enums/channel_sort.dart';
import 'package:dart_holodex_api/src/enums/channel_type.dart';
import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';
import 'package:dart_holodex_api/src/enums/includes.dart';
import 'package:dart_holodex_api/src/enums/language.dart';
import 'package:dart_holodex_api/src/enums/order.dart';
import 'package:dart_holodex_api/src/enums/organization.dart';
import 'package:dart_holodex_api/src/enums/search_sort.dart';
import 'package:dart_holodex_api/src/enums/video_search_type.dart';
import 'package:dart_holodex_api/src/enums/video_sort.dart';
import 'package:dart_holodex_api/src/enums/video_status.dart';
import 'package:dart_holodex_api/src/enums/video_type.dart';
import 'package:dart_holodex_api/src/exception.dart';
import 'package:dart_holodex_api/src/models.dart';
import 'package:dart_holodex_api/src/models/channel_video_filter.dart';
import 'package:dart_holodex_api/src/utils.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

/// A client for the Holodex API.
class HolodexClient {
  /// Creates a new instance of [HolodexClient]
  ///
  /// - `apiKey` Your personal API key. Be aware that the validity of the key is not checked, so ensure it is correct.
  ///
  /// - `basePath` (Optional) The base Holodex API url. Can be overriden with the mock sever API url: `https://stoplight.io/mocks/holodex/holodex/11620234`
  ///
  /// - `client` An existing HTTP Client, if needed. When left unspecified, an internal client will be created
  HolodexClient({
    required this.apiKey,
    this.basePath = 'https://holodex.net/api/v2',
    http.Client? client,
  }) {
    if (client == null) {
      _client = http.Client();
    } else {
      _client = client;
    }
  }

  /// HTTP Client
  late final http.Client _client;

  /// Base API URL
  final String basePath;

  /// Your API key
  final String apiKey;

  /// Get a video by its video ID, alias of [getVideos]
  ///
  /// Arguments:
  ///
  /// - `videoId` The video ID as a string
  /// - `includes` Request extra data be included in the results. They are not guarenteed to be returned.
  Future<VideoFull> getVideoFromId(
    String videoId, {
    List<Includes> includes = const [],
  }) async {
    final paginatedVideos = await getVideos(VideoFilter(
      ids: [videoId],
      includes: includes,
      paginated: false,
      limit: 1,
    ));

    return paginatedVideos.first;
  }

  /// Get a list of videos
  Future<PaginatedVideos> getVideos([
    VideoFilter filter = const VideoFilter(
      limit: 25,
      offset: 0,
      order: Order.descending,
      sort: [VideoSort.availableAt],
      paginated: false,
    ),
  ]) async {
    final languages =
        filter.languages.isEmpty ? [Language.all] : filter.languages;

    // Create the params list
    final Map<String, dynamic> params = {};

    // Add the items with default values (they can't be null)
    params.addAll({
      'limit': '${filter.limit}',
      'offset': '${filter.offset}',
      'order': filter.order.code,
    });

    _addVideoSort(filter.sort, params);

    _addPaginated(filter.paginated, params);

    _addChannelId(filter.channelId, params);

    _addId(filter.ids, params);

    // Add the info the videos must include
    final includes = filter.includes;
    _addIncludes(includes, params);

    // Add the languages to filter by
    // Add the first item so that there is not a comma in front
    _addLanguages(languages, params);

    // Add the max upcoming hours param
    _addMaxUpcomingHours(filter.maxUpcomingHours, params);

    // Add the mentioned channel id param
    _addMentionedChannelId(filter.mentionedChannelId, params);

    // Add the organization param
    _addOrganizations(filter.organization, params);

    // Add the topic param
    _addTopic(filter.topic, params);

    // Add the status param
    _addStatusList(filter.status, params);

    // Add the type param
    _addType(filter.type, params);

    final response = await get(path: _Constants.videosPath, params: params);

    if (filter.paginated) {
      // Grab total and return with it
      final videoList = PaginatedVideos.fromString(response.body);
      return videoList.copyWith(paginated: true);
    }

    final List<dynamic> list = jsonDecode(response.body);
    return PaginatedVideos(
      items: list.map((video) => VideoFull.fromJson(video)).toList(),
    );
  }

  /// Get a list of live streams
  ///
  /// This is somewhat similar to calling [getVideos], except this endpoint imposes default
  /// values on the query parameters. You can choose to override them by providing your own values.
  Future<PaginatedVideos> getLiveVideos([
    VideoFilter filter = const VideoFilter(
      includes: [Includes.liveInfo],
      limit: 50,
      maxUpcomingHours: 48,
      offset: 0,
      order: Order.ascending,
      sort: [VideoSort.availableAt],
      status: [VideoStatus.live, VideoStatus.upcoming],
      type: VideoType.stream,
      paginated: false,
    ),
  ]) async {
    final languages =
        filter.languages.isEmpty ? [Language.all] : filter.languages;
    // Create the params list
    final Map<String, dynamic> params = {};

    // Make sure liveInfo is in the list
    final includes = !filter.includes.contains(Includes.liveInfo)
        ? [Includes.liveInfo, ...filter.includes]
        : filter.includes;

    // Add the items with default values (they can't be null)
    params.addAll({
      'limit': '${filter.limit}',
      'offset': '${filter.offset}',
      'order': filter.order.code,
    });

    _addVideoSort(filter.sort, params);

    _addPaginated(filter.paginated, params);

    _addChannelId(filter.channelId, params);

    _addId(filter.ids, params);

    // Add the info the videos must include
    _addIncludes(includes, params);

    // Add the languages to filter by
    // Add the first item so that there is not a comma in front
    _addLanguages(languages, params);

    // Add the max upcoming hours param
    _addMaxUpcomingHours(filter.maxUpcomingHours, params);

    // Add the mentioned channel id param
    _addMentionedChannelId(filter.mentionedChannelId, params);

    // Add the organization param
    _addOrganizations(filter.organization, params);

    // Add the topic param
    _addTopic(filter.topic, params);

    // Add the status param
    _addStatusList(filter.status, params);

    // Add the type param
    _addType(filter.type, params);

    final response = await get(path: _Constants.liveVideosPath, params: params);

    if (filter.paginated) {
      // Grab total and return with it
      final videoList = PaginatedVideos.fromString(response.body);
      return videoList.copyWith(paginated: true);
    }

    final List<dynamic> list = jsonDecode(response.body);
    return PaginatedVideos(
      items: list.map((video) => VideoFull.fromJson(video)).toList(),
    );
  }

  /// Get a channel by its ID
  ///
  /// Arguments:
  ///
  /// - `channelId` ID of the Youtube Channel that is being queried
  Future<Channel> getChannelFromId(String channelId) async {
    final Response response =
        await get(path: '${_Constants.channelsPath}/$channelId');

    return Channel.fromString(response.body);
  }

  /// Get channels
  ///
  /// Arguments:
  /// - `languages` List of languages. Language is a property of Channel, so only Channels satisfying the language will be returned. Leave empty to search for Vtubers and/or all clippers.
  /// - `limit` Results limit
  /// - `offset` Offset results
  /// - `order` Order.ascending or Order.descending order, default ascending.
  /// - `organization` If set, filter for Vtubers belonging to a specific org
  /// - `channelSort` Column to sort on, leave default to use [ChannelSort.organization] as sort. Theoretically any value in ChannelSort should work
  Future<List<Channel>> getChannels([
    ChannelFilter filter = const ChannelFilter(
      limit: 25,
      offset: 0,
      order: Order.ascending,
      sort: [ChannelSort.organization],
    ),
  ]) async {
    final languages =
        filter.languages.isEmpty ? [Language.all] : filter.languages;

    // Create the params list
    final Map<String, dynamic> params = {};

    // Add the items with default values (they can't be null)
    params.addAll({
      'limit': '${filter.limit}',
      'offset': '${filter.offset}',
      'order': filter.order.code,
    });

    _addChannelSort(filter.sort, params);

    // Add the languages to filter by
    _addLanguages(languages, params);

    // Add the organization param
    _addSingleOrganization(filter.organization, params);

    // Add the organization param
    _addChannelType(filter.type, params);

    final response = await get(path: _Constants.channelsPath, params: params);

    final List<dynamic> list = jsonDecode(response.body);

    return list.map((channel) => Channel.fromJson(channel)).toList();
  }

  /// Quickly Access Live / Upcoming for a set of Channels
  ///
  /// This endpoint is similar to the getLiveVideos() method and usually replies much faster.
  /// It is more friendly in general. The cost to execute a lookup is significantly cheaper.
  /// It's unfortunately less customizable as a result.
  ///
  /// Holodex recommends using this if you have a fixed set of channel IDs to look up status for.
  ///
  /// Arguments:
  /// - `channelIds` List of channel IDs to get the live videos from.
  Future<List<Video>> getLiveVideosFromChannelsQuickly(
    List<String> channelIds,
  ) async {
    if (channelIds.isEmpty) {
      return <Video>[];
    }

    final Map<String, dynamic> params = {};

    _addChannels(channelIds, params);

    final response = await get(path: _Constants.userLivePath, params: params);
    final List<dynamic> list = jsonDecode(response.body);
    return list.map((video) => Video.fromJson(video)).toList();
  }

  /// Get Videos From Channel, alias of [getChannelRelatedVideos]
  ///
  /// Arguments
  /// - `channelId` ID of the Youtube Channel that is being queried
  /// - `filter` Filter the results returns by the API
  Future<PaginatedVideos> getChannelVideos(
    String channelId, {
    ChannelVideoFilter filter = const ChannelVideoFilter(
      includes: [],
      languages: [],
      limit: 25,
      offset: 0,
      paginated: true,
    ),
  }) async {
    return await getChannelRelatedVideos(
      channelId,
      type: VideoSearchType.videos,
      filter: filter,
    );
  }

  /// Get Clips of a VTuber, alias of [getChannelRelatedVideos]
  ///
  /// Arguments
  /// - `channelId` ID of the Youtube Channel that is being queried
  /// - `filter` Filter the results returns by the API
  Future<PaginatedVideos> getVTuberClips(
    String channelId, {
    ChannelVideoFilter filter = const ChannelVideoFilter(
      includes: [],
      languages: [],
      limit: 25,
      offset: 0,
      paginated: true,
    ),
  }) async {
    return await getChannelRelatedVideos(
      channelId,
      type: VideoSearchType.clips,
      filter: filter,
    );
  }

  /// Get Collabs that mention a VTuber, alias of [getChannelRelatedVideos]
  ///
  /// Arguments
  /// - `channelId` ID of the Youtube Channel that is being queried
  /// - `filter` Filter the results returns by the API
  Future<PaginatedVideos> getVTuberCollabs(
    String channelId, {
    ChannelVideoFilter filter = const ChannelVideoFilter(
      includes: [],
      languages: [],
      limit: 25,
      offset: 0,
      paginated: true,
    ),
  }) async {
    return await getChannelRelatedVideos(
      channelId,
      type: VideoSearchType.collabs,
      filter: filter,
    );
  }

  /// Get Videos Related To Channel
  ///
  /// A simplified method for access channel specific data.
  /// If you want more customization, the same result can be obtained by calling the queryVideos() method.
  ///
  /// Arguments
  /// - `channelId` ID of the Youtube Channel that is being queried
  /// - `type` The type of video resource to fetch. Clips finds clip videos of a vtuber channel, Video finds the `channelId` channel's uploads, and collabs finds videos uploaded by other channels that mention this `channelId`
  /// - `filter` Filter the results returns by the API
  Future<PaginatedVideos> getChannelRelatedVideos(
    String channelId, {
    required VideoSearchType type,
    ChannelVideoFilter filter = const ChannelVideoFilter(),
  }) async {
    final Map<String, dynamic> params = filter.toJson();

    final response = await get(
        path: '${_Constants.channelsPath}/$channelId/${type.code}',
        params: params);

    if (filter.paginated) {
      // Grab total and return with it
      final videoList = PaginatedVideos.fromString(response.body);
      return videoList.copyWith(paginated: true);
    }

    final List<dynamic> list = jsonDecode(response.body);
    return PaginatedVideos(
        items: list.map((video) => VideoFull.fromJson(video)).toList());
  }

  /// Retrieves a video, optionally with comments and recommended videos
  ///
  /// Arguments:
  /// - `videoId` ID of the video
  /// - `includeTimestampComments` If set to `true`, comments with timestamps will be returned
  /// - `languages` A list of language codes to filter channels/clips, official streams do not follow this parameter.
  ///          If empty, all languages will be returned.
  Future<VideoFull> getVideoMetadata(
    String videoId, {
    bool includeTimestampComments = false,
    List<Language> languages = const [],
  }) async {
    final Map<String, dynamic> params = {};
    final _languages = languages.isEmpty ? [Language.all] : languages;

    _addLanguages(_languages, params);
    _addCommentsFlag(includeTimestampComments, params);

    final response =
        await get(path: '${_Constants.videosPath}/$videoId', params: params);
    final body = jsonDecode(response.body);
    return VideoFull.fromJson(body);
  }

  /// Flexible endpoint to search for videos fufilling multiple conditions.
  /// Descriptions with "any" implies an `OR` condition, and "all" implies an `AND` condition.
  ///
  /// Note that searching for topics and clips is not supported, because clips do not contain topics.
  ///
  /// Arguments
  /// - `conditions` Match all of the items. -> For each item: look for the text in video title or description
  /// - `filter` Filter video results from the API
  Future<PaginatedVideos> searchVideos({
    List<String> conditions = const [],
    SearchFilter filter = const SearchFilter(
      sort: SearchSort.newest,
      paginated: true,
      offset: 0,
      limit: 25,
    ),
  }) async {
    final Map<String, dynamic> data = {};

    data.addAll({
      'sort': filter.sort.code,
      'paginated': filter.paginated,
      'offset': filter.offset,
      'limit': filter.limit,
    });

    if (filter.organizations.isNotEmpty) {
      data.addAll({
        'org': filter.organizations.map((org) => org.code).toList(),
      });
    }

    if (filter.languages.isNotEmpty) {
      data.addAll({
        'lang': filter.languages.map((l) => l.toLanguageTag()).toList(),
      });
    }

    if (filter.searchTargets.isNotEmpty) {
      data.addAll({
        'target': filter.searchTargets.map((target) => target.code).toList(),
      });
    }

    if (conditions.isNotEmpty) {
      data.addAll({
        'conditions': conditions,
      });
    }

    if (filter.topics.isNotEmpty) {
      data.addAll({
        'topic': filter.topics,
      });
    }

    if (filter.videoChannels.isNotEmpty) {
      data.addAll({
        'vch': filter.videoChannels,
      });
    }

    final response = await post(path: _Constants.videoSearch, data: data);

    if (filter.paginated) {
      // Grab total and return with it
      final videoList = PaginatedVideos.fromString(response.body);

      return videoList.copyWith(paginated: true);
    }

    final List<dynamic> list = jsonDecode(response.body);
    return PaginatedVideos(
        items: list.map((video) => VideoFull.fromJson(video)).toList());
  }

  /// Flexible endpoint to search for comments in videos fufilling multiple conditions.
  /// Descriptions with "any" implies an `OR` condition, and "all" implies an `AND` condition.
  ///
  /// Note that searching for topics and clips is not supported, because clips do not contain topics.
  ///
  /// Arguments
  /// - `comment` Find videos with comments containing specified string (case insensitive)
  /// - `filter` Filter video results from the API
  Future<PaginatedVideos> searchComments({
    required String comment,
    SearchFilter filter = const SearchFilter(
      sort: SearchSort.newest,
      paginated: true,
      offset: 0,
      limit: 25,
    ),
  }) async {
    final Map<String, dynamic> data = {};

    data.addAll({
      'sort': filter.sort.code,
      'comment': comment,
      'offset': filter.offset,
      'limit': filter.limit,
    });

    if (filter.organizations.isNotEmpty) {
      data.addAll({
        'org': filter.organizations.map((org) => org.code).toList(),
      });
    }

    if (filter.paginated) {
      data.addAll({
        'paginated': filter.paginated,
      });
    }

    if (filter.languages.isNotEmpty) {
      data.addAll({
        'lang': filter.languages.map((l) => l.toLanguageTag()).toList(),
      });
    }

    if (filter.searchTargets.isNotEmpty) {
      data.addAll({
        'target': filter.searchTargets.map((s) => s.code).toList(),
      });
    }

    if (filter.topics.isNotEmpty) {
      data.addAll({
        'topic': filter.topics,
      });
    }

    if (filter.videoChannels.isNotEmpty) {
      data.addAll({
        'vch': filter.videoChannels,
      });
    }

    final response = await post(path: _Constants.commentSearch, data: data);

    if (filter.paginated) {
      // Grab total and return with it
      final videoList = PaginatedVideos.fromString(response.body);
      return videoList.copyWith(paginated: true);
    }

    final List<dynamic> list = jsonDecode(response.body);
    return PaginatedVideos(
      items: list.map((video) => VideoFull.fromJson(video)).toList(),
    );
  }

  void _addVideoSort(List<VideoSort> sort, Map<String, dynamic> map) {
    if (sort.isNotEmpty) {
      map.addAll({'include': sort.concat});
    }
  }

  void _addPaginated(bool paginated, Map<String, dynamic> map) {
    map.addAll({'paginated': paginatedToString(paginated)});
  }

  void _addCommentsFlag(bool comments, Map<String, dynamic> map) {
    map.addAll({'c': includeCommentsToString(comments)});
  }

  void _addChannelId(String? channelId, Map<String, dynamic> map) {
    if (channelId != null) {
      map.addAll({'channel_id': channelId});
    }
  }

  void _addId(List<String> ids, Map<String, dynamic> map) {
    if (ids.isNotEmpty) {
      map.addAll({'id': concatStringList(ids)});
    }
  }

  void _addStatusList(List<VideoStatus> statuses, Map<String, dynamic> map) {
    if (statuses.isNotEmpty) {
      map.addAll({'status': statuses.concat});
    }
  }

  void _addType(VideoType? type, Map<String, dynamic> map) {
    if (type != null && type != VideoType.all) {
      map.addAll({'type': enumWithCodeToString(type)});
    }
  }

  void _addTopic(String? topic, Map<String, dynamic> map) {
    if (topic != null) {
      map.addAll({'topic': topic});
    }
  }

  void _addOrganizations(List<String> organization, Map<String, dynamic> map) {
    if (organization.isNotEmpty) {
      map.addAll({'org': concatStringList(organization)});
    }
  }

  void _addSingleOrganization(
      Organization? organization, Map<String, dynamic> map) {
    if (organization != null) {
      map.addAll({'org': enumWithCodeToString(organization)});
    }
  }

  void _addChannelType(ChannelType? channelType, Map<String, dynamic> map) {
    if (channelType != null) {
      map.addAll({'type': enumWithCodeToString(channelType)});
    }
  }

  void _addMentionedChannelId(
      String? mentionedChannelId, Map<String, dynamic> map) {
    if (mentionedChannelId != null) {
      map.addAll({'mentioned_channel_id': mentionedChannelId});
    }
  }

  void _addMaxUpcomingHours(int? maxUpcomingHours, Map<String, dynamic> map) {
    if (maxUpcomingHours != null) {
      map.addAll({'max_upcoming_hours': '$maxUpcomingHours'});
    }
  }

  void _addIncludes(List<Includes> includes, Map<String, dynamic> map) {
    if (includes.isNotEmpty) {
      map.addAll({'include': includes.concat});
    }
  }

  void _addLanguages(List<Language> lang, Map<String, dynamic> map) {
    if (lang.isNotEmpty) {
      map.addAll({'lang': lang.concat});
    }
  }

  void _addChannelSort(List<ChannelSort> sort, Map<String, dynamic> map) {
    if (sort.isNotEmpty) {
      map.addAll({'sort': sort.concat});
    }
  }

  void _addChannels(List<String> channelIds, Map<String, dynamic> map) {
    if (channelIds.isNotEmpty) {
      map.addAll({'channels': concatStringList(channelIds)});
    }
  }

  // Utilities

  /// Utility method to make a custom http get call with the
  /// Api Key added to the headers
  Future<Response> get({
    String path = '',
    Map<String, String>? headers,
    Map<String, dynamic>? params,
  }) async {
    // return await call('get', path: path, headers: headers, params: params);
    headers ??= {};
    headers.addAll({
      'content-type': 'application/json',
      'X-APIKEY': apiKey,
    });

    try {
      final finalUri = _getUriUrl(basePath + path, params);
      return await _client.get(finalUri, headers: headers);
    } catch (e) {
      if (e is HolodexException) {
        rethrow;
      }
      throw HolodexException(e.toString());
    }
  }

  /// Utility method to make a custom http post call with the
  /// Api Key added to the headers
  Future<Response> post({
    String path = '',
    Map<String, String>? headers,
    Map<String, dynamic>? params,
    Map<String, dynamic>? data,
  }) async {
    // return await call('post', path: path, headers: headers, data: data);
    headers ??= {};
    headers.addAll({
      'content-type': 'application/json',
      'X-APIKEY': apiKey,
    });

    try {
      return await _client.post(_getUriUrl(basePath + path, params),
          headers: headers, body: json.encode(data));
    } catch (e) {
      if (e is HolodexException) {
        rethrow;
      }
      throw HolodexException(e.toString());
    }
  }

  // This method was taken from https://github.com/Ephenodrom/Dart-Basic-Utils/blob/master/lib/src/HttpUtils.dart#L279
  static Uri _getUriUrl(String url, Map<String, dynamic>? queryParameters) {
    if (queryParameters == null || queryParameters.isEmpty) {
      return Uri.parse(url);
    }
    final uri = Uri.parse(url);
    return uri.replace(queryParameters: queryParameters);
  }

  /// Closes the client and cleans up any resources associated with it.
  ///
  /// It's important to close each client when it's done being used; failing to do so can cause the Dart process to hang.
  void close() {
    _client.close();
  }
}

class _Constants {
  static const String videosPath = '/videos';
  static const String liveVideosPath = '/live';
  static const String channelsPath = '/channels';
  static const String userLivePath = '/users/live';
  static const String videoSearch = '/search/videoSearch';
  static const String commentSearch = '/search/commentSearch';
}
