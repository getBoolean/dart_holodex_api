import 'package:dio/dio.dart' as dio;

import '../dart_holodex_api.dart';
import 'client_base.dart';
import 'enums.dart';
import 'response.dart';

class HolodexClient extends BaseHolodexClient {
  /// Creates a new instance of HolodexClient
  /// 
  /// [apiKey] - Your personal API key. Be aware that the validity of the key is not checked, so ensure it is correct.
  /// [basePath] - (Optional) The base Holodex API url.
  /// [client] - An existing Dio Client, if needed. When left null, an internal client will be created
  HolodexClient({
    required apiKey,
    basePath = 'https://holodex.net/api/v2',
    dio.Dio? client,
  }) : super(apiKey: apiKey, basePath: basePath, client: client);

  @override
  Future<HolodexResponse<T>> call<T>(
    HttpMethod method, {
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
  }) async {
    try {
      // final dio.Response response = await dioClient.get(Uri.parse(basePath + path).toString(), queryParameters: params);
      // return HolodexResponse<T>(data: response.data);


      // Prepare request

      // Return repared response

      throw UnimplementedError();
    } catch (e) {
      if (e is HolodexException) {
        rethrow;
      }
      throw HolodexException(e.toString());
    }
  }
}
