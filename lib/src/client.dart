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
  Future<VideoFull> getVideo(String videoId, {List<String>? includes}) async {
    final Map<String, dynamic> params = {'id': videoId};

    // Add the info the videos must include
    if (includes != null && includes.isNotEmpty) {
      // Add the first item so that there is not a comma in front
      String includesData = includes[0];
      // Add the rest of the items
      for (int i = 1; i < includes.length; i++) {
        includesData = includesData + ',' + includes[i];
      }
      params.addAll({'include': includesData});
    }

    final dio.Response response = await get(path: '/videos', params: params);

    return VideoFull.fromMap(response.data.first);
  }

  /// Get a list of videos
  /// 
  /// Returns `List<VideoFull>`
  /// 
  /// Arguments:
  /// 
  /// - `channelId` Filter by video uploader channel id
  /// - `includes` List of strings from the class `IncludesData`
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
    List<String>? includes,
    List<String> lang = const <String>[Language.all],
    int limit = 25,
    int? maxUpcomingHours,
    String? mentionedChannelId,
    int offset = 0,
    SortOrder order = SortOrder.descending,
    String? organization,
    bool paginated = false,
    String sort = 'available_at',
    List<VideoStatus>? status,
    String? topic,
    VideoType? type,
  }) async {
    assert(limit <= 50);

    // Create the params list
    final Map<String, dynamic> params = {};

    // Add the items with default values (they can't be null)
    params.addAll({
      'limit': limit,
      'offset': offset,
      'order': order == SortOrder.ascending ? 'asc' : 'desc',
      'sort': sort,
    });

    addPaginated(paginated, params);

    addChannelId(channelId, params);

    // Add the info the videos must include
    addIncludes(includes, params);

    // Add the languages to filter by
    // Add the first item so that there is not a comma in front
    addLanguages(lang, params);

    // Add the max upcoming hours param
    addMaxUpcomingHours(maxUpcomingHours, params);

    // Add the mentioned channel id param
    addMentionedChannelId(mentionedChannelId, params);

    // Add the organization param
    addOrganization(organization, params);

    // Add the topic param
    addTopic(topic, params);

    // Add the status param
    addStatusList(status, params);

    // Add the type param
    addType(type, params);

    final response = await get(path: '/videos', params: params);

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
  /// - `includes` List of strings from the class `IncludesData`
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
    List<String>? includes,
    List<String> lang = const [Language.all],
    int limit = 125,
    int? maxUpcomingHours = 48,
    String? mentionedChannelId,
    int offset = 0,
    SortOrder order = SortOrder.ascending,
    String organization = Organization.Hololive,
    bool paginated = false,
    String sort = 'available_at',
    List<VideoStatus>? status = const [VideoStatus.live, VideoStatus.upcoming],
    String? topic,
    VideoType? type = VideoType.stream
  }) async {
    // Create the params list
    final Map<String, dynamic> params = {};

    // Make sure includes is not null
    includes ??= [];
    // Make sure liveInfo is in the list and not duplicated
    includes
      ..remove(Includes.liveInfo)
      ..add(Includes.liveInfo);

    // Add the items with default values (they can't be null)
    params.addAll({
      'limit': limit,
      'offset': offset,
      'order': order == SortOrder.ascending ? 'asc' : 'desc',
      'paginated': paginated,
      'sort': sort,
    });

    addPaginated(paginated, params);

    addChannelId(channelId, params);

    // Add the info the videos must include
    addIncludes(includes, params);

    // Add the languages to filter by
    // Add the first item so that there is not a comma in front
    addLanguages(lang, params);

    // Add the max upcoming hours param
    addMaxUpcomingHours(maxUpcomingHours, params);

    // Add the mentioned channel id param
    addMentionedChannelId(mentionedChannelId, params);

    // Add the organization param
    addOrganization(organization, params);

    // Add the topic param
    addTopic(topic, params);

    // Add the status param
    addStatusList(status, params);

    // Add the type param
    addType(type, params);

    final response = await get(path: '/live', params: params);

    if (paginated) {
      final Map<String, dynamic> map = response.data;
      // Grab total and return with it
      final videoList = VideoList.fromMap(map);
      return videoList.copyWith(paginated: true);
    }
    
    final List list = response.data;
    return VideoList(videos: list.map((video) => VideoFull.fromMap(video)).toList()); // Returns as `List<Video>`
  }

  void addPaginated(bool paginated, Map<String, dynamic> params) {
    if (paginated) {
      params.addAll({'paginated': 'yes'});
    } else {
      params.addAll({'paginated': ''});
    }
  }

  void addChannelId(String? channelId, Map<String, dynamic> params) {
    if (channelId != null) {
      params.addAll({'channel_id': channelId});
    }
  }

  void addStatusList(List<VideoStatus>? status, Map<String, dynamic> params) {
    if (status != null) {
      // Add the first item so that there is not a comma in front
      String stringStatus = EnumToString.convertToString(status[0]).replaceAll('new_', 'new');
      // Add the rest of the items
      for (int i = 1; i < status.length; i++) {
        stringStatus = stringStatus + ',' + EnumToString.convertToString(status[i]).replaceAll('new_', 'new');
      }
      params.addAll({'status': stringStatus});
    }
  }

  void addType(VideoType? type, Map<String, dynamic> params) {
    if (type != null) {
      params.addAll({'type': EnumToString.convertToString(type)});
    }
  }

  void addTopic(String? topic, Map<String, dynamic> params) {
    if (topic != null) {
      params.addAll({'topic': topic});
    }
  }

  void addOrganization(String? organization, Map<String, dynamic> params) {
    if (organization != null) {
      params.addAll({'org': organization});
    }
  }

  void addMentionedChannelId(String? mentionedChannelId, Map<String, dynamic> params) {
    if (mentionedChannelId != null) {
      params.addAll({'mentioned_channel_id': mentionedChannelId});
    }
  }

  void addMaxUpcomingHours(int? maxUpcomingHours, Map<String, dynamic> params) {
    if (maxUpcomingHours != null) {
      params.addAll({'max_upcoming_hours': maxUpcomingHours});
    }
  }

  void addIncludes(List<String>? includes, Map<String, dynamic> params) {
    if (includes != null && includes.isNotEmpty) {
      // Join the array with commas
      String includesData = includes.join(',');
      params.addAll({'include': includesData});
    }
  }

  void addLanguages(List<String> lang, Map<String, dynamic> params) {
    if ( lang.isNotEmpty ) {
      String languages = lang[0];
      // Add the rest of the items
      for (int i = 1; i < lang.length; i++) {
        languages = languages + ',' + lang[i];
      }
      params.addAll({'lang': languages});
    }
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
