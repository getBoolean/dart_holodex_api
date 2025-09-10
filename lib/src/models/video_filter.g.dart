// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'video_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$VideoFilterToJson(_VideoFilter instance) =>
    <String, dynamic>{
      'channel_id': ?instance.channelId,
      'id': ?nullStringListIfEmpty(instance.ids),
      'include': ?concatIncludesList(instance.includes),
      'lang': concatLanguageListWithDefault(instance.languages),
      'limit': intToString(instance.limit),
      'max_upcoming_hours': ?intToStringNullable(instance.maxUpcomingHours),
      'mentioned_channel_id': ?instance.mentionedChannelId,
      'offset': intToString(instance.offset),
      'order': orderToString(instance.order),
      'org': ?organizationToString(instance.organization),
      'paginated': paginatedToString(instance.paginated),
      'sort': ?concatVideoSortList(instance.sort),
      'status': ?concatVideoStatusList(instance.status),
      'topic': ?instance.topic,
      'type': ?videoTypeToString(instance.type),
    };
