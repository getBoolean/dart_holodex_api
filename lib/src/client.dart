import 'package:dio/dio.dart' as dio;

import 'client_base.dart';
import '../dart_holodex_api.dart';

class HolodexClient extends BaseHolodexClient {
  /// Creates a new instance of [HolodexClient]
  /// 
  /// `apiKey` - Your personal API key. Be aware that the validity of the key is not checked, so ensure it is correct.
  /// 
  /// `basePath` - (Optional) The base Holodex API url. Can be overriden with the mock sever API url: `https://stoplight.io/mocks/holodex/holodex/11620234`
  /// 
  /// `dioClient` - An existing Dio Client, if needed. When left null, an internal client will be created
  HolodexClient({
    required this.apiKey,
    this.basePath = 'https://holodex.net/api/v2',
    dio.Dio? client,
  }) {
    if (client == null) {
      dioClient = dio.Dio();
    } else {
      dioClient = client;
    }

    // API requires use of a key, so add it to the headers
    dioClient.interceptors.add(dio.InterceptorsWrapper(onRequest: (dio.RequestOptions options, dio.RequestInterceptorHandler handler) async {
      final customHeaders = {
        'X-APIKEY': apiKey,
      };
      options.headers.addAll(customHeaders);
      return handler.next(options);
    }));
  }

  late final dio.Dio dioClient;
  final String basePath;
  final String apiKey;

  /// Get a video by its video ID
  /// 
  /// Returns [VideoFull]
  /// 
  /// Arguments:
  /// 
  /// - `videoId` The video ID as a string
  /// - `includes` Request extra data be included in the results. They are not guarenteed to be returned.
  @override
  Future<VideoFull> getVideoFromId(String videoId, {List<Includes>? includes}) async {
    final Map<String, dynamic> params = {'id': videoId};

    // Add the info the videos must include
    _addIncludes(includes, params);

    final dio.Response response = await get(path: _Constants.videosPath, params: params);

    return VideoFull.fromMap(response.data.first);
  }

  /// Get a list of videos
  /// 
  /// Returns `VideoList`
  /// 
  /// Arguments:
  /// 
  /// - `channelId` Filter by video uploader channel ID
  /// - `includes` Request extra data be included in the results. They are not guarenteed to be returned.
  /// - `lang` Filter by the `Language`
  /// - `limit` Limit the number of results returned. Maximum value of 50
  /// - `maxUpcomingHours` Number of maximum hours upcoming to get upcoming videos by (for rejecting waiting rooms that are two years out)
  /// - `mentionedChannelId` Filter by mentioned channel id, excludes itself. Generally used to find collabs/clips that include the requested channel
  /// - `offset` Receive results starting at this number in the array from the Holodex API
  /// - `order` Order results by ascending or descending
  /// - `organization` Filter by clips that feature the org's talent or videos posted by the org's talent.
  /// - `paginated` If paginated is set to any non-empty value, returns [VideoList] with total, otherwise returns [VideoList] without the total.
  /// - `sort` Sort the returned data by this field
  /// - `status` Filter by the video status
  /// - `topic` Filter by video topic ID
  /// - `type` Filter by type of video, either clips or streams
  @override
  Future<VideoList> getVideos({
    String? channelId,
    List<Includes>? includes,
    List<Language> lang = const [Language.all],
    int limit = 25,
    int? maxUpcomingHours,
    String? mentionedChannelId,
    int offset = 0,
    Order order = Order.descending,
    List<Organization>? organization,
    bool paginated = false,
    List<VideoSort> sort = const <VideoSort>[VideoSort.availableAt],
    List<VideoStatus>? status,
    String? topicId,
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
      'order': convertOrderToString(order),
    });

    _addVideoSort(sort, params);

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
    _addTopic(topicId, params);

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

