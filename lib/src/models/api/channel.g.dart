// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Channel _$$_ChannelFromJson(Map<String, dynamic> json) => _$_Channel(
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
      subOrganization: json['suborg'] as String?,
      banner: json['banner'] as String?,
      twitter: json['twitter'] as String?,
      lang: Language.fromString(json['lang'] as String?),
      inactive: json['inactive'] as bool?,
      description: json['description'] as String?,
      publishedAt: json['published_at'] as String?,
      crawledAt: json['crawled_at'] as String?,
      commentsCrawledAt: json['comments_crawled_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      ytUploadsId: json['yt_uploads_id'] as String?,
      topTopics: (json['top_topics'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      ytHandle: (json['yt_handle'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      twitch: json['twitch'] as String?,
      ytNameHistory: (json['yt_name_history'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      group: json['group'] as String?,
    );

Map<String, dynamic> _$$_ChannelToJson(_$_Channel instance) =>
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
      'suborg': instance.subOrganization,
      'banner': instance.banner,
      'twitter': instance.twitter,
      'lang': Language.toStringStatic(instance.lang),
      'inactive': instance.inactive,
      'description': instance.description,
      'published_at': instance.publishedAt,
      'crawled_at': instance.crawledAt,
      'comments_crawled_at': instance.commentsCrawledAt,
      'updated_at': instance.updatedAt,
      'yt_uploads_id': instance.ytUploadsId,
      'top_topics': instance.topTopics,
      'yt_handle': instance.ytHandle,
      'twitch': instance.twitch,
      'yt_name_history': instance.ytNameHistory,
      'group': instance.group,
    };

const _$ChannelTypeEnumMap = {
  ChannelType.vtuber: 'vtuber',
  ChannelType.subber: 'subber',
};
