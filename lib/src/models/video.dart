part of dart_holodex_api.models;

class Video extends Equatable {
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
  final String? startScheduled;

  /// Included when includes contains 'live_info'
  final String? startActual;

  /// Included when includes contains 'live_info'
  final String? endActual;

  /// Included when includes contains 'live_info'
  final int? liveViewers;

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
    required this.duration,
    required this.status,
    this.startScheduled,
    this.startActual,
    this.endActual,
    this.liveViewers,
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
    String? startScheduled,
    String? startActual,
    String? endActual,
    int? liveViewers,
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
      startScheduled: startScheduled ?? this.startScheduled,
      startActual: startActual ?? this.startActual,
      endActual: endActual ?? this.endActual,
      liveViewers: liveViewers ?? this.liveViewers,
      description: description ?? this.description,
      songcount: songcount ?? this.songcount,
      channelId: channelId ?? this.channelId,
      channel: channel ?? this.channel,
      language: language ?? this.language,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'type': EnumToString.convertToString(type),
      'topic_id': topicId,
      'published_at': publishedAt,
      'available_at': availableAt,
      'duration': duration,
      'status': EnumUtil.convertVideoStatusToString(status),
      'start_scheduled': startScheduled,
      'start_actual': startActual,
      'end_actual': endActual,
      'live_viewers': liveViewers,
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
      type: EnumToString.fromString(VideoType.values, map['type']) ??
          VideoType.clip,
      topicId: map['topic_id'],
      publishedAt: map['published_at'],
      availableAt: map['available_at'],
      duration: map['duration'],
      status: EnumUtil.convertStringToVideoStatus(map['status']) ??
          VideoStatus.missing,
      startScheduled: map['start_scheduled'],
      startActual: map['start_actual'],
      endActual: map['end_actual'],
      liveViewers: map['live_viewers'],
      description: map['description'],
      songcount: map['songcount'],
      channelId: map['channel_id'],
      channel: ChannelMin.fromMap(map['channel']),
      language: map['lang'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Video.fromJson(String source) => Video.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      title,
      type,
      topicId ?? 'Topic id not given',
      publishedAt ?? 'Published at not given',
      availableAt,
      duration ?? 'Duration not provided',
      status,
      startScheduled ?? 'Scheduled start not given',
      startActual ?? 'Actual start not given',
      endActual ?? 'Actual end not given',
      liveViewers ?? 'Live viewers not given',
      description ?? 'Description not given',
      songcount ?? 'Song count not given',
      language ?? 'Language not given',
      channelId ?? 'Channel id not given',
    ];
  }
}
