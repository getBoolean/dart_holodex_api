// ignore_for_file: constant_identifier_names

enum VideoType { stream, clip, all }

enum VideoStatus { new_, upcoming, live, past, missing }

// Using an enum instead for convienience for user
// class VideoStatus {
//   static const String new_ = "new";
//   static const String upcoming = "upcoming";
//   static const String live = "live";
//   static const String past = "past";
//   static const String missing = "missing";
// }

enum ChannelType { vtuber, subber }

// Below classes are based off of https://github.com/EBro912/Holodex.NET

class Language {
  static const String all = 'all';
  static const String english = 'en';
  static const String japanese = 'jp';
  static const String spanish = 'es';
  static const String chinese = 'zh';
  static const String korean = 'ko';
  static const String french = 'fr';
  static const String indonesian = 'id';
  static const String russian = 'ru';
}

enum VideoSort {
  title,
  publishedAt,
  availableAt,
  startScheduled,
  startActual,
  endActual,
}

// TODO: Change to enum
/// A class that provides different search types when retrieving videos.
class VideoSearchType {
  /// Retrieve clips including a VTuber
  static const String clips = 'clips';

  /// Retrieve videos uploaded by a Channel
  static const String videos = 'videos';

   /// Retrieve videos that mention a Channel
  static const String collabs = 'collabs';
}

enum Order { ascending, descending }

// TODO: Change to enum
class Organization {
  static const String inc774 = '774inc';
  static const String AogiriHighschool = 'Aogiri%20Highschool';
  static const String AtelierLive = 'Atelier%20Live';
  static const String Chukorara = 'Chukorara';
  static const String EileneFamily = 'Eilene%20Family';
  static const String HanayoriJoshiryo = 'Hanayori%20Joshiryo';
  static const String Hololive = 'Hololive';
  static const String Independent = 'Independents';
  static const String Iridori = 'Iridori';
  static const String KizunaAI = 'Kizuna%20Ai%20Inc.';
  static const String dotLIVE = '.LIVE';
  static const String Marbl_s = 'Marbl_s';
  static const String Masquerade = 'Masquerade';
  static const String Nijisanji = 'Nijisanji';
  static const String NoriPro = 'Nori%20Pro';
  static const String PRISM = 'PRISM';
  static const String ReACT = 'ReACT';
  static const String RiotMusic = 'Riot%20Music';
  static const String Tsunderia = 'Tsunderia';
  static const String VDimensionCreators = 'V%20Dimension.Creators';
  static const String VirtualWitchPhenomenon = 'Virtual%20Witch%20Phenomenon';
  static const String ViViD = 'ViViD';
  static const String VOMS = 'VOMS';
  static const String VShojo = 'VShojo';
  static const String VSpo = 'VSpo';
  static const String Xencount = "X%20enc'ount";
  static const String YuniCreate = 'YuniCreate';
}

// TODO: Change to enum
/// A class which contains strings that allow extra data to be returned when requesting videos.
class Includes {
  /// Include clips using the videos.
  static const String clips = "clips";

  /// Include videos that refer to other videos.
  static const String refers = "refers";

  /// Include sources for videos created by Subbers.
  static const String sources = "sources";

  /// Include simulcast videos alongside the videos.
  static const String simulcasts = "simulcasts";

  /// Include channels that are mentioned.
  static const String mentions = "mentions";

  /// Include video descriptions.
  static const String description = "description";

  /// Include live streams.
  static const String liveInfo = "live_info";

  /// Include channel stats.
  static const String channelStats = "channel_stats";

  /// Include any songs used in the videos.
  static const String songs = "songs";
}

