import 'package:dio/dio.dart' as dio;

import '../dart_holodex_api.dart';

abstract class BaseHolodexClient {
  /// Extended by [HolodexClient]
  BaseHolodexClient();


  // GET REQUESTS

  /// Get a channel by its ID
  /// 
  /// Returns [Channel]
  /// 
  /// Arguments:
  /// 
  /// - `channelId` ID of the Youtube Channel that is being queried
  Future<Channel> getChannelFromId(String channelId);

  /// Get a video by its video ID
  /// 
  /// Returns [VideoFull]
  /// 
  /// Arguments:
  /// 
  /// - `videoId` The video ID as a string
  /// - `includes` Request extra data be included in the results. They are not guarenteed to be returned.
  Future<VideoFull> getVideoFromId(String videoId);

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
  Future<VideoList> getVideos({
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
  Future<VideoList> getLiveVideos({
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
  
  /// Get channels
  /// 
  /// Arguments:
  /// - `lang` List of languages. Language is a property of Channel, so only Channels satisfying the language will be returned. Leave empty to search for Vtubers and/or all clippers.
  /// - `limit` Results limit
  /// - `offset` Offset results
  /// - `order` Order.ascending or Order.descending order, default ascending.
  /// - `organization` If set, filter for Vtuber belonging to a specific org
  /// - `sort` Column to sort on, leave default to use 'organization' as sort. Any first level property of channel should work here.
  Future<List<Channel>> getChannels({
    List<Language>? lang,
    int limit = 25,
    int offset = 0,
    Order order = Order.ascending,
    Organization? organization,
    List<ChannelSort> sort,
  });

  /// Quickly Access Live / Upcoming for a set of Channels
  /// 
  /// This endpoint is similar to the getLiveVideos() method and usually replies much faster.
  /// It is more friendly in general. The cost to execute a lookup is significantly cheaper.
  /// It's unfortunately less customizable as a result.
  /// 
  /// We recommends using this if you have a fixed set of channel IDs to look up status for.
  Future<List<Video>> getLiveVideosFromChannelsQuickly(
    List<String> channelIds,
  );

  /// GetVideosFromChannel
  /// 
  /// Alias of getVideosRelatedToChannel()
  Future<VideoList> getChannelVideos(
    String channelId, {
    List<Includes>? includes,
    List<Language> lang,
    int limit,
    int offset,
    bool paginated,
  });

  /// Get Clips of a VTuber
  /// 
  /// Alias of getVideosRelatedToChannel()
  Future<VideoList> getVTuberClips(
    String channelId, {
    List<Includes>? includes,
    List<Language> lang,
    int limit,
    int offset,
    bool paginated,
  });

  /// Get Collabs that mention a VTuber
  /// 
  /// Alias of getVideosRelatedToChannel()
  Future<VideoList> getVTuberCollabs(
    String channelId, {
    List<Includes>? includes,
    List<Language> lang,
    int limit,
    int offset,
    bool paginated,
  });

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
  /// - `paginated` If paginated is set to any non-empty value, returns [VideoList] with total, otherwise returns [VideoList] without the total.
  Future<VideoList> getVideosRelatedToChannel(
    String channelId, {
    required VideoSearchType type,
    List<Includes>? includes,
    List<Language> lang,
    int limit,
    int offset,
    bool paginated,
  });

  /// Retrieves a video
  ///
  /// Also retrieves Comments if query parameter c is set.
  ///
  /// Also retrieves Recommendations if query parameter lang is set
  Future<VideoMetadata> getVideoMetadata(
    String videoId, {
    bool timestampComments,
    List<Language>? recommendationLanguages,
  });

  /// Flexible endpoint to search for videos fufilling multiple conditions. 
  /// Descriptions with "any" implies an OR condition, and "all" implies a AND condition.
  /// 
  /// Searching for topics and clips is not supported, because clips do not contain topic_ids
  Future<List<VideoFull>> searchVideos();

  /// Flexible endpoint to search for comments in videos fufilling multiple conditions. 
  /// Descriptions with "any" implies an OR condition, and "all" implies a AND condition.
  Future<List<Comment>> searchComments();

  // UTILITIES

  /// Utility method to create an http call
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
