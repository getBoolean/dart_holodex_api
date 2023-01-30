// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_SearchFilterToJson(_$_SearchFilter instance) =>
    <String, dynamic>{
      'search_sort': _$SearchSortEnumMap[instance.sort]!,
      'lang': concatLanguageListWithDefault(instance.languages),
      'target': instance.targets.map((e) => _$SearchTargetEnumMap[e]!).toList(),
      'topic': instance.topics,
      'vch': instance.videoChannels,
      'org': concatOrganizationList(instance.organizations),
      'paginated': paginatedToString(instance.paginated),
      'offset': intToString(instance.offset),
      'limit': intToString(instance.limit),
    };

const _$SearchSortEnumMap = {
  SearchSort.oldest: 'oldest',
  SearchSort.newest: 'newest',
};

const _$SearchTargetEnumMap = {
  SearchTarget.clip: 'clip',
  SearchTarget.stream: 'stream',
};
