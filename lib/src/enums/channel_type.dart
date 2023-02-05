import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';

/// The type of a channel.
enum ChannelType with EnumWithCode {
  /// A channel that is a vtuber.
  vtuber,

  /// A channel that is a subber.
  subber;

  /// The name of the channel type.
  const ChannelType();

  /// Alias for [name]
  @override
  String get code => name;
}
