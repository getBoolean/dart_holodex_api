import 'package:dart_holodex_api/src/utils.dart';

extension OrganizationValues on List<Organization> {
  Organization byName(String name) {
    for (var value in this) {
      if (value.name == name) return value;
    }
    return Organization.other(name);
  }

  List<String> toStringList() => organizationListToStringList(this);

  String get concat => concatOrganizationList(this);
}

// ignore_for_file: constant_identifier_names
// ignore_for_file: non_constant_identifier_names

/// Organizations supported by Holodex.
///
/// Make a Pull Request or GitHub issue to add more organizations.
class Organization {
  final String name;

  const Organization._internal(this.name);

  factory Organization.other(String other) => Organization._internal(other);

  static const inc774 = Organization._internal('774inc');
  static const Aetheria = Organization._internal('Aetheria');
  static const AkioAIR = Organization._internal('AkioAIR');
  static const AogiriHighschool = Organization._internal('Aogiri Highschool');
  static const AtelierLive = Organization._internal('Atelier Live');
  static const AxelV = Organization._internal('Axel-V');
  static const Chukorara = Organization._internal('Chukorara');
  static const CloudHorizon = Organization._internal('Cloud Horizon');
  static const Connectopia = Organization._internal('Connectopia');
  static const EileneFamily = Organization._internal('Eilene Family');
  static const Emoechi = Organization._internal('Emoechi');
  static const GuildCQ = Organization._internal('GuildCQ');
  static const HLive = Organization._internal('H.Live');
  static const Hololive = Organization._internal('Hololive');
  static const HoshimeguriGakuen = Organization._internal('Hoshimeguri Gakuen');
  static const idolCorp = Organization._internal('idol Corp');
  static const Independents = Organization._internal('Independents');
  static const Iridori = Organization._internal('Iridori');
  static const KAMITSUBAKI = Organization._internal('KAMITSUBAKI');
  static const KAWAII_MUSIC = Organization._internal('KAWAII MUSIC');
  static const KEMOMIMI_REFLE = Organization._internal('KEMOMIMI REFLE');
  static const KemonoFriends = Organization._internal('Kemono Friends');
  static const KizunaAI = Organization._internal('Kizuna Ai Inc.');
  static const LaPecheParty = Organization._internal('La Peche Party');
  static const dotLIVE = Organization._internal('.LIVE');
  static const MAHA5 = Organization._internal('MAHA5');
  static const Marbl_s = Organization._internal('Marbl_s');
  static const Masquerade = Organization._internal('Masquerade');
  static const MeridianProject = Organization._internal('Meridian Project');
  static const MyHoloTV = Organization._internal('MyHolo TV');
  static const NeoPorte = Organization._internal('Neo-Porte');
  static const NIJIGEN = Organization._internal('NIJIGEN');
  static const Nijisanji = Organization._internal('Nijisanji');
  static const NKShoujo = Organization._internal('NKShoujo');
  static const NoriPro = Organization._internal('Nori Pro');
  static const PhaseConnect = Organization._internal('Phase Connect');
  static const PinkPunkPro = Organization._internal('Pink Punk Pro');
  static const PixelaProject = Organization._internal('Pixela Project');
  static const Polygon = Organization._internal('Polygon');
  static const PRISM = Organization._internal('PRISM');
  static const ProductionKawaii = Organization._internal('Production Kawaii');
  static const ProPro = Organization._internal('ProPro');
  static const ReACT = Organization._internal('ReAcT');
  static const ReMemories = Organization._internal('ReMemories');
  static const RevolutionHeart = Organization._internal('Revolution Heart');
  static const RiotMusic = Organization._internal('Riot Music');
  static const SedaiOne = Organization._internal('Sedai One');
  static const SheerMusicV = Organization._internal('SheerMusicV');
  static const Shinsougumi = Organization._internal('Shinsougumi');
  static const SleepMonster = Organization._internal('Sleep Monster');
  static const Snacknili = Organization._internal('Snacknili');
  static const SquareLive = Organization._internal('SquareLive');
  static const TheBox = Organization._internal('The Box');
  static const Tsunderia = Organization._internal('Tsunderia');
  static const TwitchIndependents =
      Organization._internal('Twitch Independents');
  static const UnrealNightGirls = Organization._internal('Unreal Night Girls');
  static const Varium = Organization._internal('Varium');
  static const VDimensionCreators =
      Organization._internal('V Dimension.Creators');
  static const ViViD = Organization._internal('ViViD');
  static const VOICE_ORE = Organization._internal('VOICE-ORE');
  static const VOMS = Organization._internal('VOMS');
  static const VReverie = Organization._internal('VReverie');
  static const VShojo = Organization._internal('VShojo');
  static const VSpo = Organization._internal('VSpo');
  static const WACTOR = Organization._internal('WACTOR');
  static const WAKEntertainment = Organization._internal('WAK Entertainment');
  static const Xencount = Organization._internal("X enc'ount");
  static const YumeLive = Organization._internal('YumeLive');
  static const YuniCreate = Organization._internal('Yuni Create');

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
