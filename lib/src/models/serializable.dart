part of dart_holodex_api.models;

abstract class Serializable extends Equatable {
  const Serializable();

  String toJson();

  Map<String, dynamic> toMap();

  static T fromMap<T extends Serializable>(Map<String, dynamic> map) {
    switch (T) {
      case Video:
        return Video.fromMap(map) as T;
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
      case VideoLiveInfo:
        return VideoLiveInfo.fromJson(source) as T;
      case VideoWithComments:
        return VideoWithComments.fromJson(source) as T;
      default:
        throw Exception('Unsupported type given to Serializable.fromJson');
    }
  }
}
