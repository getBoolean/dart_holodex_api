// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'channel_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ChannelFilterToJson(_ChannelFilter instance) =>
    <String, dynamic>{
      'lang': concatLanguageListWithDefault(instance.languages),
      'limit': intToString(instance.limit),
      'offset': intToString(instance.offset),
      'type': ?channelTypeToString(instance.type),
      'sort': ?channelSortToStringList(instance.sort),
      'order': orderToString(instance.order),
      'org': ?organizationToString(instance.organization),
    };
