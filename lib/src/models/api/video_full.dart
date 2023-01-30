import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';
import 'package:dart_holodex_api/src/enums/video_status.dart';
import 'package:dart_holodex_api/src/enums/video_type.dart';
import 'package:dart_holodex_api/src/models/api/channel.dart';
import 'package:dart_holodex_api/src/models/api/channel_min.dart';
import 'package:dart_holodex_api/src/models/api/comment.dart';
import 'package:dart_holodex_api/src/models/api/song.dart';
import 'package:dart_holodex_api/src/models/api/video.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_full.freezed.dart';
part 'video_full.g.dart';

VideoType _parseVideoType(String? type) {
  return VideoType.values.byCode(type ?? '') ?? VideoType.unknown;
}

/// An extended [Video] class with [comments], [sources], [refers],
/// [simulcasts], [mentions], and [songs] fields.
@freezed
class VideoFull with _$VideoFull {
  const VideoFull._();

  /// Returns a new [VideoFull] instance.
  const factory VideoFull({
    required String id,
    required String title,
    @JsonKey(fromJson: _parseVideoType) @Default(VideoType.all) VideoType type,

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
    @Default([]) List<Comment> comments,
    @Default([]) List<Video> recommendations,
    @Default([]) List<Video> clips,
    @Default([]) List<Video> sources,
    @Default([]) List<Video> refers,
    @Default([]) List<Video> simulcasts,
    @Default([]) List<Channel> mentions,
    @Default([]) List<Song> songs,
  }) = _VideoFull;

  factory VideoFull.fromJson(Map<String, dynamic> json) =>
      _$VideoFullFromJson(json);

  Video toVideo() => Video(
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
