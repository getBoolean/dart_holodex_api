part of dart_holodex_api.models;

class Channel extends ChannelMin {
  final String? org;
  final String? suborg;
  final String? banner;
  final String? twitter;
  final String? videoCount;
  final String? subscriberCount;
  final String? viewCount;
  final int? clipCount;
  final Language lang;
  final String? publishedAt;
  final bool? inactive;
  final String? description;

  /// Returns a new [Channel] instance.
  Channel({
    required super.id,
    required super.name,
    String? englishName,
    required super.type,
    super.photo,
    this.org,
    this.suborg,
    this.banner,
    this.twitter,
    this.videoCount,
    this.subscriberCount,
    this.viewCount,
    this.clipCount,
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
      'english_name': englishName,
      'type': EnumUtil.convertChannelTypeToString(type),
      'org': org,
      'suborg': suborg,
      'photo': photo,
      'banner': banner,
      'twitter': twitter,
      'video_count': videoCount,
      'subscriber_count': subscriberCount,
      'view_count': viewCount,
      'clip_count': clipCount,
      'lang': EnumUtil.convertLanguageToString(lang),
      'published_at': publishedAt,
      'inactive': inactive,
      'description': description,
    };
  }

  factory Channel.fromMap(Map<String, dynamic> map) {
    return Channel(
      id: map['id'],
      name: map['name'],
      englishName: map['english_name'],
      type: EnumUtil.convertStringToChannelType(map['type'] ?? '') ??
          ChannelType.subber,
      org: map['org'],
      suborg: map['suborg'],
      photo: map['photo'],
      banner: map['banner'],
      twitter: map['twitter'],
      videoCount: map['video_count'],
      subscriberCount: map['subscriber_count'],
      viewCount: map['view_count'],
      clipCount: map['clip_count'],
      lang: EnumUtil.convertStringToLanguage(map['lang'] ?? '') ?? Language.all,
      publishedAt: map['published_at'],
      inactive: map['inactive'],
      description: map['description'],
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory Channel.fromJson(String source) =>
      Channel.fromMap(json.decode(source));

  @override
  Channel copyWith({
    String? id,
    String? name,
    String? englishName,
    ChannelType? type,
    String? org,
    String? suborg,
    String? photo,
    String? banner,
    String? twitter,
    String? videoCount,
    String? subscriberCount,
    String? viewCount,
    int? clipCount,
    Language? lang,
    String? publishedAt,
    bool? inactive,
    String? description,
  }) {
    return Channel(
      id: id ?? this.id,
      name: name ?? this.name,
      englishName: englishName ?? this.englishName,
      type: type ?? this.type,
      org: org ?? this.org,
      suborg: suborg ?? this.suborg,
      photo: photo ?? this.photo,
      banner: banner ?? this.banner,
      twitter: twitter ?? this.twitter,
      videoCount: videoCount ?? this.videoCount,
      subscriberCount: subscriberCount ?? this.subscriberCount,
      viewCount: viewCount ?? this.viewCount,
      clipCount: clipCount ?? this.clipCount,
      lang: lang ?? this.lang,
      publishedAt: publishedAt ?? this.publishedAt,
      inactive: inactive ?? this.inactive,
      description: description ?? this.description,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    final channelProps = super.props;
    channelProps.addAll([
      'org: $org',
      'suborg: $suborg',
      'banner: $banner',
      'twitter: $twitter',
      'videoCount: $videoCount',
      'subscriberCount: $subscriberCount',
      'viewCount: $viewCount',
      'clipCount: $clipCount',
      'lang: $lang',
      'publishedAt: $publishedAt',
      'inactive: $inactive',
      'description: $description',
    ]);

    return channelProps;
  }
}
