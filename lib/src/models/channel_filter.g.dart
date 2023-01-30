// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_ChannelFilterToJson(_$_ChannelFilter instance) =>
    <String, dynamic>{
      'lang': concatLanguageListWithDefault(instance.languages),
      'limit': instance.limit,
      'offset': instance.offset,
      'type': _$ChannelTypeEnumMap[instance.type],
      'sort': instance.sort.map((e) => _$ChannelSortEnumMap[e]!).toList(),
      'order': _$OrderEnumMap[instance.order]!,
      'organization': _$OrganizationEnumMap[instance.organization],
    };

const _$ChannelTypeEnumMap = {
  ChannelType.vtuber: 'vtuber',
  ChannelType.subber: 'subber',
};

const _$ChannelSortEnumMap = {
  ChannelSort.id: 'id',
  ChannelSort.name: 'name',
  ChannelSort.englishName: 'englishName',
  ChannelSort.type: 'type',
  ChannelSort.organization: 'organization',
  ChannelSort.suborg: 'suborg',
  ChannelSort.photo: 'photo',
  ChannelSort.banner: 'banner',
  ChannelSort.twitter: 'twitter',
  ChannelSort.videoCount: 'videoCount',
  ChannelSort.subscriberCount: 'subscriberCount',
  ChannelSort.viewCount: 'viewCount',
  ChannelSort.clipCount: 'clipCount',
  ChannelSort.lang: 'lang',
  ChannelSort.publishedAt: 'publishedAt',
  ChannelSort.inactive: 'inactive',
  ChannelSort.description: 'description',
};

const _$OrderEnumMap = {
  Order.ascending: 'ascending',
  Order.descending: 'descending',
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
