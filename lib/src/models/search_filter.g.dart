// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_SearchFilterToJson(_$_SearchFilter instance) =>
    <String, dynamic>{
      'search_sort': searchSortToString(instance.sort),
      'lang': languageListToStringList(instance.languages),
      'target': searchTargetToStringList(instance.targets),
      'topic': instance.topics,
      'vch': instance.videoChannels,
      'org': organizationToStringList(instance.organizations),
      'paginated': instance.paginated,
      'offset': intToString(instance.offset),
      'limit': intToString(instance.limit),
    };
