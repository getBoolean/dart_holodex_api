import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';

enum SearchTarget with EnumWithCode {
  clip('clip'),
  stream('stream');

  /// The code used by Holodex
  @override
  final String code;
  const SearchTarget(this.code);
}
