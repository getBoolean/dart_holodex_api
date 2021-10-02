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

  // GetChannels
  Future<List<Channel>> listChannels();

  // GetChannel
  Future<Channel> getChannel(String channelId);

  /// Get a video by its video ID
  /// 
  /// Returns a single [VideoFull]
  /// 
  /// Arguments:
  /// 
  /// - `videoId` The video ID as a string
  /// - `includes` List of strings from the class `IncludesData`
  Future<VideoFull> getVideo(String videoId);

  // GetVideosFromChannel
  Future<VideoFull> listVideosFromChannel(String channelId, {VideoType? type});

  // GetLiveVideosByChannelId
  Future<List<Video>> listLiveVideosFromChannel(String channelId);

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
  Future<List<VideoFull>> listLiveVideos({
    String? channelId,
    List<String> includes = const [IncludesData.liveInfo],
    List<String> lang = const [Language.all],
    int limit = 125,
    int? maxUpcomingHours = 48,
    String? mentionedChannelId,
    int offset = 0,
    SortOrder order = SortOrder.ascending,
    String organization = Organization.Hololive,
    String paginated = '<empty>',
    String sort = 'available_at',
    List<VideoStatus>? status = const [VideoStatus.live, VideoStatus.upcoming],
    String? topic,
    VideoType? type = VideoType.stream,
  });

  /// Get a list of videos
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
  Future<List<VideoFull>> listVideos({
    String? channelId,
    List<String>? includes,
    List<String> lang = const [Language.all],
    int limit = 25,
    int? maxUpcomingHours,
    String? mentionedChannelId,
    int offset = 0,
    SortOrder order = SortOrder.descending,
    String organization = Organization.Hololive,
    String paginated = '<empty>',
    String sort = 'available_at',
    List<VideoStatus>? status,
    String? topic,
    VideoType? type,
  });



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
