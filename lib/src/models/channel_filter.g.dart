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
  val['sort'] = instance.sort.map((e) => _$ChannelSortEnumMap[e]!).toList();
  val['order'] = _$OrderEnumMap[instance.order]!;
  writeNotNull('org', organizationToString(instance.organization));
  return val;
}

const _$ChannelSortEnumMap = {
  ChannelSort.id: 'id',
  ChannelSort.name: 'name',
  ChannelSort.englishName: 'englishName',
  ChannelSort.type: 'type',
  ChannelSort.organization: 'organization',
  ChannelSort.suborg: 'suborg',
  ChannelSort.photo: 'photo',
  ChannelSort.banner: 'banner',
  ChannelSort.twitter: 'twitter',
  ChannelSort.videoCount: 'videoCount',
  ChannelSort.subscriberCount: 'subscriberCount',
  ChannelSort.viewCount: 'viewCount',
  ChannelSort.clipCount: 'clipCount',
  ChannelSort.lang: 'lang',
  ChannelSort.publishedAt: 'publishedAt',
  ChannelSort.inactive: 'inactive',
  ChannelSort.description: 'description',
};

const _$OrderEnumMap = {
  Order.ascending: 'ascending',
  Order.descending: 'descending',
};
