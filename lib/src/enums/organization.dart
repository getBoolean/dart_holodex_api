import 'package:dart_holodex_api/src/utils.dart';

/// Organizations supported by Holodex.
extension OrganizationValues on List<Organization> {
  /// Returns a [Organization] from a string [name].
  Organization byName(String name) {
    for (var value in this) {
      if (value.name == name) return value;
    }
    return Organization.other(name);
  }

  /// Returns a [List] of [String]s of the [Organization]s.
  List<String> toStringList() => organizationListToStringList(this);

  /// Returns a [String] of the [Organization]s.
  String get concat => concatOrganizationList(this);
}

// ignore_for_file: constant_identifier_names
// ignore_for_file: non_constant_identifier_names

/// Organizations supported by Holodex.
///
/// Make a Pull Request or GitHub issue to add more organizations.
class Organization {
  /// Name of the organization.
  final String name;

  const Organization._internal(this.name);

  /// Returns a new [Organization] that is not included in [values]
  factory Organization.other(String other) => Organization._internal(other);

  /// 774inc
  static const inc774 = Organization._internal('774inc');

  /// Aetheria
  static const Aetheria = Organization._internal('Aetheria');

  /// AkioAIR
  static const AkioAIR = Organization._internal('AkioAIR');

  /// Aogiri Highschool
  static const AogiriHighschool = Organization._internal('Aogiri Highschool');

  /// Atelier Live
  static const AtelierLive = Organization._internal('Atelier Live');

  /// Axel-V
  static const AxelV = Organization._internal('Axel-V');

  /// Chukorara
  static const Chukorara = Organization._internal('Chukorara');

  /// Cloud Horizon
  static const CloudHorizon = Organization._internal('Cloud Horizon');

  /// Connectopia
  static const Connectopia = Organization._internal('Connectopia');

  /// Eilene Family
  static const EileneFamily = Organization._internal('Eilene Family');

  /// Emoechi
  static const Emoechi = Organization._internal('Emoechi');

  /// GuildCQ
  static const GuildCQ = Organization._internal('GuildCQ');

  /// H.Live
  static const HLive = Organization._internal('H.Live');

  /// Hololive
  static const Hololive = Organization._internal('Hololive');

  /// Hoshimeguri Gakuen
  static const HoshimeguriGakuen = Organization._internal('Hoshimeguri Gakuen');

  /// idol Corp
  static const idolCorp = Organization._internal('idol Corp');

  /// Independents
  static const Independents = Organization._internal('Independents');

  /// Iridori
  static const Iridori = Organization._internal('Iridori');

  /// KAMITSUBAKI
  static const KAMITSUBAKI = Organization._internal('KAMITSUBAKI');

  /// KAWAII MUSIC
  static const KAWAII_MUSIC = Organization._internal('KAWAII MUSIC');

  /// KEMOMIMI REFLE
  static const KEMOMIMI_REFLE = Organization._internal('KEMOMIMI REFLE');

  /// Kemono Friends
  static const KemonoFriends = Organization._internal('Kemono Friends');

  /// Kizuna Ai Inc.
  static const KizunaAI = Organization._internal('Kizuna Ai Inc.');

  /// La Peche Party
  static const LaPecheParty = Organization._internal('La Peche Party');

  /// .LIVE
  static const dotLIVE = Organization._internal('.LIVE');

  /// MAHA5
  static const MAHA5 = Organization._internal('MAHA5');

  /// Marbl_s
  static const Marbl_s = Organization._internal('Marbl_s');

  /// Masquerade
  static const Masquerade = Organization._internal('Masquerade');

  /// Meridian Project
  static const MeridianProject = Organization._internal('Meridian Project');

  /// MyHolo TV
  static const MyHoloTV = Organization._internal('MyHolo TV');

  /// Neo-Porte
  static const NeoPorte = Organization._internal('Neo-Porte');

  /// NIJIGEN
  static const NIJIGEN = Organization._internal('NIJIGEN');

  /// Nijisanji
  static const Nijisanji = Organization._internal('Nijisanji');

  /// NKShoujo
  static const NKShoujo = Organization._internal('NKShoujo');

  /// Nori Pro
  static const NoriPro = Organization._internal('Nori Pro');

  /// Phase Connect
  static const PhaseConnect = Organization._internal('Phase Connect');

  /// Pink Punk Pro
  static const PinkPunkPro = Organization._internal('Pink Punk Pro');

  /// Pixela Project
  static const PixelaProject = Organization._internal('Pixela Project');

