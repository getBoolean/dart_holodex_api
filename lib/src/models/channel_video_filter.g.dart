// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'channel_video_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ChannelVideoFilterToJson(_ChannelVideoFilter instance) =>
    <String, dynamic>{
      'include': ?concatIncludesList(instance.includes),
      'lang': concatLanguageListWithDefault(instance.languages),
      'limit': intToString(instance.limit),
      'offset': intToString(instance.offset),
      'paginated': paginatedToString(instance.paginated),
    };
