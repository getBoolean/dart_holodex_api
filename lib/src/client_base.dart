import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:dio/dio.dart' as dio;

import 'enums.dart';
import 'models.dart';
import 'response.dart';

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

  // GetChannel

  /// GetVideo
  /// 
  /// Returns a single [Video]
  Future<Video> getVideo({required String videoId});

  // GetVideosFromChannel

  // GetLiveVideosByChannelId

  // GetLiveVideos

  // GetVideos



  // UTILITIES

  Future<dio.Response> call({
    required String method,
    required String path,
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
  });

  Future<dio.Response> get({
    required String path,
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
  });

  Future<dio.Response> post({
    required String path,
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
  });

}
