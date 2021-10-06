import 'package:dio/dio.dart' as dio;
import 'package:enum_to_string/enum_to_string.dart';

import 'client_base.dart';
import '../dart_holodex_api.dart';

class HolodexClient extends BaseHolodexClient {
  /// Creates a new instance of [HolodexClient]
  /// 
  /// `apiKey` - Your personal API key. Be aware that the validity of the key is not checked, so ensure it is correct.
  /// 
  /// `basePath` - (Optional) The base Holodex API url.
  /// 
  /// `dioClient` - An existing Dio Client, if needed. When left null, an internal client will be created
  HolodexClient({
    required apiKey,
    basePath = 'https://holodex.net/api/v2',
    dio.Dio? client,
  }) : super(apiKey: apiKey, basePath: basePath, dioClient: client);

  @override
  Future<Channel> getChannel(String channelId) {
    // TODO: implement getChannel
    throw UnimplementedError();
  }

  @override
  Future<List<Channel>> listChannels() {
    // TODO: implement listChannels
    throw UnimplementedError();
  }

  /// Get a video by its video ID
  /// 
  /// Returns a single [VideoFull]
  /// 
  /// Arguments:
  /// 
  /// - `videoId` The video ID as a string
  /// - `includes` List of strings from the class `IncludesData`
  @override
  Future<VideoFull> getVideo(String videoId, {List<Includes>? includes}) async {
    final Map<String, dynamic> params = {'id': videoId};

    // Add the info the videos must include
    _addIncludes(includes, params);

    final dio.Response response = await get(path: _Constants.videosPath, params: params);

    return VideoFull.fromMap(response.data.first);
  }

  /// Get a list of videos
  /// 
  /// Returns `List<VideoFull>`
  /// 
  /// Arguments:
  /// 
  /// - `channelId` Filter by video uploader channel id
  /// - `includes` List of `Includes`, determines what data is asked for
  /// - `lang` List of strings from the class `Language`
  /// - `limit` Limit the number of results returned. Max 50
  /// - `maxUpcomingHours` Number of maximum hours upcoming to get upcoming videos by (for rejecting waiting rooms that are two years out)
  /// - `mentionedChannelId` Filter by mentioned channel id, excludes itself. Generally used to find collabs/clips that include the requested channel
  /// - `offset` Offset results
  /// - `order` Order by ascending or descending
  /// - `organization` Must be from the `Organization` class. Filter by clips that feature the org's talent or videos posted by the org's talent.
  /// - `paginated` If paginated is set to true, return an [VideoList] with total, otherwise returns [VideoList] without a total
  /// - `sort` Sort by any returned video field
  /// - `status` Array of [VideoStatus] to filter by video status
  /// - `topic` Filter by video topic id
  /// - `type` Filter by type of video
  @override
  Future<VideoList> listVideos({
    String? channelId,
    List<Includes>? includes,
    List<String> lang = const <String>[Language.all],
    int limit = 25,
    int? maxUpcomingHours,
    String? mentionedChannelId,
    int offset = 0,
    Order order = Order.descending,
    String? organization,
    bool paginated = false,
    List<VideoSort> sort = const <VideoSort>[VideoSort.availableAt],
    List<VideoStatus>? status,
    String? topic,
    VideoType? type,
  }) async {
    // The limit cannot be greator than 50, otherwise it will throw an error
    assert(limit <= 50);

    // Create the params list
    final Map<String, dynamic> params = {};

    // Add the items with default values (they can't be null)
    params.addAll({
      'limit': limit,
      'offset': offset,
      'order': order == Order.ascending ? 'asc' : 'desc',
    });

    _addSort(sort, params);

    _addPaginated(paginated, params);

    _addChannelId(channelId, params);

    // Add the info the videos must include
    _addIncludes(includes, params);

    // Add the languages to filter by
    // Add the first item so that there is not a comma in front
    _addLanguages(lang, params);

    // Add the max upcoming hours param
    _addMaxUpcomingHours(maxUpcomingHours, params);

    // Add the mentioned channel id param
    _addMentionedChannelId(mentionedChannelId, params);

    // Add the organization param
    _addOrganization(organization, params);

    // Add the topic param
    _addTopic(topic, params);

    // Add the status param
    _addStatusList(status, params);

    // Add the type param
    _addType(type, params);

    final response = await get(path: _Constants.videosPath, params: params);

    if (paginated) {
      final Map<String, dynamic> map = response.data;
      // Grab total and return with it
      final videoList = VideoList.fromMap(map);
      return videoList.copyWith(paginated: true);
    }
    
    final List list = response.data;
    return VideoList(videos: list.map((video) => VideoFull.fromMap(video)).toList());
    // Returns as `List<Video>`
  }