  /// Get a list of live videos
  /// 
  /// Returns `VideoList`
  /// 
  /// This is somewhat similar to calling listVideos().
  ///
  /// However, this endpoint imposes these default values on the query parameters: You can choose to override them by providing your own values.
  /// 
  /// - status: [VideoStatus.live, VideoStatus.upcoming],
  /// - type: VideoType.stream,
  /// - sort: [VideoSort.availableAt],
  /// - order: Order.ascending,
  /// - max_upcoming_hours: 48,
  /// - limit: 9999,
  /// - include: [Includes.liveInfo] + query's include
  /// 
  /// Arguments:
  /// 
  /// - `channelId` Filter by video uploader channel ID
  /// - `includes` Request extra data be included in the results. They are not guarenteed to be returned.
  /// - `lang` Filter by the `Language`
  /// - `limit` Limit the number of results returned.
  /// - `maxUpcomingHours` Number of maximum hours upcoming to get upcoming videos by (for rejecting waiting rooms that are two years out)
  /// - `mentionedChannelId` Filter by mentioned channel id, excludes itself. Generally used to find collabs/clips that include the requested channel
  /// - `offset` Receive results starting at this number in the array from the Holodex API
  /// - `order` Order by ascending or descending
  /// - `organization` Filter by clips that feature the org's talent or videos posted by the org's talent.
  /// - `paginated` If paginated is set to any non-empty value, returns [VideoList] with total, otherwise returns [VideoList] without the total.
  /// - `sort` Sort the returned data by this field
  /// - `status` Filter by the video status
  /// - `topic` Filter by video topic ID
  /// - `type` Filter by type of video, either clips or streams
  @override
  Future<VideoList> getLiveVideos({
    String? channelId,
    List<Includes> includes = const [Includes.liveInfo],
    List<Language> lang = const [Language.all],
    int limit = 9999,
    int? maxUpcomingHours = 48,
    String? mentionedChannelId,
    int offset = 0,
    Order order = Order.ascending,
    List<Organization>? organization,
    bool paginated = false,
    List<VideoSort> sort = const <VideoSort>[VideoSort.availableAt],
    List<VideoStatus>? status = const [VideoStatus.live, VideoStatus.upcoming],
    String? topic,
    VideoType? type = VideoType.stream
  }) async {
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
      'order': convertOrderToString(order),
    });

    _addVideoSort(sort, params);

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

  /// Get a channel by its ID
  /// 
  /// Returns [Channel]
  /// 
  /// Arguments:
  /// 
  /// - `channelId` ID of the Youtube Channel that is being queried
  @override
  Future<Channel> getChannelFromId(String channelId) async {
    final dio.Response response = await get(path: '${_Constants.channelsPath}/$channelId');

    return Channel.fromMap(response.data);
  }

  /// Get channels
  /// 
  /// Arguments:
  /// - `lang` List of languages. Language is a property of Channel, so only Channels satisfying the language will be returned. Leave empty to search for Vtubers and/or all clippers.
  /// - `limit` Results limit
  /// - `offset` Offset results
  /// - `order` Order.ascending or Order.descending order, default ascending.
  /// - `organization` If set, filter for Vtubers belonging to a specific org
  /// - `sort` Column to sort on, leave default to use [ChannelSort.organization] as sort. Theoretically any value in ChannelSort should work
  @override
  Future<List<Channel>> getChannels({
    List<Language>? lang,
    int limit = 25,
    int offset = 0,
    Order order = Order.ascending,
    Organization? organization,
    List<ChannelSort> sort = const [ChannelSort.organization],
  }) async {
    // According to API docs, the maximum accepted value is 50 and anything higher the request will be denied
    assert(limit <= 50);

    // Create the params list
    final Map<String, dynamic> params = {};

    // Add the items with default values (they can't be null)
    params.addAll({
      'limit': limit,
      'offset': offset,
      'order': convertOrderToString(order),
    });

    _addChannelSort(sort, params);

    // Add the languages to filter by
    _addLanguages(lang, params);

    // Add the organization param
    _addSingleOrganization(organization, params);

    final response = await get(path: _Constants.channelsPath, params: params);

    final List list = response.data;

    return list.map((channel) => Channel.fromMap(channel)).toList(); // Returns as `List<Channel>`
  }

  void _addVideoSort(List<VideoSort> sort, Map<String, dynamic> params) {
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
      final List<String> statusesStringList = statuses.map((status) => convertVideoStatusToString(status)).toList();
      // Join the array with commas
      String statusesConcatenated = statusesStringList.join(',');
      params.addAll({'status': statusesConcatenated});
    }
  }

  void _addType(VideoType? type, Map<String, dynamic> params) {
    if (type != null && type != VideoType.all) {
      params.addAll({'type': convertVideoTypeToString(type)});
    }
  }

  void _addTopic(String? topic, Map<String, dynamic> params) {
    if (topic != null) {
      params.addAll({'topic': topic});
    }
  }

  void _addOrganization(List<Organization>? organization, Map<String, dynamic> params) {
    if (organization != null && organization.isNotEmpty) {
      // Make new list with the values as string
      final List<String> organizationStringList = organization.map((org) => convertOrganizationToString(org)!).toList();
      // Join the array with commas and add it to the parameters
      String orgsConcatenated = organizationStringList.join(',');
      params.addAll({'org': orgsConcatenated});
    }
  }
  
  void _addSingleOrganization(Organization? organization, Map<String, dynamic> params) {
    if (organization != null) {
      params.addAll({'org': convertOrganizationToString(organization)});
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

  void _addLanguages(List<Language>? lang, Map<String, dynamic> params) {
    if ( lang != null && lang.isNotEmpty ) {
      // Make new list with the values as string
      final List<String> langStringList = lang.map((l) => convertLanguageToString(l)).toList();
      // Join the array with commas
      String languagesConcat = langStringList.join(',');
      params.addAll({'lang': languagesConcat});
    }
  }
  
  void _addChannelSort(List<ChannelSort> sort, Map<String, dynamic> params) {
    if ( sort.isNotEmpty ) {
      // Make new list with the values as string
      final List<String> sortStringList = sort.map((l) => convertChannelSortToString(l)).toList();
      // Join the array with commas
      String sortConcat = sortStringList.join(',');
      params.addAll({'sort': sortConcat});
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
  
  @override
  Future<List<VideoFull>> getChannelVideos(String channelId, {VideoType? type}) {
    // TODO: implement getVideosFromChannel
    throw UnimplementedError();
  }

  @override
  Future<VideoFull> getVideoMetadata() {
    // TODO: implement getVideoMetadata
    // TODO: Create class to hold video metadata such as comments and recommendations, and a VideoFull
    throw UnimplementedError();
  }
  @override
  Future<List<VideoFull>> searchVideos() {
    // TODO: implement searchVideos
    throw UnimplementedError();
  }

  @override
  Future<List<Comment>> searchComments() {
    // TODO: implement searchComments
    // TODO: Create class to hold List<VideoFull>, ChannelMin, and List<Comment>
    throw UnimplementedError();
  }


  @override
  Future<List<Video>> getLiveVideosFromChannelsQuickly(List<String> channelIds) {
    // TODO: implement listLiveVideosFromChannelsQuickly
    throw UnimplementedError();
  }

  @override
  Future<VideoList> getVideosRelatedToChannel() {
    // TODO: implement queryVideosRelatedToChannel
    throw UnimplementedError();
  }

  @override
  Future<List<VideoFull>> getVTuberClips() {
    // TODO: implement getVTuberClips
    throw UnimplementedError();
  }

  @override
  Future<List<VideoFull>> getVTuberCollabs() {
    // TODO: implement getVTuberCollabs
    throw UnimplementedError();
  }
}


class _Constants {
  static const String videosPath = '/videos';
  static const String liveVideosPath = '/live';
  static const String channelsPath = '/channels';
}