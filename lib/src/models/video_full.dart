part of dart_holodex_api.models;

class VideoFull extends Equatable {
  /// Returns a new [VideoFull] instance.
  VideoFull({
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
    this.channelId,
    this.channelMin,
    this.clips,
    this.sources,
    this.refers,
    this.simulcasts,
    this.mentions,
    this.songcount,
  });

  final String id;

  final String title;

  final VideoType type;

  /// corresponds to a Topic ID, Videos of type `clip` cannot not have topic. Streams may or may not have topic.
  final String? topicId;

  final String? publishedAt;

  /// Takes on the first non-null value of end_actual, start_actual, start_scheduled, or published_at
  final String availableAt;

  /// Duration of the video in seconds
  final int duration;

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

  final ChannelMin? channelMin;

  /// Included when 'includes' contains 'clips'
  final List<VideoWithChannel>? clips;

  /// Included when 'includes' contains 'sources'
  final List<VideoWithChannel>? sources;

  /// Included when 'includes' contains 'refers'
  final List<VideoWithChannel>? refers;

  /// Included when 'includes' contains 'simulcasts'
  final List<VideoWithChannel>? simulcasts;

  /// VTubers mentioned by this video, Included when 'includes' contains 'mentions'
  final List<ChannelMin>? mentions;

  VideoFull copyWith({
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
    ChannelMin? channelMin,
    List<VideoWithChannel>? clips,
    List<VideoWithChannel>? sources,
    List<VideoWithChannel>? refers,
    List<VideoWithChannel>? simulcasts,
    List<ChannelMin>? mentions,
  }) {
    return VideoFull(
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
      channelMin: channelMin ?? this.channelMin,
      clips: clips ?? this.clips,
      sources: sources ?? this.sources,
      refers: refers ?? this.refers,
      simulcasts: simulcasts ?? this.simulcasts,
      mentions: mentions ?? this.mentions,
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
      'status': convertVideoStatusToString(status),
      'start_scheduled': startScheduled,
      'start_actual': startActual,
      'end_actual': endActual,
      'live_viewers': liveViewers,
      'description': description,
      'songcount': songcount,
      'channel_id': channelId,
      'channel': channelMin?.toMap(),
      'clips': clips?.map((x) => x.toMap()).toList(),
      'sources': sources?.map((x) => x.toMap()).toList(),
      'refers': refers?.map((x) => x.toMap()).toList(),
      'simulcasts': simulcasts?.map((x) => x.toMap()).toList(),
      'mentions': mentions?.map((x) => x.toMap()).toList(),
    };
  }

  factory VideoFull.fromMap(Map<String, dynamic> map) {
    return VideoFull(
      id: map['id'],
      title: map['title'],
      type: EnumToString.fromString(VideoType.values, map['type']) ?? VideoType.clip,
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
      channelId: map['channel_id'],
      channelMin: ChannelMin.fromMap(map['channel']),
      clips: List<VideoWithChannel>.from(map['clips']?.map((x) => VideoWithChannel.fromMap(x)) ?? []),
      sources: List<VideoWithChannel>.from(map['sources']?.map((x) => VideoWithChannel.fromMap(x)) ?? []),
      refers: List<VideoWithChannel>.from(map['refers']?.map((x) => VideoWithChannel.fromMap(x)) ?? []),
      simulcasts: List<VideoWithChannel>.from(map['simulcasts']?.map((x) => VideoWithChannel.fromMap(x)) ?? []),
      mentions: List<ChannelMin>.from(map['mentions']?.map((x) => ChannelMin.fromMap(x)) ?? []),
    );
  }

  String toJson() => json.encode(toMap());

  factory VideoFull.fromJson(String source) => VideoFull.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      title,
      type,
      topicId ?? '',
      publishedAt ?? '',
      availableAt,
      duration,
      status,
      startScheduled ?? '',
      startActual ?? '',
      endActual ?? '',
      liveViewers ?? -1,
      description ?? '',
      songcount ?? 0,
      channelId ?? '',
      channelMin ?? '',
      clips ?? [],
      sources ?? [],
      refers ?? [],
      simulcasts ?? [],
      mentions ?? [],
    ];
  }
}