  /// Polygon
  static const Polygon = Organization._internal('Polygon');

  /// PRISM
  static const PRISM = Organization._internal('PRISM');

  /// Production Kawaii
  static const ProductionKawaii = Organization._internal('Production Kawaii');

  /// ProPro
  static const ProPro = Organization._internal('ProPro');

  /// ReAcT
  static const ReACT = Organization._internal('ReAcT');

  /// ReMemories
  static const ReMemories = Organization._internal('ReMemories');

  /// Revolution Heart
  static const RevolutionHeart = Organization._internal('Revolution Heart');

  /// Riot Music
  static const RiotMusic = Organization._internal('Riot Music');

  /// Sedai One
  static const SedaiOne = Organization._internal('Sedai One');

  /// SheerMusicV
  static const SheerMusicV = Organization._internal('SheerMusicV');

  /// Shinsougumi
  static const Shinsougumi = Organization._internal('Shinsougumi');

  /// Sleep Monster
  static const SleepMonster = Organization._internal('Sleep Monster');

  /// Snacknili
  static const Snacknili = Organization._internal('Snacknili');

  /// SquareLive
  static const SquareLive = Organization._internal('SquareLive');

  /// The Box
  static const TheBox = Organization._internal('The Box');

  /// Tsunderia
  static const Tsunderia = Organization._internal('Tsunderia');

  /// Twitch Independents
  static const TwitchIndependents =
      Organization._internal('Twitch Independents');

  /// Unreal Night Girls
  static const UnrealNightGirls = Organization._internal('Unreal Night Girls');

  /// Varium
  static const Varium = Organization._internal('Varium');

  /// V Dimension.Creators
  static const VDimensionCreators =
      Organization._internal('V Dimension.Creators');

  /// ViViD
  static const ViViD = Organization._internal('ViViD');

  /// VOICE-ORE
  static const VOICE_ORE = Organization._internal('VOICE-ORE');

  /// VOMS
  static const VOMS = Organization._internal('VOMS');

  /// VReverie
  static const VReverie = Organization._internal('VReverie');

  /// VShojo
  static const VShojo = Organization._internal('VShojo');

  /// VSpo
  static const VSpo = Organization._internal('VSpo');

  /// WACTOR
  static const WACTOR = Organization._internal('WACTOR');

  /// WAK Entertainment
  static const WAKEntertainment = Organization._internal('WAK Entertainment');

  /// X enc'ount
  static const Xencount = Organization._internal("X enc'ount");

  /// YumeLive (formerly Yume Reality)
  static const YumeLive = Organization._internal('YumeLive');

  /// Yuni Create
  static const YuniCreate = Organization._internal('Yuni Create');

  /// All organizations supported by Holodex as of 2023-02-03.
  ///
  /// Submit a Pull Request or GitHub issue to add more organizations
  /// or use [Organization.other]
  static const List<Organization> values = [
    inc774,
    Aetheria,
    AkioAIR,
    AogiriHighschool,
    AtelierLive,
    AxelV,
    Chukorara,
    CloudHorizon,
    Connectopia,
    EileneFamily,
    Emoechi,
    GuildCQ,
    HLive,
    Hololive,
    HoshimeguriGakuen,
    idolCorp,
    Independents,
    Iridori,
    KAMITSUBAKI,
    KAWAII_MUSIC,
    KEMOMIMI_REFLE,
    KemonoFriends,
    KizunaAI,
    LaPecheParty,
    dotLIVE,
    MAHA5,
    Marbl_s,
    Masquerade,
    MeridianProject,
    MyHoloTV,
    NeoPorte,
    NIJIGEN,
    Nijisanji,
    NKShoujo,
    NoriPro,
    PhaseConnect,
    PinkPunkPro,
    PixelaProject,
    Polygon,
    PRISM,
    ProductionKawaii,
    ProPro,
    ReACT,
    ReMemories,
    RevolutionHeart,
    RiotMusic,
    SedaiOne,
    SheerMusicV,
    Shinsougumi,
    SleepMonster,
    Snacknili,
    SquareLive,
    TheBox,
    Tsunderia,
    TwitchIndependents,
    UnrealNightGirls,
    Varium,
    VDimensionCreators,
    ViViD,
    VOICE_ORE,
    VOMS,
    VReverie,
    VShojo,
    VSpo,
    WACTOR,
    WAKEntertainment,
    Xencount,
    YumeLive,
    YuniCreate,
  ];

  @override
  String toString() => name;
}
