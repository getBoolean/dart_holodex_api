// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'paginated_videos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginatedVideos _$$_PaginatedVideosFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_PaginatedVideos',
      json,
      ($checkedConvert) {
        final val = _$_PaginatedVideos(
          total: $checkedConvert('total', (v) => _parseTotal(v)),
          items: $checkedConvert(
              'items',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map(
                          (e) => VideoFull.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          paginated: $checkedConvert('paginated', (v) => v as bool? ?? false),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_PaginatedVideosToJson(_$_PaginatedVideos instance) =>
    <String, dynamic>{
      'total': instance.total,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'paginated': instance.paginated,
    };
