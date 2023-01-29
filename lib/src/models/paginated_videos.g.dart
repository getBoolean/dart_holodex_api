// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_videos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginatedResult _$$_PaginatedResultFromJson(Map<String, dynamic> json) =>
    _$_PaginatedResult(
      total: json['total'] as int?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => VideoFull.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      paginated: json['paginated'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PaginatedResultToJson(_$_PaginatedResult instance) =>
    <String, dynamic>{
      'total': instance.total,
      'items': instance.items,
      'paginated': instance.paginated,
    };
