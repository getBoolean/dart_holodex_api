// ignore_for_file: invalid_annotation_target

import 'package:dart_holodex_api/src/enums/language.dart';
import 'package:dart_holodex_api/src/enums/organization.dart';
import 'package:dart_holodex_api/src/enums/search_sort.dart';
import 'package:dart_holodex_api/src/enums/search_target.dart';
import 'package:dart_holodex_api/src/models/api/video_full.dart';
import 'package:dart_holodex_api/src/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_filter.freezed.dart';
part 'search_filter.g.dart';

/// Filter the results returns by the Holodex API channel endpoints
@Freezed(fromJson: false, toJson: true)
class SearchFilter with _$SearchFilter {
  /// Filter the results returns by the Holodex API channel endpoints
  @Assert('limit <= 50', 'The limit cannot be greater than 50')
  const factory SearchFilter({
    /// Sort by newest or oldest
    @JsonKey(name: 'sort', toJson: searchSortToString)
    @Default(SearchSort.newest)
    SearchSort sort,

    /// If set, will filter clips to only show clips with these languages + all vtuber streams
    /// (provided searchTargets is not set to filter out streams)
    @JsonKey(toJson: languageListToStringList, name: 'lang')
    @Default([])
    List<Language> languages,

    /// Target types of videos
    @Default([SearchTarget.clip, SearchTarget.stream])
    @JsonKey(name: 'target', toJson: searchTargetToStringList)
    List<SearchTarget> targets,

    /// Return videos that match one of the provided topics
    @JsonKey(name: 'topic') @Default([]) List<String> topics,

    /// Videos with all of the specified channel ids. If two or more channel IDs are specified,
    /// will only return their collabs, or if one channel is a clipper, it will only show clips
    /// of the other vtubers made by this clipper.
    @JsonKey(name: 'vch') @Default([]) List<String> videoChannels,

    /// Videos of channels in any of the specified organizations, or clips that involve a channel
    /// in the specified organization.
    @JsonKey(name: 'org', toJson: organizationListToStringList)
    @Default([])
    List<Organization> organizations,

    /// If paginated is set to true, returns [List]<[VideoFull]> with total, otherwise returns [List]<[VideoFull]> without the total.
    @Default(true) bool paginated,

    /// Offset results
    @JsonKey(toJson: intToString) @Default(0) int offset,

    /// Result limit
    @JsonKey(toJson: intToString) @Default(25) int limit,
  }) = _SearchFilter;
}
