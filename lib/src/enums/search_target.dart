import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';

/// The types of videos to search for.
enum SearchTarget with EnumWithCode {
  /// Search for clips only
  clip('clip'),

  /// Search for streams only
  stream('stream');

  /// The code used by Holodex
  @override
  final String code;

  /// Returns a new [SearchTarget] instance.
  const SearchTarget(this.code);
}
