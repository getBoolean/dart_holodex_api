// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comment _$$_CommentFromJson(Map<String, dynamic> json) => _$_Comment(
      commentKey: json['comment_key'] as String,
      videoId: json['video_id'] as String?,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'comment_key': instance.commentKey,
      'video_id': instance.videoId,
      'message': instance.message,
    };
