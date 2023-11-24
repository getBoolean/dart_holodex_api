// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Channel _$$_ChannelFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Channel',
      json,
      ($checkedConvert) {
        final val = _$_Channel(
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
          subOrganization: $checkedConvert('suborg', (v) => v as String?),
          banner: $checkedConvert('banner', (v) => v as String?),
          twitter: $checkedConvert('twitter', (v) => v as String?),
          lang:
              $checkedConvert('lang', (v) => Language.fromString(v as String?)),
          inactive: $checkedConvert('inactive', (v) => v as bool?),
          description: $checkedConvert('description', (v) => v as String?),
          publishedAt: $checkedConvert('published_at', (v) => v as String?),
          crawledAt: $checkedConvert('crawled_at', (v) => v as String?),
          commentsCrawledAt:
              $checkedConvert('comments_crawled_at', (v) => v as String?),
          updatedAt: $checkedConvert('updated_at', (v) => v as String?),
          ytUploadsId: $checkedConvert('yt_uploads_id', (v) => v as String?),
          topTopics: $checkedConvert(
              'top_topics',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  const []),
          ytHandle: $checkedConvert(
              'yt_handle',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  const []),
          twitch: $checkedConvert('twitch', (v) => v as String?),
          ytNameHistory: $checkedConvert(
              'yt_name_history',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  const []),
          group: $checkedConvert('group', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'englishName': 'english_name',
        'organization': 'org',
        'videoCount': 'video_count',
        'subscriberCount': 'subscriber_count',
        'viewCount': 'view_count',
        'clipCount': 'clip_count',
        'subOrganization': 'suborg',
        'publishedAt': 'published_at',
        'crawledAt': 'crawled_at',
        'commentsCrawledAt': 'comments_crawled_at',
        'updatedAt': 'updated_at',
        'ytUploadsId': 'yt_uploads_id',
        'topTopics': 'top_topics',
        'ytHandle': 'yt_handle',
        'ytNameHistory': 'yt_name_history'
      },
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
