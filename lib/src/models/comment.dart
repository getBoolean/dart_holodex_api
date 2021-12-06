part of dart_holodex_api.models;

class Comment extends Equatable {
  final String commentKey;
  final String? videoId;
  final String message;

  /// Returns a new [Comment] instance.
  Comment({
    required this.commentKey,
    this.videoId,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return {
      'comment_key': commentKey,
      'video_id': videoId,
      'message': message,
    };
  }

  factory Comment.fromMap(Map<String, dynamic> map) {
    return Comment(
      commentKey: map['comment_key'],
      videoId: map['video_id'],
      message: map['message'],
    );
  }

  Comment copyWith({
    String? commentKey,
    String? videoId,
    String? message,
  }) {
    return Comment(
      commentKey: commentKey ?? this.commentKey,
      videoId: videoId ?? this.videoId,
      message: message ?? this.message,
    );
  }

  String toJson() => json.encode(toMap());

  factory Comment.fromJson(String source) =>
      Comment.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      'commentKey: $commentKey',
      'videoId: $videoId',
      'message: $message',
    ];
  }
}
