import 'dart:convert';

import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:equatable/equatable.dart';

class VideoMetadata extends Equatable {
  final VideoFull video;
  final List<Comment>? comments;
  final List<Video>? recommendations;

  const VideoMetadata({
    required this.video,
    this.comments,
    this.recommendations,
  });

  VideoMetadata copyWith({
    VideoFull? video,
    List<Comment>? comments,
    List<Video>? recommendations,
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
      'recommendations':
          recommendations?.map((video) => video.toMap()).toList(),
    };
  }

  factory VideoMetadata.fromMap(Map<String, dynamic> map) {
    return VideoMetadata(
      video: VideoFull.fromMap(map['video']),
      comments: List<Comment>.from(
          map['comments']?.map((commentMap) => Comment.fromMap(commentMap))),
      recommendations: List<Video>.from(
          map['recommendations']?.map((videoMap) => Video.fromMap(videoMap))),
    );
  }

  String toJson() => json.encode(toMap());

  factory VideoMetadata.fromJson(String source) =>
      VideoMetadata.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      'video: $video',
      'comments: $comments',
      'recommendations: $recommendations',
    ];
  }
}
