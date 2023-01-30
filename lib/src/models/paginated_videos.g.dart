// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_videos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginatedVideos _$$_PaginatedVideosFromJson(Map<String, dynamic> json) =>
    _$_PaginatedVideos(
      total: _parseTotal(json['total']),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => VideoFull.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      paginated: json['paginated'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PaginatedVideosToJson(_$_PaginatedVideos instance) =>
    <String, dynamic>{
      'total': instance.total,
      'items': instance.items,
      'paginated': instance.paginated,
    };
