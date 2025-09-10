// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Song _$SongFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_Song', json, ($checkedConvert) {
      final val = _Song(
        name: $checkedConvert('name', (v) => v as String),
        art: $checkedConvert('art', (v) => v as String?),
        end: $checkedConvert('end', (v) => (v as num?)?.toInt()),
        start: $checkedConvert('start', (v) => (v as num?)?.toInt()),
        itunesid: $checkedConvert('itunesid', (v) => (v as num?)?.toInt()),
        originalArtist: $checkedConvert('original_artist', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'originalArtist': 'original_artist'});

Map<String, dynamic> _$SongToJson(_Song instance) => <String, dynamic>{
  'name': instance.name,
  'art': instance.art,
  'end': instance.end,
  'start': instance.start,
  'itunesid': instance.itunesid,
  'original_artist': instance.originalArtist,
};
