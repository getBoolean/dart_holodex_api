import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';

enum VideoStatus with EnumWithCode {
  new_('new'),
  upcoming('upcoming'),
  live('live'),
  past('past'),
  missing('missing');

  /// The code used by Holodex
  @override
  final String code;
  const VideoStatus(this.code);

  static String toJsonStatic(VideoStatus status) => status.code;

  static VideoStatus fromJson(String? status) =>
      VideoStatus.values.byCode(status ?? '') ?? VideoStatus.missing;
}
