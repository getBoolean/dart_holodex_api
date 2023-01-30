import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';

enum VideoType with EnumWithCode {
  stream,
  clip;

  /// The code used by Holodex
  @override
  String get code => name;
  const VideoType();
}
