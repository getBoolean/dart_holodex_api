import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';

/// Options to sort a lsit of videos by
enum VideoSort with EnumWithCode {
  title('title'),
  publishedAt('published_at'),
  availableAt('available_at'),
  startScheduled('start_scheduled'),
  startActual('start_actual'),
  endActual('end_actual');

  /// The code used by Holodex
  @override
  final String code;
  const VideoSort(this.code);
}