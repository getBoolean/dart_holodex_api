// ignore_for_file: invalid_annotation_target

import 'package:dart_holodex_api/src/enums/video_status.dart';
import 'package:dart_holodex_api/src/enums/video_type.dart';
import 'package:dart_holodex_api/src/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video.freezed.dart';
part 'video.g.dart';

@freezed

/// A [Video] class with information retrieved from Holodex.
class Video with _$Video {
  const Video._();

  /// Returns a new [Video] instance.
  const factory Video({
    required String id,
    required String title,
    VideoType? type,

    /// corresponds to a Topic ID, Videos of type clip cannot not have topic. Streams may or may not have topic.
    @JsonKey(name: 'topic_id') String? topicId,
    @JsonKey(name: 'published_at') String? publishedAt,

    /// Takes on the first non-null value of end_actual, start_actual, start_scheduled, or published_at
    @JsonKey(name: 'available_at') required String availableAt,

    /// Duration of the video in seconds
    int? duration,
    @JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic)
        required VideoStatus status,

    /// Included when includes contains 'live_info'
    @JsonKey(name: 'start_scheduled') String? startScheduled,

    /// Included when includes contains 'live_info'
    @JsonKey(name: 'start_actual') String? startActual,

    /// Included when includes contains 'live_info'
    @JsonKey(name: 'end_actual') String? endActual,

    /// Included when includes contains 'live_info'
    @JsonKey(name: 'live_viewers') int? liveViewers,

    /// Included when includes contains 'description'
    String? description,

    /// Number of tagged songs for this video
    int? songcount,
    @JsonKey(name: 'channel_id') String? channelId,
    ChannelMin? channel,
    @JsonKey(name: 'lang') String? language,
  }) = _Video;

  /// Returns a new [Video] instance from a JSON object.
  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);

  /// Converts this [Video] instance to a [VideoFull] instance.
  VideoFull toVideoFull() => VideoFull(
        id: id,
        title: title,
        type: type,
        topicId: topicId,
        publishedAt: publishedAt,
        availableAt: availableAt,
        duration: duration,
        status: status,
        startScheduled: startScheduled,
        startActual: startActual,
        endActual: endActual,
        liveViewers: liveViewers,
        description: description,
        songcount: songcount,
        channelId: channelId,
        channel: channel,
        language: language,
      );
}
