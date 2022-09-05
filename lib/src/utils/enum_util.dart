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
    return i.name;
  }

  /// Converts a [ChannelSort] enum to string.
  ///
  /// Returns [String]
  static String convertChannelSortToString(ChannelSort sort) {
    return sort.code;
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
    return lang.toLanguageTag();
  }

  /// Converts a string language code to the corresponding [Language] enum.
  ///
  /// Returns `null` if it is not supported or the language code is incorrect. Otherwise returns [Language]
  static Language? convertStringToLanguage(String lang) {
    return Language.values.byTag(lang);
  }

  /// Converts a [VideoStatus] enum to string.
  ///
  /// Returns [String]
  static String convertVideoStatusToString(VideoStatus status) {
    return status.code;
  }

  /// Converts a string video status to the corresponding [VideoStatus] enum.
  ///
  /// Returns `null` if it is does not exist, otherwise returns [VideoStatus]
  static VideoStatus? convertStringToVideoStatus(String status) {
    return VideoStatus.values.byCode(status);
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
    return order.code;
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
    return sort.code;
  }
}
