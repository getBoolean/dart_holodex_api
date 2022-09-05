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
