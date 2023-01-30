import 'dart:convert';

import 'package:dart_holodex_api/src/enums/language.dart';
import 'package:dart_holodex_api/src/enums/organization.dart';
import 'package:dart_holodex_api/src/enums/search_sort.dart';
import 'package:dart_holodex_api/src/enums/search_target.dart';
import 'package:dart_holodex_api/src/models/api/video_full.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_filter.freezed.dart';
part 'search_filter.g.dart';

@freezed
class SearchFilter with _$SearchFilter {
  const SearchFilter._();

  @Assert('limit <= 50', 'The limit cannot be greater than 50')
  const factory SearchFilter({
    /// Sort by newest or oldest
    @Default(SearchSort.newest) SearchSort searchSort,

    /// If set, will filter clips to only show clips with these languages + all vtuber streams
    /// (provided searchTargets is not set to filter out streams)
    @JsonKey(
        toJson: languageListToStringList, fromJson: stringListToLanguageList)
    @Default([])
        List<Language> languages,

    /// Target types of videos
    @Default([SearchTarget.clip, SearchTarget.stream])
        List<SearchTarget> searchTargets,

    /// Return videos that match one of the provided topics
    @Default([]) List<String> topics,

    /// Videos with all of the specified channel ids. If two or more channel IDs are specified,
    /// will only return their collabs, or if one channel is a clipper, it will only show clips
    /// of the other vtubers made by this clipper.
    @Default([]) List<String> videoChannels,

    /// Videos of channels in any of the specified organizations, or clips that involve a channel
    /// in the specified organization.
    @Default([]) List<Organization> organizations,

    /// If paginated is set to true, returns [List]<[VideoFull]> with total, otherwise returns [List]<[VideoFull]> without the total.
    @Default(true) bool paginated,

    /// Offset results
    @Default(0) int offset,

    /// Result limit
    @Default(25) int limit,
  }) = _SearchFilter;

  factory SearchFilter.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SearchFilterFromJson(json);

  factory SearchFilter.fromString(
    String json,
  ) =>
      SearchFilter.fromJson(jsonDecode(json));
}
