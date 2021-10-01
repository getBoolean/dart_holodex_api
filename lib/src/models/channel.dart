part of dart_holodex_api.models;

class Channel extends Equatable {
  final String id;
  final String name;
  final String englishName;
  final ChannelType type;
  final String org;
  final String suborg;
  final String photo;
  final String banner;
  final String twitter;
  final String videoCount;
  final String subscriberCount;
  final String viewCount;
  final String clipCount;
  final String lang;
  final String publishedAt;
  final bool inactive;
  final String description;

  /// Returns a new [Channel] instance.
  Channel({
    required this.id,
    required this.name,
    required this.englishName,
    required this.type,
    required this.org,
    required this.suborg,
    required this.photo,
    required this.banner,
    required this.twitter,
    required this.videoCount,
    required this.subscriberCount,
    required this.viewCount,
    required this.clipCount,
    required this.lang,
    required this.publishedAt,
    required this.inactive,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'english_name': englishName,
      'type': EnumToString.convertToString(type),
      'org': org,
      'suborg': suborg,
      'photo': photo,
      'banner': banner,
      'twitter': twitter,
      'video_count': videoCount,
      'subscriber_count': subscriberCount,
      'view_count': viewCount,
      'clip_count': clipCount,
      'lang': lang,
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
      type: EnumToString.fromString(ChannelType.values, map['type']) ?? ChannelType.subber,
      org: map['org'],
      suborg: map['suborg'],
      photo: map['photo'],
      banner: map['banner'],
      twitter: map['twitter'],
      videoCount: map['video_count'],
      subscriberCount: map['subscriber_count'],
      viewCount: map['view_count'],
      clipCount: map['clip_count'],
      lang: map['lang'],
      publishedAt: map['published_at'],
      inactive: map['inactive'],
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Channel.fromJson(String source) => Channel.fromMap(json.decode(source));

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
    String? clipCount,
    String? lang,
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
    return [
      id,
      name,
      englishName,
      type,
      org,
      suborg,
      photo,
      banner,
      twitter,
      videoCount,
      subscriberCount,
      viewCount,
      clipCount,
      lang,
      publishedAt,
      inactive,
      description,
    ];
  }
}
