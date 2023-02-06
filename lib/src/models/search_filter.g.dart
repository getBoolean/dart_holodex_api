// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'search_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_SearchFilterToJson(_$_SearchFilter instance) =>
    <String, dynamic>{
      'sort': searchSortToString(instance.sort),
      'lang': languageListToStringList(instance.languages),
      'target': searchTargetToStringList(instance.targets),
      'topic': instance.topics,
      'vch': instance.videoChannels,
      'org': organizationListToStringList(instance.organizations),
      'paginated': instance.paginated,
      'offset': intToString(instance.offset),
      'limit': intToString(instance.limit),
    };
