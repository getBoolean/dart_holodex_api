import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';

/// An enum that provides different search types when retrieving videos.
enum VideoSearchType with EnumWithCode {
  /// Retrieve clips including a VTuber
  clips,

  /// Retrieve videos uploaded by a Channel
  videos,

  /// Retrieve videos that mention a Channel
  collabs;

  /// The code used by Holodex
  @override
  String get code => name;

  /// Returns a [VideoSearchType] from a [code].
  const VideoSearchType();
}
