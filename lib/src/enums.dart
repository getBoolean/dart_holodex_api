// ignore_for_file: constant_identifier_names
// ignore_for_file: non_constant_identifier_names

enum VideoType { stream, clip, all }

enum VideoStatus { new_, upcoming, live, past, missing }

enum ChannelType { vtuber, subber }

// Some of the below enums are based off of https://github.com/EBro912/Holodex.NET
// These are using enums instead of classes with static strings so that users can see the allowed values in a field instead of any string

/// Holodex uses the BCP47 standard for language codes
///
/// TODO(@getBoolean): Refactor this to follow the BCP47 standard
enum Language {
  all('all'),
  english('en'),
  japanese('jp'),
  spanish('es'),
  chinese('zh'),
  korean('ko'),
  french('fr'),
  indonesian('id'),
  russian('ru');

  /// The language code used by Holodex
  final String code;
  const Language(this.code);

  @override
  String toString() => code;
}

/// Options to sort a list of channels by
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

/// Options to sort a lsit of videos by
enum VideoSort {
  title,
  publishedAt,
  availableAt,
  startScheduled,
  startActual,
  endActual,
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

/// An enum that allows a list to be sorted alphabetically
enum Order {
  /// Sorts the list in ascending order (A-Z)
  ascending,

  /// Sorts the list in descending order (Z-A)
  descending,
}

/// Organizations supported by Holodex.
///
/// Make a Pull Request or GitHub issue to add more organizations.
enum Organization {
  dotLIVE('.LIVE'),
  inc774('774inc'),
  AogiriHighschool('Aogiri Highschool'),
  AtelierLive('Atelier Live'),
  AxelV('Axel-V'),
  AkioAIR('AkioAIR'),
  Aetheria('Aetheria'),
  Chukorara('Chukorara'),
  CloudHorizon('Cloud Horizon'),
  EileneFamily('Eilene Family'),
  Emoechi('Emoechi'),
  GuildCQ('GuildCQ'),
  Hololive('Hololive'),
  HoshimeguriGakuen('Hoshimeguri Gakuen'),
  HLive('H.Live'),
  Independents('Independents'),
  Iridori('Iridori'),
  idolCorp('Idol Corp'),
  KAMITSUBAKI('KAMITSUBAKI'),
  KizunaAI('Kizuna Ai Inc.'),
  KAWAII_MUSIC('KAWAII MUSIC'),
  KEMOMIMI_REFLE('KEMOMIMI REFLE'),
  KemonoFriends('Kemono Friends'),
  LaPecheParty('La Peche Party'),
  Marbl_s('Marbl_s'),
  Masquerade('Masquerade'),
  MAHA5('MAHA5'),
  MyHoloTV('MyHolo TV'),
  Nijisanji('Nijisanji'),
  NoriPro('Nori Pro'),
  NIJIGEN('NIJIGEN'),
  NeoPorte('Neo-Porte'),
  ProductionKawaii('Production Kawaii'),
  Polygon('Polygon'),
  PhaseConnect('Phase Connect'),
  PixelaProject('Pixela Project'),
  PRISM('PRISM'),
  ProPro('ProPro'),
  PinkPunkPro('Pink Punk Pro'),
  RiotMusic('Riot Music'),
  ReACT('ReACT'),
  ReMemories('ReMemories'),
  SleepMonster('Sleep Monster'),
  SquareLive('Square Live'),
  Snacknili('Snacknili'),
  Shinsougumi('Shinsougumi'),
  Tsunderia('Tsunderia'),
  TwitchIndependents('Twitch Independents'),
  UnrealNightGirls('Unreal Night Girls'),
  VDimensionCreators('V Dimension.Creators'),
  VOICE_ORE('VOICE-ORE'),
  ViViD('ViViD'),
  VOMS('VOMS'),
  VShojo('VShojo'),
  VSpo('VSpo'),
  VReverie('VReverie'),
  WACTOR('WACTOR'),
  WAKEntertainment('WAK Entertainment'),
  Xencount("X enc'ount"),
  YuniCreate('Yuni Create'),
  YumeReality('Yume Reality');

  /// The organization's code used by Holodex
  final String code;
  const Organization(this.code);

  @override
  String toString() => code;
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
  description,

  /// Include live streams.
  liveInfo,

  /// Include channel stats.
  channelStats,

  /// Include any songs used in the videos.
  songs
}

enum SearchSort { oldest, newest }

enum SearchTarget { clip, stream }

class EnumUtil {
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
