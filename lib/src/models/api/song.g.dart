// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Song _$$_SongFromJson(Map<String, dynamic> json) => _$_Song(
      name: json['name'] as String,
      art: json['art'] as String?,
      end: json['end'] as int?,
      start: json['start'] as int?,
      itunesid: json['itunesid'] as int?,
      originalArtist: json['original_artist'] as String?,
    );

Map<String, dynamic> _$$_SongToJson(_$_Song instance) => <String, dynamic>{
      'name': instance.name,
      'art': instance.art,
      'end': instance.end,
      'start': instance.start,
      'itunesid': instance.itunesid,
      'original_artist': instance.originalArtist,
    };
