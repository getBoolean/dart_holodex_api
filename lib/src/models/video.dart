part of dart_holodex_api.models;

class Video extends Serializable {
  final String id;
  final String title;
  final VideoType type;

  /// corresponds to a Topic ID, Videos of type clip cannot not have topic. Streams may or may not have topic.
  final String? topicId;

  final String? publishedAt;

  /// Takes on the first non-null value of end_actual, start_actual, start_scheduled, or published_at
  final String availableAt;

  /// Duration of the video in seconds
  final int? duration;

  final VideoStatus status;

  /// Included when includes contains 'live_info'
  final VideoLiveInfo liveInfo;

  /// Included when includes contains 'description'
  final String? description;

  /// Number of tagged songs for this video
  final int? songcount;

  final String? channelId;

  final ChannelMin? channel;

  final String? language;

  /// Returns a new [Video] instance.
  Video({
    required this.id,
    required this.title,
    required this.type,
    this.topicId,
    this.publishedAt,
    required this.availableAt,
    this.duration,
    required this.status,
    this.liveInfo = const VideoLiveInfo(),
    this.description,
    this.songcount,
    this.channelId,
    this.channel,
    this.language,
  });

  Video copyWith({
    String? id,
    String? title,
    VideoType? type,
    String? topicId,
    String? publishedAt,
    String? availableAt,
    int? duration,
    VideoStatus? status,
    VideoLiveInfo? liveInfo,
    String? description,
    int? songcount,
    String? channelId,
    ChannelMin? channel,
    String? language,
  }) {
    return Video(
      id: id ?? this.id,
      title: title ?? this.title,
      type: type ?? this.type,
      topicId: topicId ?? this.topicId,
      publishedAt: publishedAt ?? this.publishedAt,
      availableAt: availableAt ?? this.availableAt,
      duration: duration ?? this.duration,
      status: status ?? this.status,
      liveInfo: liveInfo ?? this.liveInfo,
      description: description ?? this.description,
      songcount: songcount ?? this.songcount,
      channelId: channelId ?? this.channelId,
      channel: channel ?? this.channel,
      language: language ?? this.language,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'type': EnumUtil.convertVideoTypeToString(type),
      'topic_id': topicId,
      'published_at': publishedAt,
      'available_at': availableAt,
      'duration': duration,
      'status': EnumUtil.convertVideoStatusToString(status),
      'live_info': liveInfo.toMap(),
      'description': description,
      'songcount': songcount,
      'channel_id': channelId,
      'channel': channel,
      'lang': language,
    };
  }

  factory Video.fromMap(Map<String, dynamic> map) {
    return Video(
      id: map['id'],
      title: map['title'],
      type: EnumUtil.convertStringToVideoType(map['type']) ??
          VideoType.clip,
      topicId: map['topic_id'],
      publishedAt: map['published_at'],
      availableAt: map['available_at'],
      duration: map['duration'],
      status: EnumUtil.convertStringToVideoStatus(map['status']) ??
          VideoStatus.missing,
      liveInfo: VideoLiveInfo.fromMap(map['live_info']),
      description: map['description'],
      songcount: map['songcount'],
      channelId: map['channel_id'],
      channel: ChannelMin.fromMap(map['channel']),
      language: map['lang'],
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory Video.fromJson(String source) => Video.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      'id: $id',
      'title: $title',
      'type: $type',
      'topicId: $topicId',
      'publishedAt: $publishedAt',
      'availableAt: $availableAt',
      'duration: $duration',
      'status: $status',
      'liveInfo: $liveInfo',
      'description: $description',
      'songcount: $songcount',
      'language: $language',
      'channelId: $channelId',
    ];
  }
}
