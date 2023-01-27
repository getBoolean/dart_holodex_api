import 'package:dart_holodex_api/src/models/api/video_with_comments.dart';
import 'package:dart_holodex_api/src/models/paginated_result.dart';
import 'package:dart_holodex_api/src/models/api/video.dart';
import 'package:dart_holodex_api/src/models/api/video_full.dart';
import 'package:dart_holodex_api/src/models/api/video_live_info.dart';
import 'package:equatable/equatable.dart';

abstract class Serializable extends Equatable {
  const Serializable();

  String toJson();

  Map<String, dynamic> toMap();

  static T fromMap<T extends Serializable>(Map<String, dynamic> map) {
    switch (T) {
      case Video:
        return Video.fromMap(map) as T;
      case PaginatedResult<VideoWithComments>:
        return PaginatedResult<VideoWithComments>.fromMap(map) as T;
      case PaginatedResult<VideoFull>:
        return PaginatedResult<VideoFull>.fromMap(map) as T;
      case PaginatedResult:
        return PaginatedResult.fromMap(map) as T;
      case VideoLiveInfo:
        return VideoLiveInfo.fromMap(map) as T;
      case VideoWithComments:
        return VideoWithComments.fromMap(map) as T;
      default:
        throw Exception('Unsupported type given to Serializable.fromMap');
    }
  }

  static T fromJson<T>(String source) {
    switch (T) {
      case Video:
        return Video.fromJson(source) as T;
      case PaginatedResult<VideoWithComments>:
        return PaginatedResult<VideoWithComments>.fromJson(source) as T;
      case PaginatedResult<VideoFull>:
        return PaginatedResult<VideoFull>.fromJson(source) as T;
      case PaginatedResult:
        return PaginatedResult.fromJson(source) as T;
      case VideoLiveInfo:
        return VideoLiveInfo.fromJson(source) as T;
      case VideoWithComments:
        return VideoWithComments.fromJson(source) as T;
      default:
        throw Exception('Unsupported type given to Serializable.fromJson');
    }
  }
}