  @override
  Future<VideoFull> listVideosFromChannel(String channelId, {VideoType? type}) {
    // TODO: implement getVideosFromChannel
    throw UnimplementedError();
  }

  @override
  Future<List<Video>> listLiveVideosFromChannel(String channelId) {
    // TODO: implement listLiveVideosFromChannel
    throw UnimplementedError();
  }

  /// Get a list of live videos
  /// 
  /// Returns `List<VideoFull>`
  /// 
  /// Arguments:
  /// 
  /// - `channelId` Filter by video uploader channel id
  /// - `includes` List of `Includes`, determines what data is sent back
  /// - `lang` List of strings from the class `Language`
  /// - `limit` Limit the number of results returned
  /// - `maxUpcomingHours` Number of maximum hours upcoming to get upcoming videos by (for rejecting waiting rooms that are two years out)
  /// - `mentionedChannelId` Filter by mentioned channel id, excludes itself. Generally used to find collabs/clips that include the requested channel
  /// - `offset` Offset results
  /// - `order` Order by ascending or descending
  /// - `organization` Must be from the `Organization` class. Filter by clips that feature the org's talent or videos posted by the org's talent.
  /// - `paginated` If paginated is set to any non-empty value, return an object with total, otherwise returns an array. E.g.: `AllowEmptyValue`
  /// - `sort` Sort by any returned video field
  /// - `status` Array of [VideoStatus] to filter by video status
  /// - `topic` Filter by video topic id
  /// - `type` Filter by type of video
  @override
  Future<VideoList> listLiveVideos({
    String? channelId,
    List<Includes> includes = const [Includes.liveInfo],
    List<String> lang = const [Language.all],
    int limit = 125,
    int? maxUpcomingHours = 48,
    String? mentionedChannelId,
    int offset = 0,
    Order order = Order.ascending,
    String organization = Organization.Hololive,
    bool paginated = false,
    List<VideoSort> sort = const <VideoSort>[VideoSort.availableAt],
    List<VideoStatus>? status = const [VideoStatus.live, VideoStatus.upcoming],
    String? topic,
    VideoType? type = VideoType.stream
  }) 
  async {
    // Create the params list
    final Map<String, dynamic> params = {};

    // Make sure liveInfo is in the list
    if (!includes.contains(Includes.liveInfo)) {
      includes.add(Includes.liveInfo);
    }

    // Add the items with default values (they can't be null)
    params.addAll({
      'limit': limit,
      'offset': offset,
      'order': order == Order.ascending ? 'asc' : 'desc',
    });

    _addSort(sort, params);

    _addPaginated(paginated, params);

    _addChannelId(channelId, params);

    // Add the info the videos must include
    _addIncludes(includes, params);

    // Add the languages to filter by
    // Add the first item so that there is not a comma in front
    _addLanguages(lang, params);

    // Add the max upcoming hours param
    _addMaxUpcomingHours(maxUpcomingHours, params);

    // Add the mentioned channel id param
    _addMentionedChannelId(mentionedChannelId, params);

    // Add the organization param
    _addOrganization(organization, params);

    // Add the topic param
    _addTopic(topic, params);

    // Add the status param
    _addStatusList(status, params);

    // Add the type param
    _addType(type, params);

    final response = await get(path: _Constants.liveVideosPath, params: params);

    if (paginated) {
      final Map<String, dynamic> map = response.data;
      // Grab total and return with it
      final videoList = VideoList.fromMap(map);
      return videoList.copyWith(paginated: true);
    }
    
    final List list = response.data;
    return VideoList(videos: list.map((video) => VideoFull.fromMap(video)).toList()); // Returns as `List<Video>`
  }

  void _addSort(List<VideoSort> sort, Map<String, dynamic> params) {
    if (sort.isNotEmpty) {
      // Make new list with the values as string
      final List<String> sortStringList = sort.map((s) => convertVideoSortToString(s)).toList();
      // Join the array with commas
      String sortConcatenated = sortStringList.join(',');
      params.addAll({'include': sortConcatenated});
    }
  }

  void _addPaginated(bool paginated, Map<String, dynamic> params) {
    if (paginated) {
      params.addAll({'paginated': 'yes'});
    } else {
      params.addAll({'paginated': ''});
    }
  }

  void _addChannelId(String? channelId, Map<String, dynamic> params) {
    if (channelId != null) {
      params.addAll({'channel_id': channelId});
    }
  }

