// ignore_for_file: constant_identifier_names
// ignore_for_file: non_constant_identifier_names
import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';

// TODO: Convert to class similar to `Language`

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
