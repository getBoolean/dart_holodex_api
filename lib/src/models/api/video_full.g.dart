// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_full.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoFull _$$_VideoFullFromJson(Map<String, dynamic> json) => _$_VideoFull(
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
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      recommendations: (json['recommendations'] as List<dynamic>?)
              ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      clips: (json['clips'] as List<dynamic>?)
              ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      sources: (json['sources'] as List<dynamic>?)
              ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      refers: (json['refers'] as List<dynamic>?)
              ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      simulcasts: (json['simulcasts'] as List<dynamic>?)
              ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      mentions: (json['mentions'] as List<dynamic>?)
              ?.map((e) => Channel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      songs: (json['songs'] as List<dynamic>?)
              ?.map((e) => Song.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_VideoFullToJson(_$_VideoFull instance) =>
    <String, dynamic>{
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
      'comments': instance.comments,
      'recommendations': instance.recommendations,
      'clips': instance.clips,
      'sources': instance.sources,
      'refers': instance.refers,
      'simulcasts': instance.simulcasts,
      'mentions': instance.mentions,
      'songs': instance.songs,
    };

const _$VideoTypeEnumMap = {
  VideoType.stream: 'stream',
  VideoType.clip: 'clip',
  VideoType.all: 'all',
};
