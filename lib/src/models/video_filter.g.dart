// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoFilter _$$_VideoFilterFromJson(Map<String, dynamic> json) =>
    _$_VideoFilter(
      channelId: json['channelId'] as String?,
      ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      includes: (json['includes'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$IncludesEnumMap, e))
              .toList() ??
          const [],
      languages: json['languages'] == null
          ? const []
          : _stringListToLanguageList(json['languages'] as List<String>),
      limit: json['limit'] as int? ?? 25,
      maxUpcomingHours: json['maxUpcomingHours'] as int?,
      mentionedChannelId: json['mentionedChannelId'] as String?,
      offset: json['offset'] as int? ?? 0,
      order: $enumDecodeNullable(_$OrderEnumMap, json['order']) ??
          Order.descending,
      organization: (json['organization'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      paginated: json['paginated'] as bool? ?? false,
      sort: (json['sort'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$VideoSortEnumMap, e))
              .toList() ??
          const [VideoSort.availableAt],
      status: (json['status'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$VideoStatusEnumMap, e))
              .toList() ??
          const [],
      topic: json['topic'] as String?,
      type: $enumDecodeNullable(_$VideoTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_VideoFilterToJson(_$_VideoFilter instance) =>
    <String, dynamic>{
      'channelId': instance.channelId,
      'ids': instance.ids,
      'includes': instance.includes.map((e) => _$IncludesEnumMap[e]!).toList(),
      'languages': _languageListToStringList(instance.languages),
      'limit': instance.limit,
      'maxUpcomingHours': instance.maxUpcomingHours,
      'mentionedChannelId': instance.mentionedChannelId,
      'offset': instance.offset,
      'order': _$OrderEnumMap[instance.order]!,
      'organization': instance.organization,
      'paginated': instance.paginated,
      'sort': instance.sort.map((e) => _$VideoSortEnumMap[e]!).toList(),
      'status': instance.status.map((e) => _$VideoStatusEnumMap[e]!).toList(),
      'topic': instance.topic,
      'type': _$VideoTypeEnumMap[instance.type],
    };

const _$IncludesEnumMap = {
  Includes.clips: 'clips',
  Includes.refers: 'refers',
  Includes.sources: 'sources',
  Includes.simulcasts: 'simulcasts',
  Includes.mentions: 'mentions',
  Includes.description: 'description',
  Includes.liveInfo: 'liveInfo',
  Includes.channelStats: 'channelStats',
  Includes.songs: 'songs',
};

const _$OrderEnumMap = {
  Order.ascending: 'ascending',
  Order.descending: 'descending',
};

const _$VideoSortEnumMap = {
  VideoSort.title: 'title',
  VideoSort.publishedAt: 'publishedAt',
  VideoSort.availableAt: 'availableAt',
  VideoSort.startScheduled: 'startScheduled',
  VideoSort.startActual: 'startActual',
  VideoSort.endActual: 'endActual',
};

const _$VideoStatusEnumMap = {
  VideoStatus.new_: 'new_',
  VideoStatus.upcoming: 'upcoming',
  VideoStatus.live: 'live',
  VideoStatus.past: 'past',
  VideoStatus.missing: 'missing',
};

const _$VideoTypeEnumMap = {
  VideoType.stream: 'stream',
  VideoType.clip: 'clip',
  VideoType.all: 'all',
  VideoType.unknown: 'unknown',
};
