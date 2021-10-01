import 'package:dio/dio.dart';

import 'enums.dart';
import 'response.dart';

class HolodexClient {
  /// Creates a new instance of HolodexClient
  /// 
  /// [apiKey] - Your personal API key. Be aware that the validity of the key is not checked, so ensure it is correct.
  /// [basePath] - (Optional) The base Holodex API url.
  /// [client] - An existing Dio Client, if needed. When left null, an internal client will be created
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
}
