// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Song _$$_SongFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Song',
      json,
      ($checkedConvert) {
        final val = _$_Song(
          name: $checkedConvert('name', (v) => v as String),
          art: $checkedConvert('art', (v) => v as String?),
          end: $checkedConvert('end', (v) => v as int?),
          start: $checkedConvert('start', (v) => v as int?),
          itunesid: $checkedConvert('itunesid', (v) => v as int?),
          originalArtist:
              $checkedConvert('original_artist', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'originalArtist': 'original_artist'},
    );

Map<String, dynamic> _$$_SongToJson(_$_Song instance) => <String, dynamic>{
      'name': instance.name,
      'art': instance.art,
      'end': instance.end,
      'start': instance.start,
      'itunesid': instance.itunesid,
      'original_artist': instance.originalArtist,
    };
