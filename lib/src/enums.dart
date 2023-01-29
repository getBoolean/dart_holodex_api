// ignore_for_file: constant_identifier_names
// ignore_for_file: non_constant_identifier_names

import 'package:intl/locale.dart';

extension EnumByCode<T extends EnumWithCode> on List<T> {
  /// Finds the enum value in this list with code [code].
  ///
  /// Goes through this collection looking for an enum with
  /// code [code], as reported by [EnumName.code].
  /// Returns the first value with the given code. Such a value must be found.
  T? byCode(String code) {
    for (var value in this) {
      if (value.code == code) return value;
    }
    return null;
  }
}

mixin EnumWithCode {
  String get code;
}

enum VideoType with EnumWithCode {
  stream('stream'),
  clip('clip'),
  all('all');

  /// The code used by Holodex
  @override
  final String code;
  const VideoType(this.code);
}

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
}

enum ChannelType with EnumWithCode {
  vtuber('vtuber'),
  subber('subber');

  /// The code used by Holodex
  @override
  final String code;
  const ChannelType(this.code);
}

extension LanguageValues on List<Language> {
  Language byLocale(Locale locale) => Language.other(locale);

  /// Throws a [FormatException] if [tag] is syntactically invalid.
  Language byTag(String tag) {
    for (var value in this) {
      if (value.toLanguageTag() == tag) return value;
    }
    return Language.other(Locale.parse((tag)));
  }
}

/// Holodex uses the BCP47 standard for language codes
///
/// Make a Pull Request or GitHub issue to add more language options.
class Language {
  const Language._internal(this.locale);

  final Locale locale;

  factory Language.other(Locale other) => Language._internal(other);

  factory Language.fromString(String source) {
    final locale = Locale.tryParse(source);
    return locale != null ? Language.other(locale) : Language.all;
  }

  static final all = Language._internal(Locale.fromSubtags(languageCode: 'all'));

  static final english = Language._internal(Locale.fromSubtags(languageCode: 'en'));

  static final japanese = Language._internal(Locale.fromSubtags(languageCode: 'jp'));

  static final spanish = Language._internal(Locale.fromSubtags(languageCode: 'es'));

  static final chinese = Language._internal(Locale.fromSubtags(languageCode: 'zh'));

  static final korean = Language._internal(Locale.fromSubtags(languageCode: 'ko'));

  static final french = Language._internal(Locale.fromSubtags(languageCode: 'fr'));

  static final indonesian = Language._internal(Locale.fromSubtags(languageCode: 'id'));

  static final russian = Language._internal(Locale.fromSubtags(languageCode: 'ru'));

  static final List<Language> values = [
    Language.all,
    Language.english,
    Language.japanese,
    Language.spanish,
    Language.chinese,
    Language.korean,
    Language.french,
    Language.indonesian,
    Language.russian,
  ];

  String toLanguageTag() => locale.toLanguageTag();

  static String toStringStatic(Language language) => language.locale.toLanguageTag();

  @override
  String toString() => locale.toLanguageTag();
}

/// Options to sort a list of channels from the [HolodexClient.getChannels] endpoint.
enum ChannelSort with EnumWithCode {
  id('id'),
  name('name'),
  englishName('enligh_name'),
  type('type'),
  organization('org'),
  suborg('suborg'),
  photo('photo'),
  banner('banner'),
  twitter('twitter'),
  videoCount('video_count'),
  subscriberCount('subscriber_count'),
  viewCount('view_count'),
  clipCount('clip_count'),
  lang('lang'),
  publishedAt('published_at'),
  inactive('inactive'),
  description('description');

  /// The code used by Holodex
  @override
  final String code;
  const ChannelSort(this.code);
}

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

/// An enum that provides different search types when retrieving videos.
enum VideoSearchType with EnumWithCode {
  /// Retrieve clips including a VTuber
  clips('clips'),

  /// Retrieve videos uploaded by a Channel
  videos('videos'),

  /// Retrieve videos that mention a Channel
  collabs('collabs');

  /// The code used by Holodex
  @override
  final String code;
  const VideoSearchType(this.code);
}

/// An enum that allows a list to be sorted alphabetically
enum Order with EnumWithCode {
  /// Sorts the list in ascending order (A-Z)
  ascending('asc'),

  /// Sorts the list in descending order (Z-A)
  descending('desc');

  /// The order code used by Holodex
  @override
  final String code;
  const Order(this.code);

  @override
  String toString() => code;
}

/// Organizations supported by Holodex.
///
/// Make a Pull Request or GitHub issue to add more organizations.
enum Organization with EnumWithCode {
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
  @override
  final String code;
  const Organization(this.code);

  @override
  String toString() => code;
}

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
  const Includes(this.code);
}

enum SearchSort with EnumWithCode {
  oldest('oldest'),
  newest('newest');

  /// The code used by Holodex
  @override
  final String code;
  const SearchSort(this.code);
}

enum SearchTarget with EnumWithCode {
  clip('clip'),
  stream('stream');

  /// The code used by Holodex
  @override
  final String code;
  const SearchTarget(this.code);
}
