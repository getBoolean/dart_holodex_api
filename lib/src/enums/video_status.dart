import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';

/// The status of a video.
enum VideoStatus with EnumWithCode {
  /// The video is new.
  new_('new'),

  /// The livestream/premier has not started yet.
  upcoming('upcoming'),

  /// The livestream/premier is currently ongoing.
  live('live'),

  /// The livestream/premier has ended.
  past('past'),

  /// The status is missing.
  missing('missing');

  /// The code used by Holodex
  @override
  final String code;

  /// Returns a new [VideoStatus] instance.
  const VideoStatus(this.code);

  /// Returns a new [VideoStatus] instance from a JSON string.
  static String toJsonStatic(VideoStatus status) => status.code;

  /// Returns a new [VideoStatus] instance from a JSON string.
  static VideoStatus fromJson(String? status) =>
      VideoStatus.values.byCode(status ?? '') ?? VideoStatus.missing;
}
