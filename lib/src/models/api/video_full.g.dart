// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'video_full.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoFull _$$_VideoFullFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_VideoFull',
      json,
      ($checkedConvert) {
        final val = _$_VideoFull(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          type: $checkedConvert('type', (v) => _parseVideoType(v as String?)),
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
          comments: $checkedConvert(
              'comments',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          recommendations: $checkedConvert(
              'recommendations',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          clips: $checkedConvert(
              'clips',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          sources: $checkedConvert(
              'sources',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          refers: $checkedConvert(
              'refers',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          simulcasts: $checkedConvert(
              'simulcasts',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          mentions: $checkedConvert(
              'mentions',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Channel.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          songs: $checkedConvert(
              'songs',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Song.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          sameSourceClips: $checkedConvert(
              'same_source_clips',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
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
        'language': 'lang',
        'sameSourceClips': 'same_source_clips'
      },
    );

Map<String, dynamic> _$$_VideoFullToJson(_$_VideoFull instance) =>
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
      'comments': instance.comments.map((e) => e.toJson()).toList(),
      'recommendations':
          instance.recommendations.map((e) => e.toJson()).toList(),
      'clips': instance.clips.map((e) => e.toJson()).toList(),
      'sources': instance.sources.map((e) => e.toJson()).toList(),
      'refers': instance.refers.map((e) => e.toJson()).toList(),
      'simulcasts': instance.simulcasts.map((e) => e.toJson()).toList(),
      'mentions': instance.mentions.map((e) => e.toJson()).toList(),
      'songs': instance.songs.map((e) => e.toJson()).toList(),
      'same_source_clips':
          instance.sameSourceClips.map((e) => e.toJson()).toList(),
    };

const _$VideoTypeEnumMap = {
  VideoType.stream: 'stream',
  VideoType.clip: 'clip',
};
