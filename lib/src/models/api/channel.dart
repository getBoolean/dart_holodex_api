import 'dart:convert';

import 'package:dart_holodex_api/dart_holodex_api.dart';

class Channel extends ChannelMin {
  final String? suborg;
  final String? banner;
  final String? twitter;
  final Language lang;
  final bool? inactive;
  final String? description;
  final String? publishedAt;

  // TODO: add the following fields:
  //  crawled at
  //  comments crawled at
  //  updated at
  //  yt uploads id
  //  top topics
  //  yt_handle
  //  twitch
  //  yt_name_history
  //  group

  /// Returns a new [Channel] instance.
  const Channel({
    required super.id,
    required super.name,
    String? englishName,
    required super.type,
    super.organization,
    super.photo,
    this.suborg,
    this.banner,
    this.twitter,
    super.stats,
    required this.lang,
    this.publishedAt,
    this.inactive,
    this.description,
  });

  @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'inactive': inactive,
      'type': type.code,
      'description': description,
      'lang': lang.toLanguageTag(),
      'english_name': englishName,
      'org': organization,
      'suborg': suborg,
      'photo': photo,
      'banner': banner,
      'twitter': twitter,
      'published_at': publishedAt,

      'video_count': stats.videoCount,
      'subscriber_count': stats.subscriberCount,
      'view_count': stats.viewCount,
      'clip_count': stats.clipCount,
    };
  }

  factory Channel.fromMap(Map<String, dynamic> map) {
    final locale = Locale.tryParse(map['lang'] ?? '');
    return Channel(
      id: map['id'],
      name: map['name'],
      englishName: map['english_name'],
      type: ChannelType.values.byCode(map['type'] ?? '') ?? ChannelType.subber,
      organization: map['org'],
      suborg: map['suborg'],
      photo: map['photo'],
      banner: map['banner'],
      twitter: map['twitter'],
      stats: ChannelStats(
        videoCount: map['video_count'],
        subscriberCount: map['subscriber_count'],
        viewCount: map['view_count'],
        clipCount: map['clip_count'],
      ),
      lang: locale != null ? Language.other(locale) : Language.all,
      publishedAt: map['published_at'],
      inactive: map['inactive'],
      description: map['description'],
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory Channel.fromJson(String source) => Channel.fromMap(json.decode(source));

  @override
  Channel copyWith({
    String? id,
    String? name,
    String? englishName,
    ChannelType? type,
    String? suborg,
    String? photo,
    String? banner,
    String? twitter,
    ChannelStats? stats,
    Language? lang,
    String? publishedAt,
    bool? inactive,
    String? description,
    String? organization,
  }) {
    return Channel(
      id: id ?? this.id,
      name: name ?? this.name,
      englishName: englishName ?? this.englishName,
      type: type ?? this.type,
      suborg: suborg ?? this.suborg,
      photo: photo ?? this.photo,
      banner: banner ?? this.banner,
      twitter: twitter ?? this.twitter,
      stats: stats ?? this.stats,
      lang: lang ?? this.lang,
      publishedAt: publishedAt ?? this.publishedAt,
      inactive: inactive ?? this.inactive,
      description: description ?? this.description,
      organization: organization ?? this.organization,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    final channelProps = super.props;
    channelProps.addAll([
      'suborg: $suborg',
      'banner: $banner',
      'twitter: $twitter',
      'videoCount: ${stats.videoCount}',
      'subscriberCount: ${stats.subscriberCount}',
      'viewCount: ${stats.viewCount}',
      'clipCount: ${stats.clipCount}',
      'lang: $lang',
      'publishedAt: $publishedAt',
      'inactive: $inactive',
      'description: $description',
      'org: $organization'
    ]);

    return channelProps;
  }
}
