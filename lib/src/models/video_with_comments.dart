part of dart_holodex_api.models;

class VideoWithComments extends Video {
  final List<Comment> comments;

  VideoWithComments({
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
    required this.comments,
    ChannelMin? channel,
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
    channel: channel,
  );

  @override
  VideoWithComments copyWith({
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
    List<Comment>? comments,
  }) {
    return VideoWithComments(
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
      comments: comments ?? this.comments,
    );
  }

  @override
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
      'channel': channel?.toMap(),
      'lang': language,
      'comments': comments.map((x) => x.toMap()).toList(),
    };
  }

  factory VideoWithComments.fromMap(Map<String, dynamic> map) {
    return VideoWithComments(
      id: map['id'],
      title: map['title'],
      type: EnumToString.fromString(VideoType.values, map['type']) ?? VideoType.clip,
      topicId: map['topic_id'],
      publishedAt: map['published_at'],
      availableAt: map['available_at'],
      duration: map['duration'],
      status: EnumUtil.convertStringToVideoStatus(map['status']) ?? VideoStatus.missing,
      startScheduled: map['start_scheduled'],
      startActual: map['start_actual'],
      endActual: map['end_actual'],
      liveViewers: map['live_viewers'],
      description: map['description'],
      songcount: map['songcount'],
      channelId: map['channel_id'],
      channel: ChannelMin.fromMap(map['channel']),
      language: map['lang'],
      comments: List<Comment>.from(map['comments']?.map((x) => Comment.fromMap(x))),
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory VideoWithComments.fromJson(String source) => VideoWithComments.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
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
    channel ?? 'Channel not given',
    comments
  ];
}
