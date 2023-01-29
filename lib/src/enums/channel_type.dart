import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';

enum ChannelType with EnumWithCode {
  vtuber,
  subber;

  const ChannelType();

  /// Alias for [name]
  @override
  String get code => name;
}
