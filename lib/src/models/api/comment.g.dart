// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CommentImpl',
      json,
      ($checkedConvert) {
        final val = _$CommentImpl(
          commentKey: $checkedConvert('comment_key', (v) => v as String),
          videoId: $checkedConvert('video_id', (v) => v as String?),
          message: $checkedConvert('message', (v) => v as String? ?? ''),
        );
        return val;
      },
      fieldKeyMap: const {'commentKey': 'comment_key', 'videoId': 'video_id'},
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'comment_key': instance.commentKey,
      'video_id': instance.videoId,
      'message': instance.message,
    };
