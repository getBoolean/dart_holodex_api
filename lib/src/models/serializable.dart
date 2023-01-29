import 'dart:convert';

import 'package:dart_holodex_api/src/models/api/video_full.dart';
import 'package:dart_holodex_api/src/models/paginated_videos.dart';
import 'package:dart_holodex_api/src/models/api/video.dart';
import 'package:equatable/equatable.dart';

abstract class Serializable extends Equatable {
  const Serializable();

  String toJson();

  Map<String, dynamic> toMap();

  static T fromMap<T extends Serializable>(Map<String, dynamic> map) {
    switch (T) {
      case Video:
        return Video.fromJson(map) as T;
      case VideoFull:
        return VideoFull.fromJson(map) as T;
      case PaginatedVideos:
        return PaginatedVideos.fromJson(map) as T;
      default:
        throw Exception('Unsupported type given to Serializable.fromMap');
    }
  }

  static T fromJson<T>(String source) {
    final json = jsonDecode(source);
    switch (T) {
      case Video:
        return Video.fromJson(json) as T;
      case VideoFull:
        return VideoFull.fromJson(json) as T;
      case PaginatedVideos:
        return PaginatedVideos.fromJson(json) as T;
      default:
        throw Exception('Unsupported type given to Serializable.fromJson');
    }
  }
}
