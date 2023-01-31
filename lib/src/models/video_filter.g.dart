// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_VideoFilterToJson(_$_VideoFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('channel_id', instance.channelId);
  writeNotNull('id', nullStringListIfEmpty(instance.ids));
  writeNotNull('include', concatIncludesList(instance.includes));
  val['lang'] = concatLanguageListWithDefault(instance.languages);
  val['limit'] = intToString(instance.limit);
  writeNotNull(
      'max_upcoming_hours', intToStringNullable(instance.maxUpcomingHours));
  writeNotNull('mentioned_channel_id', instance.mentionedChannelId);
  val['offset'] = intToString(instance.offset);
  val['order'] = orderToString(instance.order);
  writeNotNull('org', organizationToString(instance.organization));
  val['paginated'] = paginatedToString(instance.paginated);
  writeNotNull('sort', concatVideoSortList(instance.sort));
  writeNotNull('status', concatVideoStatusList(instance.status));
  writeNotNull('topic', instance.topic);
  writeNotNull('type', videoTypeToString(instance.type));
  return val;
}
