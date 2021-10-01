import 'dart:collection';

import 'package:dart_holodex_api/src/models.dart';
import 'package:dio/dio.dart' as dio;
import 'package:enum_to_string/enum_to_string.dart';

import '../dart_holodex_api.dart';
import 'client_base.dart';
import 'enums.dart';

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

  /// Query Videos
  /// 
  /// Returns `List<Video>`
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
  /// - `status` Filter by video status
  /// - `topic` Filter by video topic id
  /// - `type` Filter by type of video
  @override
  Future<List<VideoFull>> getVideos({
    String? channelId,
    List<String>? includes,
    List<String> lang = const <String>[Language.all],
    int limit = 25,
    int? maxUpcomingHours,
    String? mentionedChannelId,
    int offset = 0,
    SortOrder order = SortOrder.descending,
    String? organization,
    String paginated = '<empty>',
    String sort = 'available_at',
    VideoStatus? status,
    String? topic,
    VideoType? type,
  }) async {
    // Create the params list
    final Map<String, dynamic> params = {};

    // Add the items with default values (they can't be null)
    params.addAll({
      'channel_id': channelId,
      'limit': limit,
      'offset': offset,
      'order': order == SortOrder.ascending ? 'asc' : 'desc',
      'paginated': paginated,
      'sort': sort,
    });

    // Add the info the videos must include
    if (includes != null) {
      // Add the first item so that there is not a comma in front
      String includesData = includes[0];
      // Add the rest of the items
      for (int i = 1; i < includes.length; i++) {
        includesData = includesData + ',' + includes[i];
      }
      params.addAll({'include': includesData});
    }

    // Add the languages to filter by
    // Add the first item so that there is not a comma in front
    String languages = lang[0];
    // Add the rest of the items
    for (int i = 1; i < lang.length; i++) {
      languages = languages + ',' + lang[i];
    }
    params.addAll({'lang': languages});

    // Add the max upcoming hours param
    if (maxUpcomingHours != null) {
      params.addAll({'max_upcoming_hours': maxUpcomingHours});
    }

    // Add the mentioned channel id param
    if (mentionedChannelId != null) {
      params.addAll({'mentioned_channel_id': mentionedChannelId});
    }

    // Add the organization param
    if (organization != null) {
      params.addAll({'org': organization});
    }

    // Add the topic param
    if (topic != null) {
      params.addAll({'topic': topic});
    }

    // Add the status param
    if (status != null) {
      final stringStatus = EnumToString.convertToString(status).replaceAll('new_', 'new');

      params.addAll({'status': stringStatus});
    }

    // Add the type param
    if (type != null) {
      params.addAll({'type': EnumToString.convertToString(type)});
    }

    final dio.Response response = await get(path: '/videos', params: params);

    // TODO: Test if works
    final List list = response.data['items'];
    print(response.data['items']);
    
    return list.map((video) => VideoFull.fromMap(video)).toList(); // Returns as `List<Video>`
  }
  
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
