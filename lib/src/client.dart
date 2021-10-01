import 'package:dart_holodex_api/src/models.dart';
import 'package:dio/dio.dart' as dio;
import 'package:enum_to_string/enum_to_string.dart';

import '../dart_holodex_api.dart';
import 'client_base.dart';
import 'enums.dart';
import 'response.dart';

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






  

  /// GetVideo
  /// 
  /// Returns a single [Video]
  @override
  Future<Video> getVideo({required String videoId}) async {
    final dio.Response response = await get(path: 'videos', params: {
      'id': videoId,
    });

    return Video.fromMap(response.data);
  }
  
  @override
  Future<dio.Response> get({
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
  }) async {
    return await call(method: 'get', path: path, headers: headers, params: params);
  }

  @override
  Future<dio.Response> post({
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
  }) async {
    return await call(method: 'post', path: path, headers: headers, params: params);
  }

  @override
  Future<dio.Response> call({required String method, required String path, Map<String, String> headers = const {}, Map<String, dynamic> params = const {}}) async {
    try {
      // return HolodexResponse<T>(data: response.data);

      // Prepare request
      final response = await dioClient.fetch(dio.RequestOptions(baseUrl: basePath, path: path, method: method, queryParameters: params, headers: headers));
      final responseData = response.data;
      print(responseData);

      // Return repared response
      return response;
    } catch (e) {
      if (e is HolodexException) {
        rethrow;
      }
      throw HolodexException(e.toString());
    }
  }
}
