// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

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
  writeNotNull('sort', channelSortToStringList(instance.sort));
  val['order'] = orderToString(instance.order);
  writeNotNull('org', organizationToString(instance.organization));
  return val;
}
