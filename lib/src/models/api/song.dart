import 'package:freezed_annotation/freezed_annotation.dart';

part 'song.freezed.dart';
part 'song.g.dart';

/// A [Song] class with information retrieved from Holodex.
@freezed
class Song with _$Song {
  /// Returns a new [Song] instance.
  const factory Song({
    required String name,
    String? art,
    int? end,
    int? start,
    int? itunesid,
    @JsonKey(name: 'original_artist') String? originalArtist,
  }) = _Song;

  /// Returns a new [Song] instance from a JSON object.
  factory Song.fromJson(Map<String, dynamic> json) => _$SongFromJson(json);
}
