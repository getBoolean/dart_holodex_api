// ignore_for_file: invalid_annotation_target

import 'package:dart_holodex_api/src/enums/includes.dart';
import 'package:dart_holodex_api/src/enums/language.dart';
import 'package:dart_holodex_api/src/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_video_filter.freezed.dart';
part 'channel_video_filter.g.dart';

/// Filter the results returns by the Holodex API channel videos endpoints
@Freezed(fromJson: false, toJson: true)
class ChannelVideoFilter with _$ChannelVideoFilter {
  const ChannelVideoFilter._();

  /// Used to filter the results returns by the Holodex API's `channels` endpoints
  @Assert('limit <= 50', 'The limit cannot be greater than 50')
  const factory ChannelVideoFilter({
    /// Request extra data be included in the results. They are not guarenteed to be returned.
    @JsonKey(toJson: concatIncludesList, name: 'include', includeIfNull: false)
    @Default([])
        List<Includes> includes,

    /// List of Language enum to filter channels/clips. Official streams do not follow this parameter
    @JsonKey(toJson: concatLanguageListWithDefault, name: 'lang')
    @Default([])
        List<Language> languages,

    /// Result limit. Max of 50.
    @JsonKey(toJson: intToString) @Default(25) int limit,

    /// Offset results
    @JsonKey(toJson: intToString) @Default(0) int offset,

    /// If paginated is set to true, returns [PaginatedVideos] with total, otherwise returns [PaginatedVideos] without the total.
    @JsonKey(toJson: paginatedToString) @Default(true) bool paginated,
  }) = _ChannelVideoFilter;
}
