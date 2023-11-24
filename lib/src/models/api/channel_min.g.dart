// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'channel_min.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChannelMin _$$_ChannelMinFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ChannelMin',
      json,
      ($checkedConvert) {
        final val = _$_ChannelMin(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          englishName: $checkedConvert('english_name', (v) => v as String?),
          type: $checkedConvert(
              'type', (v) => $enumDecodeNullable(_$ChannelTypeEnumMap, v)),
          photo: $checkedConvert('photo', (v) => v as String?),
          organization: $checkedConvert('org', (v) => v as String?),
          videoCount: $checkedConvert('video_count', (v) => v as int?),
          subscriberCount:
              $checkedConvert('subscriber_count', (v) => v as int?),
          viewCount: $checkedConvert('view_count', (v) => v as String?),
          clipCount: $checkedConvert('clip_count', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {
        'englishName': 'english_name',
        'organization': 'org',
        'videoCount': 'video_count',
        'subscriberCount': 'subscriber_count',
        'viewCount': 'view_count',
        'clipCount': 'clip_count'
      },
    );

Map<String, dynamic> _$$_ChannelMinToJson(_$_ChannelMin instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'english_name': instance.englishName,
      'type': _$ChannelTypeEnumMap[instance.type],
      'photo': instance.photo,
      'org': instance.organization,
      'video_count': instance.videoCount,
      'subscriber_count': instance.subscriberCount,
      'view_count': instance.viewCount,
      'clip_count': instance.clipCount,
    };

const _$ChannelTypeEnumMap = {
  ChannelType.vtuber: 'vtuber',
  ChannelType.subber: 'subber',
};
