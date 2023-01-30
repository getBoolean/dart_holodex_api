// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_VideoFilterToJson(_$_VideoFilter instance) {
  final val = <String, dynamic>{
    'channel_id': instance.channelId,
    'ids': instance.ids,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('include', concatIncludesList(instance.includes));
  val['lang'] = concatLanguageListWithDefault(instance.languages);
  val['limit'] = intToString(instance.limit);
  val['max_upcoming_hours'] = instance.maxUpcomingHours;
  val['mentioned_channel_id'] = instance.mentionedChannelId;
  val['offset'] = intToString(instance.offset);
  val['order'] = _$OrderEnumMap[instance.order]!;
  val['organization'] = instance.organization;
  val['paginated'] = paginatedToString(instance.paginated);
  val['sort'] = instance.sort.map((e) => _$VideoSortEnumMap[e]!).toList();
  val['status'] = instance.status.map((e) => _$VideoStatusEnumMap[e]!).toList();
  val['topic'] = instance.topic;
  val['type'] = _$VideoTypeEnumMap[instance.type];
  return val;
}

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
