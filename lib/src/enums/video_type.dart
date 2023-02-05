import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';

/// The type of a video.
enum VideoType with EnumWithCode {
  /// A YouTube stream
  stream,

  /// A YouTube clip of a stream
  clip;

  /// The code used by Holodex
  @override
  String get code => name;

  /// Returns a [VideoType].
  const VideoType();
}
