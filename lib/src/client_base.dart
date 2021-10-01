import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:dio/dio.dart';

import 'enums.dart';
import 'response.dart';

abstract class BaseHolodexClient {
  /// Creates a new instance of HolodexClient
  /// 
  /// [apiKey] - Your personal API key. Be aware that the validity of the key is not checked, so ensure it is correct.
  /// [basePath] - (Optional) The base Holodex API url.
  /// [client] - An existing Dio Client, if needed. When left null, an internal client will be created
  BaseHolodexClient({
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
    dioClient.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options, RequestInterceptorHandler handler) async {
      final customHeaders = {
        'X-APIKEY': apiKey,
      };
      options.headers.addAll(customHeaders);
      return handler.next(options);
    }));
  }

  final String basePath;
  final String apiKey;

  late final Dio dioClient;


  // GET REQUESTS

  // GetChannels

  // GetChannel

  // GetVideo

  // GetVideosFromChannel

  // GetLiveVideosByChannelId

  // GetLiveVideos

  // GetVideos



  // UTILITIES

  Future<HolodexResponse<T>> call<T>(
    HttpMethod method, {
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
  });

}