  void _addStatusList(List<VideoStatus>? statuses, Map<String, dynamic> params) {
    if (statuses != null) {
      // Make new list with the values as string
      final List<String> statusesStringList = statuses.map((status) => convertStatusToString(status)).toList();
      // Join the array with commas
      String statusesConcatenated = statusesStringList.join(',');
      params.addAll({'status': statusesConcatenated});
    }
  }

  String convertStatusToString(VideoStatus status) {
    final String stringStatus = EnumToString.convertToString(status).replaceAll('new_', 'new');
    return stringStatus;
  }

  void _addType(VideoType? type, Map<String, dynamic> params) {
    if (type != null && type != VideoType.all) {
      params.addAll({'type': EnumToString.convertToString(type)});
    }
  }

  void _addTopic(String? topic, Map<String, dynamic> params) {
    if (topic != null) {
      params.addAll({'topic': topic});
    }
  }

  void _addOrganization(String? organization, Map<String, dynamic> params) {
    if (organization != null) {
      params.addAll({'org': organization});
    }
  }

  void _addMentionedChannelId(String? mentionedChannelId, Map<String, dynamic> params) {
    if (mentionedChannelId != null) {
      params.addAll({'mentioned_channel_id': mentionedChannelId});
    }
  }

  void _addMaxUpcomingHours(int? maxUpcomingHours, Map<String, dynamic> params) {
    if (maxUpcomingHours != null) {
      params.addAll({'max_upcoming_hours': maxUpcomingHours});
    }
  }

  void _addIncludes(List<Includes>? includes, Map<String, dynamic> params) {
    if (includes != null && includes.isNotEmpty) {
      // Make new list with the values as string
      final List<String> includesStringList = includes.map((included) => convertIncludesToString(included)).toList();
      // Join the array with commas
      String includesConcatenated = includesStringList.join(',');
      params.addAll({'include': includesConcatenated});
    }
  }

  void _addLanguages(List<String> lang, Map<String, dynamic> params) {
    if ( lang.isNotEmpty ) {
      String languages = lang[0];
      // Add the rest of the items
      for (int i = 1; i < lang.length; i++) {
        languages = languages + ',' + lang[i];
      }
      params.addAll({'lang': languages});
    }
  }

  String convertIncludesToString(Includes i) {
    final includesMapToString = {
      Includes.clips: 'clips',
      Includes.refers: 'refers',
      Includes.sources: 'sources',
      Includes.simulcasts: 'simulcasts',
      Includes.mentions: 'mentions',
      Includes.descripiton: 'descripiton',
      Includes.liveInfo: 'live_info',
      Includes.channelStats: 'channel_stats',
      Includes.songs: 'songs',
    };
    // Force not null because map contains all values for [Includes]
    final String iString = includesMapToString[i]!;
    return iString;
  }

  String convertVideoSortToString(VideoSort sort) {
    final videoSortMapToString = {
      VideoSort.title: 'title',
      VideoSort.publishedAt: 'published_at',
      VideoSort.availableAt: 'available_at',
      VideoSort.startScheduled: 'start_scheduled',
      VideoSort.startActual: 'start_actual',
      VideoSort.endActual: 'end_actual',
    };
    // Force not null because map contains all values for [VideoSort]
    final String sortString = videoSortMapToString[sort]!;
    return sortString;
  }


  // Utilities
  
  /// An alias of HolodexClient.call('get')
  @override
  Future<dio.Response> get({
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    dio.ResponseType responseType = dio.ResponseType.json
  }) async {
    return await call('get', path: path, headers: headers, params: params, responseType: responseType);
  }

  /// An alias of HolodexClient.call('post')
  @override
  Future<dio.Response> post({
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    dio.ResponseType responseType = dio.ResponseType.json
  }) async {
    return await call('post', path: path, headers: headers, params: params, responseType: responseType);
  }


  /// Method to make a http call and return `Response`
  @override
  Future<dio.Response> call(
    String method, { 
    required String path, 
    Map<String, String> headers = const {}, 
    Map<String, dynamic> params = const {},
    dio.ResponseType responseType = dio.ResponseType.json
  }) async {
    try {
      // Prepare request
      final response = await dioClient.request(basePath + path, queryParameters: params, options: dio.Options(method: method, responseType: responseType, headers: headers));

      // Return response
      return response;
    } catch (e) {
      if (e is HolodexException) {
        rethrow;
      }
      throw HolodexException(e.toString());
    }
  }
}


class _Constants {
  static const String videosPath = '/videos';
  static const String liveVideosPath = '/live';
}