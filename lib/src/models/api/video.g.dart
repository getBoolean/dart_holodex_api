// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoImpl _$$VideoImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$VideoImpl',
      json,
      ($checkedConvert) {
        final val = _$VideoImpl(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          type: $checkedConvert(
              'type', (v) => $enumDecodeNullable(_$VideoTypeEnumMap, v)),
          topicId: $checkedConvert('topic_id', (v) => v as String?),
          publishedAt: $checkedConvert('published_at', (v) => v as String?),
          availableAt: $checkedConvert('available_at', (v) => v as String),
          duration: $checkedConvert('duration', (v) => v as int?),
          status: $checkedConvert(
              'status', (v) => VideoStatus.fromJson(v as String?)),
          startScheduled:
              $checkedConvert('start_scheduled', (v) => v as String?),
          startActual: $checkedConvert('start_actual', (v) => v as String?),
          endActual: $checkedConvert('end_actual', (v) => v as String?),
          liveViewers: $checkedConvert('live_viewers', (v) => v as int?),
          description: $checkedConvert('description', (v) => v as String?),
          songcount: $checkedConvert('songcount', (v) => v as int?),
          channelId: $checkedConvert('channel_id', (v) => v as String?),
          channel: $checkedConvert(
              'channel',
              (v) => v == null
                  ? null
                  : ChannelMin.fromJson(v as Map<String, dynamic>)),
          language: $checkedConvert('lang', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'topicId': 'topic_id',
        'publishedAt': 'published_at',
        'availableAt': 'available_at',
        'startScheduled': 'start_scheduled',
        'startActual': 'start_actual',
        'endActual': 'end_actual',
        'liveViewers': 'live_viewers',
        'channelId': 'channel_id',
        'language': 'lang'
      },
    );

Map<String, dynamic> _$$VideoImplToJson(_$VideoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': _$VideoTypeEnumMap[instance.type],
      'topic_id': instance.topicId,
      'published_at': instance.publishedAt,
      'available_at': instance.availableAt,
      'duration': instance.duration,
      'status': VideoStatus.toJsonStatic(instance.status),
      'start_scheduled': instance.startScheduled,
      'start_actual': instance.startActual,
      'end_actual': instance.endActual,
      'live_viewers': instance.liveViewers,
      'description': instance.description,
      'songcount': instance.songcount,
      'channel_id': instance.channelId,
      'channel': instance.channel?.toJson(),
      'lang': instance.language,
    };

const _$VideoTypeEnumMap = {
  VideoType.stream: 'stream',
  VideoType.clip: 'clip',
};
