import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';

/// An enum which contains strings that allow extra data to be returned when requesting videos.
enum Includes with EnumWithCode {
  /// Include clips using the videos.
  clips('clips'),

  /// Include videos that refer to other videos.
  refers('refers'),

  /// Include sources for videos created by Subbers.
  sources('sources'),

  /// Include simulcast videos alongside the videos.
  simulcasts('simulcasts'),

  /// Include channels that are mentioned.
  mentions('mentions'),

  /// Include video descriptions.
  description('description'),

  /// Include live streams.
  liveInfo('live_info'),

  /// Include channel stats.
  channelStats('channel_stats'),

  /// Include any songs used in the videos.
  songs('songs');

  /// The code used by Holodex
  @override
  final String code;

  /// Creates a new [Includes] enum.
  const Includes(this.code);
}
