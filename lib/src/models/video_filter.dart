import 'package:dart_holodex_api/dart_holodex_api.dart';

/// Filter the results returns by the Holodex API `/videos` endpoint
class VideoFilter {
  final String? channelId;
  final String? id;
  final List<Includes> includes;
  final List<Language> languages;
  final int limit;
  final int? maxUpcomingHours;
  final String? mentionedChannelId;
  final int offset;
  final Order order;
  final List<String>? organization;
  final bool paginated;
  final List<VideoSort> videoSort;
  final List<VideoStatus>? videoStatus;
  final String? topic;
  final VideoType? videoType;

  /// Arguments:
  ///
  /// - `channelId` Filter by video uploader channel ID
  /// - `id` A single Youtube Video ID. If Specified, only this video can be returned (may be filtered out by other conditions though)
  /// - `includes` Request extra data be included in the results. They are not guarenteed to be returned.
  /// - `languages` Filter by the `Language`
  /// - `limit` Limit the number of results returned. Maximum value of 50
  /// - `maxUpcomingHours` Number of maximum hours upcoming to get upcoming videos by (for rejecting waiting rooms that are two years out)
  /// - `mentionedChannelId` Filter by mentioned channel id, excludes itself. Generally used to find collabs/clips that include the requested channel
  /// - `offset` Receive results starting at this number in the array from the Holodex API
  /// - `order` Order results by ascending or descending
  /// - `organization` Filter by clips that feature the org's talent or videos posted by the org's talent.
  /// - `paginated` If paginated is set to true, returns [VideoFullList] with total, otherwise returns [VideoFullList] without the total.
  /// - `videoSort` Sort the returned data by this field
  /// - `videoStatus` Filter by the video status
  /// - `topic` Filter by video topic ID
  /// - `videoType` Filter by type of video, either clips or streams
  const VideoFilter({
    this.channelId,
    this.id,
    this.includes = const [],
    this.languages = const [],
    this.limit = 25,
    this.maxUpcomingHours,
    this.mentionedChannelId,
    this.offset = 0,
    this.order = Order.descending,
    this.organization,
    this.paginated = false,
    this.videoSort = const <VideoSort>[VideoSort.availableAt],
    this.videoStatus,
    this.topic,
    this.videoType,
  });
}
