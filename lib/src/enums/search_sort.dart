import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';

/// The sort order of a search.
enum SearchSort with EnumWithCode {
  /// Sort by relevance
  oldest,

  /// Sort by newest
  newest;

  /// The code used by Holodex
  @override
  String get code => name;

  /// Returns a [SearchSort]
  const SearchSort();
}
