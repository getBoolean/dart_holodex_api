import 'dart:convert';

import 'package:dart_holodex_api/src/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_videos.freezed.dart';
part 'paginated_videos.g.dart';

@freezed
class PaginatedVideos with _$PaginatedVideos {
  const PaginatedVideos._();

  const factory PaginatedVideos({
    int? total,
    @Default([]) List<VideoFull> items,
    @Default(false) bool paginated,
  }) = _PaginatedResult;

  factory PaginatedVideos.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PaginatedVideosFromJson(json);

  factory PaginatedVideos.fromString(
    String json,
  ) =>
      PaginatedVideos.fromJson(jsonDecode(json));

  /// Returns the first element.
  ///
  /// Throws a [StateError] if this is empty. Otherwise returns the first element in the iteration order, equivalent to this.elementAt(0)
  VideoFull get first => items.first;
}
