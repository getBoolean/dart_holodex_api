import 'package:dart_holodex_api/dart_holodex_api.dart';

abstract class EnumUtil {
  const EnumUtil._();

  /// Converts a [SearchTarget] enum to string.
  ///
  /// Returns [String]
  static String convertSearchTargetToString(SearchTarget target) {
    return target.name;
  }

  /// Converts a [SearchSort] enum to string.
  ///
  /// Returns [String]
  static String convertSearchSortToString(SearchSort sort) {
    return sort.name;
  }

  /// Converts a [Includes] enum to string.
  ///
  /// Returns [String]
  static String convertIncludesToString(Includes i) {
    final includesMapToString = {
      Includes.clips: 'clips',
      Includes.refers: 'refers',
      Includes.sources: 'sources',
      Includes.simulcasts: 'simulcasts',
      Includes.mentions: 'mentions',
      Includes.description: 'description',
      Includes.liveInfo: 'live_info',
      Includes.channelStats: 'channel_stats',
      Includes.songs: 'songs',
    };
    // Force not null because map contains all values for [Includes]
    return includesMapToString[i]!;
  }

  /// Converts a [ChannelSort] enum to string.
  ///
  /// Returns [String]
  static String convertChannelSortToString(ChannelSort sort) {
    final videoSortMapToString = {
      ChannelSort.organization: 'org',
    };
    return videoSortMapToString[sort]!;
  }

  /// Converts a [ChannelType] enum to string.
  ///
  /// Returns [String]
  static String convertChannelTypeToString(ChannelType type) => type.name;

  /// Converts a string channel type to the corresponding [ChannelType] enum.
  ///
  /// Returns `null` if it is does not exist, otherwise returns [ChannelType]
  static ChannelType? convertStringToChannelType(String type) =>
      ChannelType.values.byName(type);

  /// Converts a [Language] enum to string.
  ///
  /// Returns [String]
  static String convertLanguageToString(Language lang) {
    return lang.name;
  }

  /// Converts a string language code to the corresponding [Language] enum.
  ///
  /// Returns `null` if it is not supported or the language code is incorrect. Otherwise returns [Language]
  static Language? convertStringToLanguage(String lang) {
    return Language.values.byName(lang);
  }

  /// Converts a [VideoStatus] enum to string.
  ///
  /// Returns [String]
  static String convertVideoStatusToString(VideoStatus status) {
    final statusMapToString = {
      VideoStatus.new_: 'new',
      VideoStatus.upcoming: 'upcoming',
      VideoStatus.live: 'live',
      VideoStatus.past: 'past',
      VideoStatus.missing: 'missing',
    };
    return statusMapToString[status]!;
  }

  /// Converts a string video status to the corresponding [VideoStatus] enum.
  ///
  /// Returns `null` if it is does not exist, otherwise returns [VideoStatus]
  static VideoStatus? convertStringToVideoStatus(String status) {
    final stringMapToStatus = {
      'new': VideoStatus.new_,
      'upcoming': VideoStatus.upcoming,
      'live': VideoStatus.live,
      'past': VideoStatus.past,
      'missing': VideoStatus.missing,
    };
    return stringMapToStatus[status];
  }

  /// Converts a [VideoType] enum to string.
  ///
  /// Returns [String]
  static String convertVideoTypeToString(VideoType type) => type.name;

  /// Converts a string video type to the corresponding [VideoType] enum.
  ///
  /// Returns `null` if it is does not exist, otherwise returns [VideoType]
  static VideoType? convertStringToVideoType(String type) =>
      VideoType.values.byName(type);

  /// Converts a [Order] enum to string.
  ///
  /// Returns [String]
  static String convertOrderToString(Order order) {
    final videoOrderMapToString = {
      Order.ascending: 'asc',
      Order.descending: 'desc',
    };
    // Force not null because map contains all values for [Order]
    return videoOrderMapToString[order]!;
  }

  /// Converts a [VideoSearchType] enum to string.
  ///
  /// Returns [String]
  static String convertVideoSearchTypeToString(VideoSearchType searchType) =>
      searchType.name;

  /// Converts a [VideoSort] enum to string.
  ///
  /// Returns [String]
  static String convertVideoSortToString(VideoSort sort) {
    final videoSortMapToString = {
      VideoSort.title: 'title',
      VideoSort.publishedAt: 'published_at',
      VideoSort.availableAt: 'available_at',
      VideoSort.startScheduled: 'start_scheduled',
      VideoSort.startActual: 'start_actual',
      VideoSort.endActual: 'end_actual',
    };
    // Force not null because map contains all values for [VideoSort]
    return videoSortMapToString[sort]!;
  }
}