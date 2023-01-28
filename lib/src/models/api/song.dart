import 'package:freezed_annotation/freezed_annotation.dart';

part 'song.freezed.dart';
part 'song.g.dart';

@freezed
class Song with _$Song {
  const factory Song({
    required String name,
    String? art,
    int? end,
    int? start,
    int? itunesid,
    @JsonKey(name: 'original_artist') String? originalArtist,
  }) = _Song;

  factory Song.fromJson(Map<String, dynamic> json) => _$SongFromJson(json);
}
