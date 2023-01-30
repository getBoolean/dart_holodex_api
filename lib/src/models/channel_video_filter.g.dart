// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_video_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChannelVideoFilter _$$_ChannelVideoFilterFromJson(
        Map<String, dynamic> json) =>
    _$_ChannelVideoFilter(
      includes: (json['includes'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$IncludesEnumMap, e))
              .toList() ??
          const [],
      languages: json['languages'] == null
          ? const []
          : stringListToLanguageList(json['languages'] as List<String>),
      limit: json['limit'] as int? ?? 25,
      offset: json['offset'] as int? ?? 0,
      paginated: json['paginated'] as bool? ?? true,
    );

Map<String, dynamic> _$$_ChannelVideoFilterToJson(
        _$_ChannelVideoFilter instance) =>
    <String, dynamic>{
      'includes': instance.includes.map((e) => _$IncludesEnumMap[e]!).toList(),
      'languages': languageListToStringList(instance.languages),
      'limit': instance.limit,
      'offset': instance.offset,
      'paginated': instance.paginated,
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
