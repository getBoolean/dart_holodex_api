import 'dart:convert';

import 'package:dart_holodex_api/src/models/channel_video_filter.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'enums.dart';
import 'exception.dart';
import 'models.dart';

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
  /// Returns [VideoFull]
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
  ///
  /// Returns [PaginatedResult]<[VideoFull]>
  Future<PaginatedResult<VideoFull>> getVideos([
    VideoFilter filter = const VideoFilter(
      limit: 25,
      offset: 0,
      order: Order.descending,
      sort: [VideoSort.availableAt],
      paginated: false,
    ),
  ]) async {
    final languages = filter.languages.isEmpty ? [Language.all] : filter.languages;

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
      final videoList = PaginatedResult<VideoFull>.fromJson(response.body);
      return videoList.copyWith(paginated: true);
    }

    final List list = jsonDecode(response.body);
    return PaginatedResult<VideoFull>(
        items: list.map((video) => VideoFull.fromMap(video)).toList());
    // Returns as `List<Video>`
  }

  /// Get a list of live streams
  ///
  /// Returns [VideoFullList]
  ///
  /// This is somewhat similar to calling [getVideos], except this endpoint imposes default
  /// values on the query parameters. You can choose to override them by providing your own values.
  Future<PaginatedResult<VideoFull>> getLiveVideos([
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
    final languages = filter.languages.isEmpty ? [Language.all] : filter.languages;
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
      final videoList = PaginatedResult<VideoFull>.fromJson(response.body);
      return videoList.copyWith(paginated: true);
    }

    final List list = jsonDecode(response.body);
    return PaginatedResult<VideoFull>(
      items: list.map((video) => VideoFull.fromMap(video)).toList(),
    ); // Returns as `List<Video>`
  }

  /// Get a channel by its ID
  ///
  /// Returns [Channel]
  ///
  /// Arguments:
  ///
  /// - `channelId` ID of the Youtube Channel that is being queried
  Future<Channel> getChannelFromId(String channelId) async {
    final Response response = await get(path: '${_Constants.channelsPath}/$channelId');

    return Channel.fromJson(response.body);
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
    final languages = filter.languages.isEmpty ? [Language.all] : filter.languages;

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

    final List list = jsonDecode(response.body);

    return list.map((channel) => Channel.fromMap(channel)).toList(); // Returns as `List<Channel>`
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
    final List list = jsonDecode(response.body);
    return list.map((video) => Video.fromMap(video)).toList();
  }

  /// Get Videos From Channel, alias of [getVideosRelatedToChannel]
  ///
  /// Returns [VideoFullList]
  ///
  /// Arguments
  /// - `channelId` ID of the Youtube Channel that is being queried
  /// - `filter` Filter the results returns by the API
  Future<PaginatedResult<VideoFull>> getChannelVideos(
    String channelId, {
    ChannelVideoFilter filter = const ChannelVideoFilter(
      includes: [],
      languages: [],
      limit: 25,
      offset: 0,
      paginated: true,
    ),
  }) async {
    return await getVideosRelatedToChannel(
      channelId,
      type: VideoSearchType.videos,
      filter: filter,
    );
  }

  /// Get Clips of a VTuber, alias of [getVideosRelatedToChannel]
  ///
  /// Returns [VideoFullList]
  ///
  /// Arguments
  /// - `channelId` ID of the Youtube Channel that is being queried
  /// - `filter` Filter the results returns by the API
  Future<PaginatedResult<VideoFull>> getVTuberClips(
    String channelId, {
    ChannelVideoFilter filter = const ChannelVideoFilter(
      includes: [],
      languages: [],
      limit: 25,
      offset: 0,
      paginated: true,
    ),
  }) async {
    return await getVideosRelatedToChannel(
      channelId,
      type: VideoSearchType.clips,
      filter: filter,
    );
  }

  /// Get Collabs that mention a VTuber, alias of [getVideosRelatedToChannel]
  ///
  /// Returns [VideoFullList]
  ///
  /// Arguments
  /// - `channelId` ID of the Youtube Channel that is being queried
  /// - `filter` Filter the results returns by the API
  Future<PaginatedResult<VideoFull>> getVTuberCollabs(
    String channelId, {
    ChannelVideoFilter filter = const ChannelVideoFilter(
      includes: [],
      languages: [],
      limit: 25,
      offset: 0,
      paginated: true,
    ),
  }) async {
    return await getVideosRelatedToChannel(
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
  Future<PaginatedResult<VideoFull>> getVideosRelatedToChannel(
    String channelId, {
    required VideoSearchType type,
    ChannelVideoFilter filter = const ChannelVideoFilter(),
  }) async {
    final languages = filter.languages.isEmpty ? [Language.all] : filter.languages;

    final Map<String, dynamic> params = {};

    // Add the items with default values (they can't be null)
    params.addAll({
      'limit': '${filter.limit}',
      'offset': '${filter.offset}',
    });

    _addIncludes(filter.includes, params);
    _addLanguages(languages, params);
    _addPaginated(filter.paginated, params);

    final response =
        await get(path: '${_Constants.channelsPath}/$channelId/${type.code}', params: params);

    if (filter.paginated) {
      // Grab total and return with it
      final videoList = PaginatedResult<VideoFull>.fromJson(response.body);
      return videoList.copyWith(paginated: true);
    }

    final List list = jsonDecode(response.body);
    return PaginatedResult<VideoFull>(
        items: list.map((video) => VideoFull.fromMap(video)).toList());
  }

  /// Retrieves a video, optionally with comments and recommended videos
  ///
  /// Arguments
  ///
  /// - `videoId` ID of the video
  /// - `timestampComments` If set to `true`, comments with timestamps will be returned
  /// - `recommendationLanguages` If set, videos matching the languages will be returned. Use [Language.all] to get all languages regardless of language
  Future<VideoMetadata> getVideoMetadata(
    String videoId, {
    bool timestampComments = false,
    List<Language> recommendationLanguages = const [],
  }) async {
    final Map<String, dynamic> params = {};

    _addLanguages(recommendationLanguages, params);
    _addCommentsFlag(timestampComments, params);

    final response = await get(path: '${_Constants.videosPath}/$videoId', params: params);
    final body = jsonDecode(response.body);
    final video = VideoFull.fromMap(body);
    final List? comments = body['comments'];
    final List? recommendations = body['recommendations'];
    return VideoMetadata(
      video: video,
      comments: comments?.map((comment) => Comment.fromMap(comment)).toList(),
      recommendations: recommendations?.map((video) => Video.fromMap(video)).toList(),
    );
  }

  /// Flexible endpoint to search for videos fufilling multiple conditions.
  /// Descriptions with "any" implies an `OR` condition, and "all" implies an `AND` condition.
  ///
  /// Note that searching for topics and clips is not supported, because clips do not contain topics.
  ///
  /// Arguments
  /// - `searchSort` Sort by newest or oldest
  /// - `languages` If set, will filter clips to only show clips with these languages + all vtuber streams (provided searchTargets is not set to filter out streams)
  /// - `searchTargets` Target types of videos
  /// - `conditions` Match all of the items. -> For each item: look for the text in video title or description
  /// - `topics` Return videos that match one of the provided topics
  /// - `videoChannels` Videos with all of the specified channel ids. If two or more channel IDs are specified, will only return their collabs, or if one channel is a clipper, it will only show clips of the other vtubers made by this clipper.
  /// - `organizations` Videos of channels in any of the specified organizations, or clips that involve a channel in the specified organization.
  /// - `paginated` If paginated is set to true, returns [VideoFullList] with total, otherwise returns [VideoFullList] without the total.
  /// - `offset` Offset results
  /// - `limit` Result limit
  Future<PaginatedResult<VideoFull>> searchVideos({
    SearchSort searchSort = SearchSort.newest,
    List<Language>? languages,
    List<SearchTarget>? searchTargets,
    List<String>? conditions,
    List<String>? topics,
    List<String>? videoChannels,
    List<Organization>? organizations,
    bool paginated = true,
    int offset = 0,
    int limit = 25,
  }) async {
    final Map<String, dynamic> data = {};

    data.addAll({
      'sort': searchSort.code,
      'paginated': paginated,
      'offset': offset,
      'limit': limit,
    });

    if (organizations != null && organizations.isNotEmpty) {
      data.addAll({
        'org': organizations.map((org) => org.code).toList(),
      });
    }

    if (languages != null && languages.isNotEmpty) {
      data.addAll({
        'lang': languages.map((l) => l.toLanguageTag()).toList(),
      });
    }

    if (searchTargets != null && searchTargets.isNotEmpty) {
      data.addAll({
        'target': searchTargets.map((target) => target.code).toList(),
      });
    }

    if (conditions != null && conditions.isNotEmpty) {
      data.addAll({
        'conditions': conditions,
      });
    }

    if (topics != null && topics.isNotEmpty) {
      data.addAll({
        'topic': topics,
      });
    }

    if (videoChannels != null && videoChannels.isNotEmpty) {
      data.addAll({
        'vch': videoChannels,
      });
    }

    final response = await post(path: _Constants.videoSearch, data: data);

    if (paginated) {
      // Grab total and return with it
      final videoList = PaginatedResult<VideoFull>.fromJson(response.body);
      return videoList.copyWith(paginated: true);
    }

    final List list = jsonDecode(response.body);
    return PaginatedResult<VideoFull>(
        items: list.map((video) => VideoFull.fromMap(video)).toList());
  }

  /// Flexible endpoint to search for comments in videos fufilling multiple conditions.
  /// Descriptions with "any" implies an `OR` condition, and "all" implies an `AND` condition.
  ///
  /// Note that searching for topics and clips is not supported, because clips do not contain topics.
  ///
  /// Arguments
  /// - `searchSort` Sort by newest or oldest
  /// - `languages` If set, will filter clips to only show clips with these languages + all vtuber streams (provided searchTargets is not set to filter out streams)
  /// - `searchTargets` Target types of videos
  /// - `comment` Find videos with comments containing specified string (case insensitive)
  /// - `topics` Return videos that match one of the provided topics
  /// - `vch` Videos with all of the specified channel ids. If two or more channel IDs are specified, will only return their collabs, or if one channel is a clipper, it will only show clips of the other vtubers made by this clipper.
  /// - `organizations` Videos of channels in any of the specified organizations, or clips that involve a channel in the specified organization.
  /// - `paginated` If paginated is set to true, returns [VideoWithCommentsList] with total, otherwise returns [VideoWithCommentsList] without the total.
  /// - `offset` Offset results
  /// - `limit` Result limit
  Future<PaginatedResult<VideoWithComments>> searchComments({
    required String comment,
    SearchSort searchSort = SearchSort.newest,
    List<Language>? languages,
    List<SearchTarget>? searchTargets,
    List<String>? topics,
    List<String>? videoChannels,
    List<Organization>? organizations,
    bool paginated = true,
    int offset = 0,
    int limit = 25,
  }) async {
    final Map<String, dynamic> data = {};

    data.addAll({
      'sort': searchSort.code,
      'comment': comment,
      'offset': offset,
      'limit': limit,
    });

    if (organizations != null && organizations.isNotEmpty) {
      data.addAll({
        'org': organizations.map((org) => org.code).toList(),
      });
    }

    if (paginated) {
      data.addAll({
        'paginated': paginated,
      });
    }

    if (languages != null && languages.isNotEmpty) {
      data.addAll({
        'lang': languages.map((l) => l.toLanguageTag()).toList(),
      });
    }

    if (searchTargets != null && searchTargets.isNotEmpty) {
      data.addAll({
        'target': searchTargets.map((s) => s.code).toList(),
      });
    }

    if (topics != null && topics.isNotEmpty) {
      data.addAll({
        'topic': topics,
      });
    }

    if (videoChannels != null && videoChannels.isNotEmpty) {
      data.addAll({
        'vch': videoChannels,
      });
    }

    final response = await post(path: _Constants.commentSearch, data: data);

    if (paginated) {
      // Grab total and return with it
      final videoList = PaginatedResult<VideoWithComments>.fromJson(response.body);
      return videoList.copyWith(paginated: true);
    }

    final List list = jsonDecode(response.body);
    return PaginatedResult(
      items: list.map((video) => VideoWithComments.fromMap(video)).toList(),
    );
  }

  void _addVideoSort(List<VideoSort> sort, Map<String, dynamic> map) {
    if (sort.isNotEmpty) {
      // Make new list with the values as string
      final List<String> sortStringList = sort.map((s) => s.code).toList();
      // Join the array with commas
      String sortConcatenated = sortStringList.join(',');
      map.addAll({'include': sortConcatenated});
    }
  }

  void _addPaginated(bool paginated, Map<String, dynamic> map) {
    if (paginated) {
      map.addAll({'paginated': 'yes'});
    } else {
      map.addAll({'paginated': ''});
    }
  }

  void _addCommentsFlag(bool comments, Map<String, dynamic> map) {
    map.addAll({'c': comments ? '1' : '0'});
  }

  void _addChannelId(String? channelId, Map<String, dynamic> map) {
    if (channelId != null) {
      map.addAll({'channel_id': channelId});
    }
  }

  void _addId(List<String> ids, Map<String, dynamic> map) {
    if (ids.isNotEmpty) {
      map.addAll({'id': ids.join(',')});
    }
  }

  void _addStatusList(List<VideoStatus> statuses, Map<String, dynamic> map) {
    if (statuses.isNotEmpty) {
      // Make new list with the values as string
      final List<String> statusesStringList = statuses.map((status) => status.code).toList();
      // Join the array with commas
      String statusesConcatenated = statusesStringList.join(',');
      map.addAll({'status': statusesConcatenated});
    }
  }

  void _addType(VideoType? type, Map<String, dynamic> map) {
    if (type != null && type != VideoType.all) {
      map.addAll({'type': type.code});
    }
  }

  void _addTopic(String? topic, Map<String, dynamic> map) {
    if (topic != null) {
      map.addAll({'topic': topic});
    }
  }

  void _addOrganizations(List<String> organization, Map<String, dynamic> map) {
    if (organization.isNotEmpty) {
      // Join the array with commas and add it to the parameters
      String orgsConcatenated = organization.join(',');
      map.addAll({'org': orgsConcatenated});
    }
  }

  void _addSingleOrganization(Organization? organization, Map<String, dynamic> map) {
    if (organization != null) {
      map.addAll({'org': organization.code});
    }
  }

  void _addChannelType(ChannelType? channelType, Map<String, dynamic> map) {
    if (channelType != null) {
      map.addAll({'type': channelType.code});
    }
  }

  void _addMentionedChannelId(String? mentionedChannelId, Map<String, dynamic> map) {
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
      // Make new list with the values as string
      final List<String> includesStringList = includes.map((included) => included.code).toList();
      // Join the array with commas
      String includesConcatenated = includesStringList.join(',');
      map.addAll({'include': includesConcatenated});
    }
  }

  void _addLanguages(List<Language> lang, Map<String, dynamic> map) {
    if (lang.isNotEmpty) {
      // Make new list with the values as string
      final List<String> langStringList = lang.map((l) => l.toLanguageTag()).toList();
      // Join the array with commas
      String languagesConcat = langStringList.join(',');
      map.addAll({'lang': languagesConcat});
    }
  }

  void _addChannelSort(List<ChannelSort> sort, Map<String, dynamic> map) {
    if (sort.isNotEmpty) {
      // Make new list with the values as string
      final List<String> sortStringList = sort.map((s) => s.code).toList();
      // Join the array with commas
      String sortConcat = sortStringList.join(',');
      map.addAll({'sort': sortConcat});
    }
  }

  void _addChannels(List<String> channelIds, Map<String, dynamic> map) {
    if (channelIds.isNotEmpty) {
      // Join the array with commas
      String channelsConcat = channelIds.join(',');
      map.addAll({'channels': channelsConcat});
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
