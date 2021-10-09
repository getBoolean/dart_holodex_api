import 'dart:io';

import 'package:dio/dio.dart';

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
    Dio? client,
  }) {
    if (client == null) {
      dioClient = Dio();
    } else {
      dioClient = client;
    }

    // API requires use of a key, so add it to the headers
    dioClient.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        final customHeaders = {
          HttpHeaders.contentTypeHeader: "application/json",
          'X-APIKEY': apiKey,
        };
        options.headers.addAll(customHeaders);
        return handler.next(options);
      },
      // onResponse: (Response<dynamic> response, ResponseInterceptorHandler handler) {
      // }
    ));
  }

  late final Dio dioClient;
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

    final Response response = await get(path: _Constants.videosPath, params: params);

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
  /// - `paginated` If paginated is set to true, returns [VideoList] with total, otherwise returns [VideoList] without the total.
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
  /// - `paginated` If paginated is set to true, returns [VideoList] with total, otherwise returns [VideoList] without the total.
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
    bool paginated = true,
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
    final Response response = await get(path: '${_Constants.channelsPath}/$channelId');

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

  /// Quickly Access Live / Upcoming for a set of Channels
  /// 
  /// This endpoint is similar to the getLiveVideos() method and usually replies much faster.
  /// It is more friendly in general. The cost to execute a lookup is significantly cheaper.
  /// It's unfortunately less customizable as a result.
  /// 
  /// We recommend using this if you have a fixed set of channel IDs to look up status for.
  /// 
  /// Arguments:
  /// - `channelIds` List of channel IDs to get the live videos from.
  @override
  Future<List<Video>> getLiveVideosFromChannelsQuickly(List<String> channelIds) async {
    if (channelIds.isEmpty) {
      return <Video>[];
    }

    final Map<String, dynamic> params = {};

    _addChannels(channelIds, params);

    final response = await get(path: _Constants.userLivePath, params: params);
    final List list = response.data;
    return list.map((video) => Video.fromMap(video)).toList();
  }
  
  /// Get Videos From Channel
  /// 
  /// Alias of getVideosRelatedToChannel()
  /// 
  /// Returns [VideoList]
  /// 
  /// Arguments
  /// - `channelId` ID of the Youtube Channel that is being queried
  /// - `includes` Request extra data be included in the results. They are not guarenteed to be returned.
  /// - `lang` List of Language enum to filter channels/clips. Official streams do not follow this parameter
  /// - `limit` Result limit. Max of 50.
  /// - `offset` Offset results
  /// - `paginated` If paginated is set to true, returns [VideoList] with total, otherwise returns [VideoList] without the total.
  @override
  Future<VideoList> getChannelVideos(
    String channelId, {
    List<Includes>? includes,
    List<Language> lang = const [Language.all],
    int limit = 25,
    int offset = 0,
    bool paginated = true,
  }) async {
    return await getVideosRelatedToChannel(channelId, type: VideoSearchType.videos, includes: includes, lang: lang, limit: limit, offset: offset, paginated: paginated);
  }

  /// Get Clips of a VTuber
  /// 
  /// Alias of getVideosRelatedToChannel()
  /// 
  /// Returns [VideoList]
  /// 
  /// Arguments
  /// - `channelId` ID of the Youtube Channel that is being queried
  /// - `includes` Request extra data be included in the results. They are not guarenteed to be returned.
  /// - `lang` List of Language enum to filter channels/clips. Official streams do not follow this parameter
  /// - `limit` Result limit. Max of 50.
  /// - `offset` Offset results
  /// - `paginated` If paginated is set to true, returns [VideoList] with total, otherwise returns [VideoList] without the total.
  @override
  Future<VideoList> getVTuberClips(
    String channelId, {
    List<Includes>? includes,
    List<Language> lang = const [Language.all],
    int limit = 25,
    int offset = 0,
    bool paginated = true,
  }) async {
    return await getVideosRelatedToChannel(channelId, type: VideoSearchType.clips, includes: includes, lang: lang, limit: limit, offset: offset, paginated: paginated);
  }

  /// Get Collabs that mention a VTuber
  /// 
  /// Alias of getVideosRelatedToChannel()
  /// 
  /// Returns [VideoList]
  /// 
  /// Arguments
  /// - `channelId` ID of the Youtube Channel that is being queried
  /// - `includes` Request extra data be included in the results. They are not guarenteed to be returned.
  /// - `lang` List of Language enum to filter channels/clips. Official streams do not follow this parameter
  /// - `limit` Result limit. Max of 50.
  /// - `offset` Offset results
  /// - `paginated` If paginated is set to true, returns [VideoList] with total, otherwise returns [VideoList] without the total.
  @override
  Future<VideoList> getVTuberCollabs(
    String channelId, {
    List<Includes>? includes,
    List<Language> lang = const [Language.all],
    int limit = 25,
    int offset = 0,
    bool paginated = true,
  }) async {
    return await getVideosRelatedToChannel(channelId, type: VideoSearchType.collabs, includes: includes, lang: lang, limit: limit, offset: offset, paginated: paginated);
  }

  /// Get Videos Related To Channel
  /// 
  /// A simplified method for access channel specific data. 
  /// If you want more customization, the same result can be obtained by calling the queryVideos() method.
  /// 
  /// Arguments
  /// - `channelId` ID of the Youtube Channel that is being queried
  /// - `type` The type of video resource to fetch. Clips finds clip videos of a vtuber channel, Video finds the `channelId` channel's uploads, and collabs finds videos uploaded by other channels that mention this `channelId`
  /// - `includes` Request extra data be included in the results. They are not guarenteed to be returned.
  /// - `lang` List of Language enum to filter channels/clips. Official streams do not follow this parameter
  /// - `limit` Result limit. Max of 50.
  /// - `offset` Offset results
  /// - `paginated` If paginated is set to true, returns [VideoList] with total, otherwise returns [VideoList] without the total.
  @override
  Future<VideoList> getVideosRelatedToChannel(
    String channelId, {
    required VideoSearchType type,
    List<Includes>? includes,
    List<Language> lang = const [Language.all],
    int limit = 25,
    int offset = 0,
    bool paginated = true,
  }) async {
    // Limit cannot be greater than 50 otherwise request will be denied
    assert(limit <= 50);

    final Map<String, dynamic> params = {};
    
    // Add the items with default values (they can't be null)
    params.addAll({
      'limit': limit,
      'offset': offset,
    });

    _addIncludes(includes, params);
    _addLanguages(lang, params);
    _addPaginated(paginated, params);

    final response = await get(path: '${_Constants.channelsPath}/$channelId/${convertVideoSearchTypeToString(type)}', params: params);
    
    if (paginated) {
      final Map<String, dynamic> map = response.data;
      // Grab total and return with it
      final videoList = VideoList.fromMap(map);
      return videoList.copyWith(paginated: true);
    }
    
    final List list = response.data;
    return VideoList(videos: list.map((video) => VideoFull.fromMap(video)).toList());
  }

  /// Retrieves a video
  ///
  /// Retrieves Comments if `timestampComments` is set to true
  ///
  /// Retrieves Recommendations if query parameter `recommendationLanguages` is set
  @override
  Future<VideoMetadata> getVideoMetadata(
    String videoId, {
    bool timestampComments = false,
    List<Language>? recommendationLanguages,
  }) async {
    final Map<String, dynamic> params = {};

    _addLanguages(recommendationLanguages, params);

    _addCommentsFlag(timestampComments, params);

    final response = await get(path: '${_Constants.videosPath}/$videoId', params: params);
    final video = VideoFull.fromMap(response.data);
    final List? comments = response.data['comments'];
    final List? recommendations = response.data['recommendations'];
    return VideoMetadata(
      video: video,
      comments: comments?.map((comment) => Comment.fromMap(comment)).toList(),
      recommendations: recommendations?.map((video) => VideoWithChannel.fromMap(video)).toList(),
    );
  }

  // TODO: Fix parameters

  /// Flexible endpoint to search for videos fufilling multiple conditions. 
  /// Descriptions with "any" implies an OR condition, and "all" implies a AND condition.
  /// 
  /// Searching for topics and clips is not supported, because clips do not contain topic_ids
  @override
  Future<VideoList> searchVideos({
    SearchSort searchSort = SearchSort.newest,
    List<Language>? languages,
    List<SearchTarget>? searchTarget,
    List<String>? conditions,
    List<String>? topics,
    List<String>? vch,
    List<Organization>? organizations,
    bool paginated = true,
    int offset = 0,
    int limit = 25,
  }) async {
    final Map<String, dynamic> data = {};

    data.addAll({
      'sort': convertSearchSortToString(searchSort),
      'paginated': paginated,
      'offset': offset,
      'limit': limit,
      'comment': [],
    });

    if (languages != null) {
      data.addAll({
        'lang': languages.map((l) => convertLanguageToString(l)),
      });
    }

    if (searchTarget != null) {
      data.addAll({
        'target': searchTarget.map((s) => convertSearchTargetToString(s)),
      });
    }

    if (conditions != null) {
      data.addAll({
        'conditions': conditions,
      });
    }

    if (topics != null) {
      data.addAll({
        'topic': topics,
      });
    }

    if (vch != null) {
      data.addAll({
        'vch': vch,
      });
    }

    final response = await post(path: _Constants.videoSearch, data: data);
    
    // if (paginated) {
    //   final Map<String, dynamic> map = response.data;
    //   // Grab total and return with it
    //   final videoList = VideoList.fromMap(map);
    //   return videoList.copyWith(paginated: true);
    // }
    
    final List list = response.data;
    return VideoList(videos: list.map((video) => VideoFull.fromMap(video)).toList());
  }

  @override
  Future<List<Comment>> searchComments() async {
    // TODO: implement searchComments
    // TODO: Create class to hold List<VideoFull>, ChannelMin, and List<Comment>
    throw UnimplementedError();
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

  void _addCommentsFlag(bool comments, Map<String, dynamic> params) {
    params.addAll({'c': comments ? '1' : '0'});
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
  
  void _addChannels(List<String> channelIds, Map<String, dynamic> params) {
    if ( channelIds.isNotEmpty ) {
      // Join the array with commas
      String channelsConcat = channelIds.join(',');
      params.addAll({'channels': channelsConcat});
    }
  }

  // Utilities
  
  /// An alias of HolodexClient.call('get')
  @override
  Future<Response> get({
    String path = '',
    Map<String, String>? headers,
    Map<String, dynamic>? params,
    ResponseType responseType = ResponseType.json,
  }) async {
    return await call('get', path: path, headers: headers, params: params, responseType: responseType);
  }

  /// An alias of HolodexClient.call('post')
  @override
  Future<Response> post({
    String path = '',
    Map<String, String>? headers,
    Map<String, dynamic>? data,
    ResponseType responseType = ResponseType.json,
  }) async {
    return await call('post', path: path, headers: headers, data: data, responseType: responseType);
  }

  /// Method to make a http call and return `Response`
  @override
  Future<Response> call(
    String method, { 
    required String path, 
    Map<String, String>? headers, 
    Map<String, dynamic>? params,
    Map<String, dynamic>? data,
    ResponseType responseType = ResponseType.json,
  }) async {
    try {
      // Prepare request
      final result = RequestOptions(
        method: method,
        path: basePath + path,
        queryParameters: params,
        data: data,
        responseType: responseType,
        headers: headers,
      );
      final response = await dioClient.fetch(result);
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
  static const String channelsPath = '/channels';
  static const String userLivePath = '/users/live';
  static const String videoSearch = '/search/videoSearch';
  static const String commentSearch = '/search/commentSearch';
}