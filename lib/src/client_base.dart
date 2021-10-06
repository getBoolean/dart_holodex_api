import 'package:dio/dio.dart' as dio;

import '../dart_holodex_api.dart';

abstract class BaseHolodexClient {
  /// Extended by [HolodexClient]
  /// 
  /// `apiKey` - Your personal API key. Be aware that the validity of the key is not checked, so ensure it is correct.
  /// 
  /// `basePath` - (Optional) The base Holodex API url.
  /// 
  /// `dioClient` - An existing Dio Client, if needed. When left null, an internal client will be created
  BaseHolodexClient({
    required this.apiKey,
    this.basePath = 'https://holodex.net/api/v2',
    dio.Dio? dioClient,
  }) {
    if (dioClient == null) {
      this.dioClient = dio.Dio();
    } else {
      this.dioClient = dioClient;
    }

    // API requires use of a key, so add it to the headers
    this.dioClient.interceptors.add(dio.InterceptorsWrapper(onRequest: (dio.RequestOptions options, dio.RequestInterceptorHandler handler) async {
      final customHeaders = {
        'X-APIKEY': apiKey,
      };
      options.headers.addAll(customHeaders);
      return handler.next(options);
    }));
  }

  final String basePath;
  final String apiKey;

  late final dio.Dio dioClient;


  // GET REQUESTS

  /// Get a video by its video ID
  /// 
  /// Returns [VideoFull]
  /// 
  /// Arguments:
  /// 
  /// - `videoId` The video ID as a string
  /// - `includes` Request extra data be included in the results. They are not guarenteed to be returned.
  Future<VideoFull> getVideo(String videoId);

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
  /// - `topicId` Filter by video topic ID
  /// - `type` Filter by type of video, either clips or streams
  Future<VideoList> listVideos({
    String? channelId,
    List<Includes>? includes,
    List<Language> lang,
    int limit,
    int? maxUpcomingHours,
    String? mentionedChannelId,
    int offset,
    Order order,
    List<Organization>? organization,
    bool paginated,
    List<VideoSort> sort,
    List<VideoStatus>? status,
    String? topicId,
    VideoType? type,
  });

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
  Future<VideoList> listLiveVideos({
    String? channelId,
    List<Includes> includes,
    List<Language> lang,
    int limit,
    int? maxUpcomingHours,
    String? mentionedChannelId,
    int offset,
    Order order,
    List<Organization>? organization,
    bool paginated,
    List<VideoSort> sort,
    List<VideoStatus>? status,
    String? topic,
    VideoType? type,
  });

  // GetChannel
  Future<Channel> getChannel(String channelId);

  // GetChannels
  Future<List<Channel>> listChannels();

  // GetVideosFromChannel
  Future<VideoFull> listVideosFromChannel(String channelId, {VideoType? type});

  // GetLiveVideosByChannelId
  Future<List<Video>> listLiveVideosFromChannel(String channelId);


  // UTILITIES

  Future<dio.Response> call(
    String method, {
    required String path,
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
  });


  /// An alias of HolodexClient.call('get')
  Future<dio.Response> get({
    required String path,
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    dio.ResponseType responseType = dio.ResponseType.json
  });


  /// An alias of HolodexClient.call('post')
  Future<dio.Response> post({
    required String path,
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    dio.ResponseType responseType = dio.ResponseType.json
  });

}
