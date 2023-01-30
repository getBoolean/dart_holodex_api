// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_video_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_ChannelVideoFilterToJson(
        _$_ChannelVideoFilter instance) =>
    <String, dynamic>{
      'includes': instance.includes.map((e) => _$IncludesEnumMap[e]!).toList(),
      'languages': concatLanguageList(instance.languages),
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
