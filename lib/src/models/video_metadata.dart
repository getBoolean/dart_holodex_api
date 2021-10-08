part of dart_holodex_api.models;

class VideoMetadata extends Equatable {
  final VideoFull video;
  final List<Comment>? comments;
  final List<VideoWithChannel>? recommendations;
  VideoMetadata({
    required this.video,
    this.comments,
    this.recommendations,
  });

  VideoMetadata copyWith({
    VideoFull? video,
    List<Comment>? comments,
    List<VideoWithChannel>? recommendations,
  }) {
    return VideoMetadata(
      video: video ?? this.video,
      comments: comments ?? this.comments,
      recommendations: recommendations ?? this.recommendations,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'video': video.toMap(),
      'comments': comments?.map((comment) => comment.toMap()).toList(),
      'recommendations': recommendations?.map((video) => video.toMap()).toList(),
    };
  }

  factory VideoMetadata.fromMap(Map<String, dynamic> map) {
    return VideoMetadata(
      video: VideoFull.fromMap(map['video']),
      comments: List<Comment>.from(map['comments']?.map((commentMap) => Comment.fromMap(commentMap))),
      recommendations: List<VideoWithChannel>.from(map['recommendations']?.map((videoMap) => VideoWithChannel.fromMap(videoMap))),
    );
  }

  String toJson() => json.encode(toMap());

  factory VideoMetadata.fromJson(String source) => VideoMetadata.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [video, comments ?? 'Comments not included', recommendations ?? 'Recommendations not included'];
}
