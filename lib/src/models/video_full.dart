part of dart_holodex_api.models;

class VideoFull extends Video {
  /// Returns a new [VideoFull] instance.
  VideoFull({
    required String id,
    required String title,
    required VideoType type,
    String? topicId,
    String? publishedAt,
    required String availableAt,
    required int duration,
    required VideoStatus status,
    String? startScheduled,
    String? startActual,
    String? endActual,
    int? liveViewers,
    String? description,
    String? channelId,
    int? songcount,
    String? language,
    this.channelMin,
    this.clips,
    this.sources,
    this.refers,
    this.simulcasts,
    this.mentions,
    this.songs,
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

  final List<Song>? songs;

  @override
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
    String? language,
    String? channelId,
    ChannelMin? channelMin,
    List<VideoWithChannel>? clips,
    List<VideoWithChannel>? sources,
    List<VideoWithChannel>? refers,
    List<VideoWithChannel>? simulcasts,
    List<ChannelMin>? mentions,
    List<Song>? songs,
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
      language: language ?? this.language,
      channelId: channelId ?? this.channelId,
      channelMin: channelMin ?? this.channelMin,
      clips: clips ?? this.clips,
      sources: sources ?? this.sources,
      refers: refers ?? this.refers,
      simulcasts: simulcasts ?? this.simulcasts,
      mentions: mentions ?? this.mentions,
      songs: songs ?? this.songs,
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
      'status': convertVideoStatusToString(status),
      'start_scheduled': startScheduled,
      'start_actual': startActual,
      'end_actual': endActual,
      'live_viewers': liveViewers,
      'description': description,
      'songcount': songcount,
      'lang': language,
      'channel_id': channelId,
      'channel': channelMin?.toMap(),
      'clips': clips?.map((clip) => clip.toMap()).toList(),
      'sources': sources?.map((source) => source.toMap()).toList(),
      'refers': refers?.map((refer) => refer.toMap()).toList(),
      'simulcasts': simulcasts?.map((simulcast) => simulcast.toMap()).toList(),
      'mentions': mentions?.map((mention) => mention.toMap()).toList(),
      'songs': songs?.map((song) => song.toMap()).toList(),
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
      language: map['lang'],
      channelId: map['channel_id'],
      channelMin: ChannelMin.fromMap(map['channel']),
      clips: List<VideoWithChannel>.from(map['clips']?.map((clip) => VideoWithChannel.fromMap(clip)) ?? []),
      sources: List<VideoWithChannel>.from(map['sources']?.map((source) => VideoWithChannel.fromMap(source)) ?? []),
      refers: List<VideoWithChannel>.from(map['refers']?.map((refer) => VideoWithChannel.fromMap(refer)) ?? []),
      simulcasts: List<VideoWithChannel>.from(map['simulcasts']?.map((simulcast) => VideoWithChannel.fromMap(simulcast)) ?? []),
      mentions: List<ChannelMin>.from(map['mentions']?.map((mention) => ChannelMin.fromMap(mention)) ?? []),
      songs: List<Song>.from(map['songs']?.map((song) => Song.fromMap(song)) ?? [])
    );
  }

  @override
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
      topicId ?? 'Topic id not given',
      publishedAt ?? 'Published at not given',
      availableAt,
      duration,
      status,
      startScheduled ?? 'Scheduled start not given',
      startActual ?? 'Actual start not given',
      endActual ?? 'Actual end not given',
      liveViewers ?? 'Live viewers not given',
      description ?? 'Description not given',
      songcount ?? 'Song count not given',
      language ?? 'Language not given',
      channelId ?? 'Channel id not given',
      channelMin ?? 'Channel not given',
      clips ?? 'Clips not given',
      sources ?? 'Sources not given',
      refers ?? 'Refers not given',
      simulcasts ?? 'Simulcasts not given',
      mentions ?? 'Mentions not given',
    ];
  }
}
