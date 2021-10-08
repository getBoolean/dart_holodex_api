part of dart_holodex_api.models;

class VideoWithChannel extends Video {
  /// Returns a new [VideoWithChannel] instance.
  VideoWithChannel({
    required String id,
    required String title,
    required VideoType type,
    String? topicId,
    String? publishedAt,
    required String availableAt,
    int? duration,
    required VideoStatus status,
    String? startScheduled,
    String? startActual,
    String? endActual,
    int? liveViewers,
    String? description,
    String? channelId,
    int? songcount,
    String? language,
    required this.channel,
  }) : super(
    id: id,
    title: title,
    type: type,
    topicId: topicId,
    publishedAt: publishedAt,
    availableAt: availableAt,
    duration: duration,
    status: status,
    startScheduled: startScheduled,
    startActual: startActual,
    endActual: endActual,
    liveViewers: liveViewers,
    description: description,
    channelId: channelId,
    songcount: songcount,
    language: language,
  );

	final ChannelMin channel;

  @override
  VideoWithChannel copyWith({
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
    String? language,
    String? channelId,
    ChannelMin? channel,
  }) {
    return VideoWithChannel(
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
      language: language ?? this.language,
      channelId: channelId ?? this.channelId,
      channel: channel ?? this.channel,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'type': convertVideoTypeToString(type),
      'topic_id': topicId,
      'published_at': publishedAt,
      'available_at': availableAt,
      'duration': duration,
      'status': convertVideoStatusToString(status),
      'start_scheduled': startScheduled,
      'start_actual': startActual,
      'end_actual': endActual,
      'live_viewers': liveViewers,
      'description': description,
      'songcount': songcount,
      'lang': language,
      'channel_id': channelId,
      'channel': channel.toMap(),
    };
  }

  factory VideoWithChannel.fromMap(Map<String, dynamic> map) {
    return VideoWithChannel(
      id: map['id'],
      title: map['title'],
      type: convertStringToVideoType(map['type']) ?? VideoType.clip,
      topicId: map['topic_id'],
      publishedAt: map['published_at'],
      availableAt: map['available_at'],
      duration: map['duration'],
      status: convertStringToVideoStatus(map['status']) ?? VideoStatus.missing,
      startScheduled: map['start_scheduled'],
      startActual: map['start_actual'],
      endActual: map['end_actual'],
      liveViewers: map['live_viewers'],
      description: map['description'],
      songcount: map['songcount'],
      language: map['lang'],
      channelId: map['channel_id'],
      channel: ChannelMin.fromMap(map['channel']),
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory VideoWithChannel.fromJson(String source) => VideoWithChannel.fromMap(json.decode(source));

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
      channel,
    ];
  }
}
