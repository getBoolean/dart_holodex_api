import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';

/// Options to sort a lsit of videos by
enum VideoSort with EnumWithCode {
  /// Sort by the video's title
  title('title'),

  /// Sort by the video's publish date
  publishedAt('published_at'),

  /// Sort by the video's available date
  availableAt('available_at'),

  /// Sort by the video's scheduled start date
  startScheduled('start_scheduled'),

  /// Sort by the video's actual start date
  startActual('start_actual'),

  /// Sort by the video's actual end date
  endActual('end_actual');

  /// The code used by Holodex
  @override
  final String code;

  /// Creates a new [VideoSort]
  const VideoSort(this.code);
}
