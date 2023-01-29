// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Video _$$_VideoFromJson(Map<String, dynamic> json) => _$_Video(
      id: json['id'] as String,
      title: json['title'] as String,
      type: $enumDecodeNullable(_$VideoTypeEnumMap, json['type']) ??
          VideoType.all,
      topicId: json['topic_id'] as String?,
      publishedAt: json['published_at'] as String?,
      availableAt: json['available_at'] as String,
      duration: json['duration'] as int?,
      status: VideoStatus.fromJson(json['status'] as String?),
      startScheduled: json['start_scheduled'] as String?,
      startActual: json['start_actual'] as String?,
      endActual: json['end_actual'] as String?,
      liveViewers: json['live_viewers'] as int?,
      description: json['description'] as String?,
      songcount: json['songcount'] as int?,
      channelId: json['channel_id'] as String?,
      channel: json['channel'] == null
          ? null
          : ChannelMin.fromJson(json['channel'] as Map<String, dynamic>),
      language: json['lang'] as String?,
    );

Map<String, dynamic> _$$_VideoToJson(_$_Video instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': _$VideoTypeEnumMap[instance.type]!,
      'topic_id': instance.topicId,
      'published_at': instance.publishedAt,
      'available_at': instance.availableAt,
      'duration': instance.duration,
      'status': VideoStatus.toJson(instance.status),
      'start_scheduled': instance.startScheduled,
      'start_actual': instance.startActual,
      'end_actual': instance.endActual,
      'live_viewers': instance.liveViewers,
      'description': instance.description,
      'songcount': instance.songcount,
      'channel_id': instance.channelId,
      'channel': instance.channel,
      'lang': instance.language,
    };

const _$VideoTypeEnumMap = {
  VideoType.stream: 'stream',
  VideoType.clip: 'clip',
  VideoType.all: 'all',
};
