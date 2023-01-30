// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_VideoFilterToJson(_$_VideoFilter instance) =>
    <String, dynamic>{
      'channel_id': instance.channelId,
      'ids': instance.ids,
      'include': concatIncludesList(instance.includes),
      'lang': concatLanguageListWithDefault(instance.languages),
      'limit': instance.limit,
      'max_upcoming_hours': instance.maxUpcomingHours,
      'mentioned_channel_id': instance.mentionedChannelId,
      'offset': instance.offset,
      'order': _$OrderEnumMap[instance.order]!,
      'organization': instance.organization,
      'paginated': paginatedToString(instance.paginated),
      'sort': instance.sort.map((e) => _$VideoSortEnumMap[e]!).toList(),
      'status': instance.status.map((e) => _$VideoStatusEnumMap[e]!).toList(),
      'topic': instance.topic,
      'type': _$VideoTypeEnumMap[instance.type],
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
