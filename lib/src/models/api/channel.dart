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
  final String? crawledAt;
  final String? commentsCrawledAt;
  final String? updatedAt;
  final String? ytUploadsId;
  final List<String> topTopics;
  final List<String> ytHandle;
  final String? twitch;
  final List<String> ytNameHistory;
  final String? group;

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
    this.crawledAt,
    this.commentsCrawledAt,
    this.updatedAt,
    this.ytUploadsId,
    this.topTopics = const [],
    this.ytHandle = const [],
    this.twitch,
    this.ytNameHistory = const [],
    this.group,
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
      'crawled_at': crawledAt,
      'comments_crawled_at': commentsCrawledAt,
      'updated_at': updatedAt,
      'yt_uploads_id': ytUploadsId,
      'top_topics': topTopics,
      'yt_handle': ytHandle,
      'twitch': twitch,
      'yt_name_history': ytNameHistory,
      'group': group,
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
      crawledAt: map['crawled_at'],
      commentsCrawledAt: map['comments_crawled_at'],
      updatedAt: map['updated_at'],
      ytUploadsId: map['yt_uploads_id'],
      topTopics: List<String>.of(map['top_topics'] ?? []),
      ytHandle: List<String>.of(map['yt_handle'] ?? []),
      twitch: map['twitch'],
      ytNameHistory: List<String>.of(map['yt_name_history'] ?? []),
      group: map['group'],
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
    String? crawledAt,
    String? commentsCrawledAt,
    String? updatedAt,
    String? ytUploadsId,
    List<String>? topTopics,
    List<String>? ytHandle,
    String? twitch,
    List<String>? ytNameHistory,
    String? group,
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
      crawledAt: crawledAt ?? this.crawledAt,
      commentsCrawledAt: commentsCrawledAt ?? this.commentsCrawledAt,
      updatedAt: updatedAt ?? this.updatedAt,
      ytUploadsId: ytUploadsId ?? this.ytUploadsId,
      topTopics: topTopics ?? this.topTopics,
      ytHandle: ytHandle ?? this.ytHandle,
      twitch: twitch ?? this.twitch,
      ytNameHistory: ytNameHistory ?? this.ytNameHistory,
      group: group ?? this.group,
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
      'org: $organization',
      'crawledAt: $crawledAt',
      'commentsCrawledAt: $commentsCrawledAt',
      'updatedAt: $updatedAt',
      'ytUploadsId: $ytUploadsId',
      'topTopics: $topTopics',
      'ytHandle: $ytHandle',
      'twitch: $twitch',
      'ytNameHistory: $ytNameHistory',
      'group: $group',
    ]);

    return channelProps;
  }
}
