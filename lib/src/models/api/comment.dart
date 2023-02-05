import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

/// A [Comment] class with information retrieved from Holodex.
@freezed
class Comment with _$Comment {
  /// Returns a new [Comment] instance.
  const factory Comment({
    @JsonKey(name: 'comment_key') required String commentKey,
    @JsonKey(name: 'video_id') String? videoId,
    @Default('') String message,
  }) = _Comment;

  /// Returns a new [Comment] instance from a JSON map.
  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
