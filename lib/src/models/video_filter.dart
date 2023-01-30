import 'package:dart_holodex_api/src/enums/includes.dart';
import 'package:dart_holodex_api/src/enums/language.dart';
import 'package:dart_holodex_api/src/enums/order.dart';
import 'package:dart_holodex_api/src/enums/organization.dart';
import 'package:dart_holodex_api/src/enums/video_sort.dart';
import 'package:dart_holodex_api/src/enums/video_status.dart';
import 'package:dart_holodex_api/src/enums/video_type.dart';
import 'package:dart_holodex_api/src/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_filter.freezed.dart';
part 'video_filter.g.dart';

/// Filter the results returns by the Holodex API `/videos` endpoint
@Freezed(fromJson: false, toJson: true)
class VideoFilter with _$VideoFilter {
  const VideoFilter._();

  /// Filter the results returns by the Holodex API channel endpoints
  @Assert('limit <= 50', 'Limit cannot be greater than 50')
  const factory VideoFilter({
    /// Filter by video uploader channel ID
    @JsonKey(name: 'channel_id', includeIfNull: false) String? channelId,

    /// Youtube Video IDs. If Specified, only this video can be returned (may be filtered out by other conditions though)
    @JsonKey(name: 'id', toJson: nullStringListIfEmpty, includeIfNull: false)
    @Default([]) List<String> ids,

    /// Request extra data be included in the results. They are not guarenteed to be returned.
    @JsonKey(toJson: concatIncludesList, name: 'include', includeIfNull: false)
    @Default([])
        List<Includes> includes,

    /// Filter by the `Language`
    @Default([])
    @JsonKey(toJson: concatLanguageListWithDefault, name: 'lang')
        List<Language> languages,

    /// Limit the number of results returned. Maximum value of 50
    @JsonKey(toJson: intToString) @Default(25) int limit,

    /// Number of maximum hours upcoming to get upcoming videos by (for rejecting waiting rooms that are two years out)
    @JsonKey(name: 'max_upcoming_hours', includeIfNull: false)
        int? maxUpcomingHours,

    /// Filter by mentioned channel id, excludes itself. Generally used to find collabs/clips that include the requested channel
    @JsonKey(name: 'mentioned_channel_id', includeIfNull: false)
        String? mentionedChannelId,

    /// Receive results starting at this number in the array from the Holodex API
    @JsonKey(toJson: intToString) @Default(0) int offset,

    /// Order results by ascending or descending
    @JsonKey(toJson: orderToString) @Default(Order.descending) Order order,

    /// Filter by clips that feature the org's talent or videos posted by the org's talent.
    @JsonKey(name: 'org', toJson: concatOrganizationList)
    @Default([])
        List<Organization> organization,

    /// If paginated is set to true, returns [PaginatedVideos] with total, otherwise returns [PaginatedVideos] without the total.
    @JsonKey(toJson: paginatedToString) @Default(false) bool paginated,

    /// Sort the returned data by this field
    @Default([VideoSort.availableAt]) List<VideoSort> sort,

    /// Filter by the video status
    @Default([]) List<VideoStatus> status,

    /// Filter by video topic ID
    @JsonKey(includeIfNull: false) String? topic,

    /// Filter by type of video, either clips or streams
    @JsonKey(includeIfNull: false) VideoType? type,
  }) = _VideoFilter;
}
