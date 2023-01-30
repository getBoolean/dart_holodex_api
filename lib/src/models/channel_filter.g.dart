// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_ChannelFilterToJson(_$_ChannelFilter instance) {
  final val = <String, dynamic>{
    'lang': concatLanguageListWithDefault(instance.languages),
    'limit': intToString(instance.limit),
    'offset': intToString(instance.offset),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', channelTypeToString(instance.type));
  val['sort'] = channelSortToStringList(instance.sort);
  val['order'] = orderToString(instance.order);
  writeNotNull('org', organizationToString(instance.organization));
  return val;
}
