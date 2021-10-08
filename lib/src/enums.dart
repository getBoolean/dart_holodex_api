// ignore_for_file: constant_identifier_names

import 'package:enum_to_string/enum_to_string.dart';

enum VideoType { stream, clip, all }

/// Converts a [VideoType] enum to string.
/// 
/// Returns [String]
String convertVideoTypeToString(VideoType type) => EnumToString.convertToString(type);

/// Converts a string video type to the corresponding VideoType enum.
/// 
/// Returns [null] if it is does not exist, otherwise returns [VideoType]
VideoType? convertStringToVideoType(String type) => EnumToString.fromString(VideoType.values, type);

enum VideoStatus { new_, upcoming, live, past, missing }

/// Converts a [VideoStatus] enum to string.
/// 
/// Returns [String]
String convertVideoStatusToString(VideoStatus status) {
  final statusMapToString = {
    VideoStatus.new_: 'new',
    VideoStatus.upcoming: 'upcoming',
    VideoStatus.live: 'live',
    VideoStatus.past: 'past',
    VideoStatus.missing: 'missing',
  };
  return statusMapToString[status]!;
}

/// Converts a string video status to the corresponding VideoStatus enum.
/// 
/// Returns [null] if it is does not exist, otherwise returns [VideoStatus]
VideoStatus? convertStringToVideoStatus(String status) {
  final stringMapToStatus = {
    'new': VideoStatus.new_,
    'upcoming': VideoStatus.upcoming,
    'live': VideoStatus.live,
    'past': VideoStatus.past,
    'missing': VideoStatus.missing,
  };
  return stringMapToStatus[status];
}

enum ChannelType { vtuber, subber }

/// Converts a [ChannelType] enum to string.
/// 
/// Returns [String]
String convertChannelTypeToString(ChannelType type) => EnumToString.convertToString(type);

/// Converts a string channel type to the corresponding ChannelType enum.
/// 
/// Returns [null] if it is does not exist, otherwise returns [ChannelType]
ChannelType? convertStringToChannelType(String type) => EnumToString.fromString(ChannelType.values, type);

// Some of the below enums are based off of https://github.com/EBro912/Holodex.NET
// These are using enums instead of classes with static strings so that users can see the allowed values in a field instead of any string

enum Language { all, english, japanese, spanish, chinese, korean, french, indonesian, russian }

/// Converts a [Language] enum to string.
/// 
/// Returns [String]
String convertLanguageToString(Language lang) {
  final languageMapToSring = {
    Language.all: 'all',
    Language.english: 'en',
    Language.japanese: 'jp',
    Language.spanish: 'es',
    Language.chinese: 'zh',
    Language.korean: 'ko',
    Language.french: 'fr',
    Language.indonesian: 'id',
    Language.russian: 'ru',
  };
  return languageMapToSring[lang]!;
}

/// Converts a string language code to the corresponding Language enum.
/// 
/// Returns [null] if it is not supported or the language code is incorrect. Otherwise returns [Language]
Language? convertStringToLanguage(String lang) {
  final stringMapToLanguage = {
    'all': Language.all,
    'en': Language.english,
    'jp': Language.japanese,
    'es': Language.spanish,
    'zh': Language.chinese,
    'ko': Language.korean,
    'fr': Language.french,
    'id': Language.indonesian,
    'ru': Language.russian,
  };
  return stringMapToLanguage[lang];
}

enum ChannelSort {
  id,
  name,
  englishName,
  type,
  organization,
  suborg,
  photo,
  banner,
  twitter,
  videoCount,
  subscriberCount,
  viewCount,
  clipCount,
  lang,
  publishedAt,
  inactive,
  description,
}

/// Converts a [ChannelSort] enum to string.
/// 
/// Returns [String]
String convertChannelSortToString(ChannelSort sort) {
  final videoSortMapToString = {
    ChannelSort.organization: 'org',
  };
  return videoSortMapToString[sort]!;
}

enum VideoSort {
  title,
  publishedAt,
  availableAt,
  startScheduled,
  startActual,
  endActual,
}

