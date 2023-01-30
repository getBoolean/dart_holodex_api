// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_SearchFilterToJson(_$_SearchFilter instance) =>
    <String, dynamic>{
      'search_sort': _$SearchSortEnumMap[instance.sort]!,
      'lang': concatLanguageListWithDefault(instance.languages),
      'search_targets':
          instance.targets.map((e) => _$SearchTargetEnumMap[e]!).toList(),
      'topics': instance.topics,
      'video_channels': instance.videoChannels,
      'organizations':
          instance.organizations.map((e) => _$OrganizationEnumMap[e]!).toList(),
      'paginated': paginatedToString(instance.paginated),
      'offset': intToString(instance.offset),
      'limit': intToString(instance.limit),
    };

const _$SearchSortEnumMap = {
  SearchSort.oldest: 'oldest',
  SearchSort.newest: 'newest',
};

const _$SearchTargetEnumMap = {
  SearchTarget.clip: 'clip',
  SearchTarget.stream: 'stream',
};

const _$OrganizationEnumMap = {
  Organization.dotLIVE: 'dotLIVE',
  Organization.inc774: 'inc774',
  Organization.AogiriHighschool: 'AogiriHighschool',
  Organization.AtelierLive: 'AtelierLive',
  Organization.AxelV: 'AxelV',
  Organization.AkioAIR: 'AkioAIR',
  Organization.Aetheria: 'Aetheria',
  Organization.Chukorara: 'Chukorara',
  Organization.CloudHorizon: 'CloudHorizon',
  Organization.EileneFamily: 'EileneFamily',
  Organization.Emoechi: 'Emoechi',
  Organization.GuildCQ: 'GuildCQ',
  Organization.Hololive: 'Hololive',
  Organization.HoshimeguriGakuen: 'HoshimeguriGakuen',
  Organization.HLive: 'HLive',
  Organization.Independents: 'Independents',
  Organization.Iridori: 'Iridori',
  Organization.idolCorp: 'idolCorp',
  Organization.KAMITSUBAKI: 'KAMITSUBAKI',
  Organization.KizunaAI: 'KizunaAI',
  Organization.KAWAII_MUSIC: 'KAWAII_MUSIC',
  Organization.KEMOMIMI_REFLE: 'KEMOMIMI_REFLE',
  Organization.KemonoFriends: 'KemonoFriends',
  Organization.LaPecheParty: 'LaPecheParty',
  Organization.Marbl_s: 'Marbl_s',
  Organization.Masquerade: 'Masquerade',
  Organization.MAHA5: 'MAHA5',
  Organization.MyHoloTV: 'MyHoloTV',
  Organization.Nijisanji: 'Nijisanji',
  Organization.NoriPro: 'NoriPro',
  Organization.NIJIGEN: 'NIJIGEN',
  Organization.NeoPorte: 'NeoPorte',
  Organization.ProductionKawaii: 'ProductionKawaii',
  Organization.Polygon: 'Polygon',
  Organization.PhaseConnect: 'PhaseConnect',
  Organization.PixelaProject: 'PixelaProject',
  Organization.PRISM: 'PRISM',
  Organization.ProPro: 'ProPro',
  Organization.PinkPunkPro: 'PinkPunkPro',
  Organization.RiotMusic: 'RiotMusic',
  Organization.ReACT: 'ReACT',
  Organization.ReMemories: 'ReMemories',
  Organization.SleepMonster: 'SleepMonster',
  Organization.SquareLive: 'SquareLive',
  Organization.Snacknili: 'Snacknili',
  Organization.Shinsougumi: 'Shinsougumi',
  Organization.Tsunderia: 'Tsunderia',
  Organization.TwitchIndependents: 'TwitchIndependents',
  Organization.UnrealNightGirls: 'UnrealNightGirls',
  Organization.VDimensionCreators: 'VDimensionCreators',
  Organization.VOICE_ORE: 'VOICE_ORE',
  Organization.ViViD: 'ViViD',
  Organization.VOMS: 'VOMS',
  Organization.VShojo: 'VShojo',
  Organization.VSpo: 'VSpo',
  Organization.VReverie: 'VReverie',
  Organization.WACTOR: 'WACTOR',
  Organization.WAKEntertainment: 'WAKEntertainment',
  Organization.Xencount: 'Xencount',
  Organization.YuniCreate: 'YuniCreate',
  Organization.YumeReality: 'YumeReality',
};
