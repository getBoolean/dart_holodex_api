// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:dart_holodex_api/src/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_videos.freezed.dart';
part 'paginated_videos.g.dart';

int? _parseTotal(dynamic value) {
  if (value is int) {
    return value;
  } else if (value is String) {
    return int.tryParse(value);
  }

  return null;
}

/// A paginated list of [VideoFull]s.
@freezed
class PaginatedVideos with _$PaginatedVideos {
  const PaginatedVideos._();

  /// Creates a paginated list of [VideoFull]s.
  const factory PaginatedVideos({
    @JsonKey(fromJson: _parseTotal) int? total,
    @Default([]) List<VideoFull> items,
    @Default(false) bool paginated,
  }) = _PaginatedVideos;

  /// Creates a paginated list of [VideoFull]s from a JSON object.
  factory PaginatedVideos.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PaginatedVideosFromJson(json);

  /// Creates a paginated list of [VideoFull]s from a JSON string.
  factory PaginatedVideos.fromString(
    String json,
  ) =>
      PaginatedVideos.fromJson(jsonDecode(json));

  /// Returns the first element.
  ///
  /// Throws a [StateError] if this is empty. Otherwise returns the first element in the iteration order, equivalent to this.elementAt(0)
  VideoFull get first => items.first;
}