/// Converts a [VideoSort] enum to string.
/// 
/// Returns [String]
String convertVideoSortToString(VideoSort sort) {
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

/// An enum that provides different search types when retrieving videos.
enum VideoSearchType {
  /// Retrieve clips including a VTuber
  clips,

  /// Retrieve videos uploaded by a Channel
  videos,

  /// Retrieve videos that mention a Channel
  collabs
}

/// Converts a [VideoSearchType] enum to string.
/// 
/// Returns [String]
String convertVideoSearchTypeToString(VideoSearchType searchType) => EnumToString.convertToString(searchType);

enum Order { ascending, descending }

/// Converts a [Order] enum to string.
/// 
/// Returns [String]
String convertOrderToString(Order order) {
  final videoOrderMapToString = {
    Order.ascending: 'asc',
    Order.descending: 'desc',
  };
  // Force not null because map contains all values for [Order]
  return videoOrderMapToString[order]!;
}

enum Organization {
  inc774,
  AogiriHighschool,
  AtelierLive,
  Chukorara,
  EileneFamily,
  Hololive,
  Independent,
  Iridori,
  KizunaAI,
  dotLIVE,
  Marbl_s,
  Masquerade,
  Nijisanji,
  NoriPro,
  PRISM,
  ReACT,
  RiotMusic,
  Tsunderia,
  VDimensionCreators,
  VirtualWitchPhenomenon,
  ViViD,
  VOMS,
  VShojo,
  VSpo,
  Xencount,
  YuniCreate,
}

/// Converts a [Organization] enum to string.
/// 
/// Returns [String]
String? convertOrganizationToString(Organization? org) {
  if (org == null) {
    return null;
  }
  final organizationMapToString = {
    Organization.inc774: '774inc',
    Organization.AogiriHighschool: 'Aogiri Highschool',
    Organization.AtelierLive: 'Atelier Live',
    Organization.Chukorara: 'Chukorara',
    Organization.EileneFamily: 'Eilene Family',
    Organization.Hololive: 'Hololive',
    Organization.Independent: 'Independents',
    Organization.Iridori: 'Iridori',
    Organization.KizunaAI: 'Kizuna Ai Inc.',
    Organization.dotLIVE: '.LIVE',
    Organization.Marbl_s: 'Marbl_s',
    Organization.Masquerade: 'Masquerade',
    Organization.Nijisanji: 'Nijisanji',
    Organization.NoriPro: 'Nori Pro',
    Organization.PRISM: 'PRISM',
    Organization.ReACT: 'ReACT',
    Organization.RiotMusic: 'Riot Music',
    Organization.Tsunderia: 'Tsunderia',
    Organization.VDimensionCreators: 'V Dimension.Creators',
    Organization.VirtualWitchPhenomenon: 'Virtual Witch Phenomenon',
    Organization.ViViD: 'ViViD',
    Organization.VOMS: 'VOMS',
    Organization.VShojo: 'VShojo',
    Organization.VSpo: 'VSpo',
    Organization.Xencount: "X enc'ount",
    Organization.YuniCreate: 'YuniCreate',
  };
  return organizationMapToString[org];
}

/// Converts a string organization name to the corresponding Orgnization enum.
/// 
/// Returns [null] if it is does not exist or was incorrectly typed, otherwise returns [Organization]
Organization? convertStringToOrganization(String org) {
  final stringMapToOrganization = {
    '774inc': Organization.inc774,
    'Aogiri Highschool': Organization.AogiriHighschool,
    'Atelier Live': Organization.AtelierLive,
    'Chukorara': Organization.Chukorara,
    'Eilene Family': Organization.EileneFamily,
    'Hololive': Organization.Hololive,
    'Independents': Organization.Independent,
    'Iridori': Organization.Iridori,
    'Kizuna Ai Inc.': Organization.KizunaAI,
    '.LIVE': Organization.dotLIVE,
    'Marbl_s': Organization.Marbl_s,
    'Masquerade': Organization.Masquerade,
    'Nijisanji': Organization.Nijisanji,
    'Nori Pro': Organization.NoriPro,
    'PRISM': Organization.PRISM,
    'ReACT': Organization.ReACT,
    'Riot Music': Organization.RiotMusic,
    'Tsunderia': Organization.Tsunderia,
    'V Dimension.Creators': Organization.VDimensionCreators,
    'Virtual Witch Phenomenon': Organization.VirtualWitchPhenomenon,
    'ViViD': Organization.ViViD,
    'VOMS': Organization.VOMS,
    'VShojo': Organization.VShojo,
    'VSpo': Organization.VSpo,
    "X enc'ount": Organization.Xencount,
    'YuniCreate': Organization.YuniCreate,
  };
  return stringMapToOrganization[org];
}

/// An enum which contains strings that allow extra data to be returned when requesting videos.
enum Includes {
  /// Include clips using the videos.
  clips,

  /// Include videos that refer to other videos.
  refers,

  /// Include sources for videos created by Subbers.
  sources,

  /// Include simulcast videos alongside the videos.
  simulcasts,

  /// Include channels that are mentioned.
  mentions,

  /// Include video descriptions.
  descripiton,

  /// Include live streams.
  liveInfo,

  /// Include channel stats.
  channelStats,

  /// Include any songs used in the videos.
  songs
}

/// Converts a [Includes] enum to string.
/// 
/// Returns [String]
String convertIncludesToString(Includes i) {
  final includesMapToString = {
    Includes.clips: 'clips',
    Includes.refers: 'refers',
    Includes.sources: 'sources',
    Includes.simulcasts: 'simulcasts',
    Includes.mentions: 'mentions',
    Includes.descripiton: 'descripiton',
    Includes.liveInfo: 'live_info',
    Includes.channelStats: 'channel_stats',
    Includes.songs: 'songs',
  };
  // Force not null because map contains all values for [Includes]
  return includesMapToString[i]!;
}

enum SearchSort { oldest, newest }

String convertSearchSortToString(SearchSort sort) {
  return EnumToString.convertToString(sort);
}

enum SearchTarget { clip, stream }

String convertSearchTargetToString(SearchTarget target) {
  return EnumToString.convertToString(target);
}
