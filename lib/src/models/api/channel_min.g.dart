// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_min.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChannelMin _$$_ChannelMinFromJson(Map<String, dynamic> json) =>
    _$_ChannelMin(
      id: json['id'] as String,
      name: json['name'] as String,
      englishName: json['english_name'] as String?,
      type: $enumDecodeNullable(_$ChannelTypeEnumMap, json['type']),
      photo: json['photo'] as String?,
      organization: json['org'] as String?,
      videoCount: json['video_count'] as String?,
      subscriberCount: json['subscriber_count'] as String?,
      viewCount: json['view_count'] as String?,
      clipCount: json['clip_count'] as int?,
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
