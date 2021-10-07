// ignore_for_file: constant_identifier_names

import 'package:enum_to_string/enum_to_string.dart';

enum VideoType { stream, clip, all }

String convertVideoTypeToString(VideoType type) => EnumToString.convertToString(type);

VideoType? convertStringToVideoType(String type) => EnumToString.fromString(VideoType.values, type);

enum VideoStatus { new_, upcoming, live, past, missing }

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

convertStringToChannelType(String type) => EnumToString.fromString(ChannelType.values, type);

convertChannelTypeToString(ChannelType type) => EnumToString.convertToString(type);

// Some of the below enums are based off of https://github.com/EBro912/Holodex.NET
// These are using enums instead of classes with static strings so that users can see the allowed values in a field instead of any string

enum Language { all, english, japanese, spanish, chinese, korean, french, indonesian, russian }

String? convertLanguageToString(Language? lang) {
  if (lang == null) {
    return null;
  }
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
  return languageMapToSring[lang];
}

Language? convertStringToLanguage(String lang) {
  // TODO: Implement convertStringToLanguage
  throw UnimplementedError();
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

String convertVideoSearchTypeToString(VideoSearchType searchType) {
  return EnumToString.convertToString(searchType);
}

enum Order { ascending, descending }

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
  HanayoriJoshiryo,
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

String? convertOrganizationToString(Organization? org) {
  if (org == null) {
    return null;
  }
  final organizationMapToString = {
    Organization.inc774: '774inc',
    Organization.AogiriHighschool: 'Aogiri%20Highschool',
    Organization.AtelierLive: 'Atelier%20Live',
    Organization.Chukorara: 'Chukorara',
    Organization.EileneFamily: 'Eilene%20Family',
    Organization.HanayoriJoshiryo: 'Hanayori%20Joshiryo',
    Organization.Hololive: 'Hololive',
    Organization.Independent: 'Independents',
    Organization.Iridori: 'Iridori',
    Organization.KizunaAI: 'Kizuna%20Ai%20Inc.',
    Organization.dotLIVE: '.LIVE',
    Organization.Marbl_s: 'Marbl_s',
    Organization.Masquerade: 'Masquerade',
    Organization.Nijisanji: 'Nijisanji',
    Organization.NoriPro: 'Nori%20Pro',
    Organization.PRISM: 'PRISM',
    Organization.ReACT: 'ReACT',
    Organization.RiotMusic: 'Riot%20Music',
    Organization.Tsunderia: 'Tsunderia',
    Organization.VDimensionCreators: 'V%20Dimension.Creators',
    Organization.VirtualWitchPhenomenon: 'Virtual%20Witch%20Phenomenon',
    Organization.ViViD: 'ViViD',
    Organization.VOMS: 'VOMS',
    Organization.VShojo: 'VShojo',
    Organization.VSpo: 'VSpo',
    Organization.Xencount: "X%20enc'ount",
    Organization.YuniCreate: 'YuniCreate',
  };
  return organizationMapToString[org];
}

Organization? convertStringToOrganization(String org) {
  // TODO: Implement convertStringToOrganization
  throw UnimplementedError();
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