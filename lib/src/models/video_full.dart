part of dart_holodex_api.models;

/// An extended [Video] class with [comments], [sources], [refers],
/// [simulcasts], [mentions], and [songs] fields.
class VideoFull extends Video {
  /// Returns a new [VideoFull] instance.
  const VideoFull({
    required super.id,
    required super.title,
    required super.type,
    super.topicId,
    super.publishedAt,
    required super.availableAt,
    super.duration,
    required super.status,
    super.liveInfo,
    super.description,
    super.channelId,
    super.songcount,
    super.language,
    super.channel,
    this.clips,
    this.sources,
    this.refers,
    this.simulcasts,
    this.mentions,
    this.songs,
  });

  /// Included when 'includes' contains 'clips'
  final List<Video>? clips;

  /// Included when 'includes' contains 'sources'
  final List<Video>? sources;

  /// Included when 'includes' contains 'refers'
  final List<Video>? refers;

  /// Included when 'includes' contains 'simulcasts'
  final List<Video>? simulcasts;

  /// VTubers mentioned by this video, Included when 'includes' contains 'mentions'
  final List<Channel>? mentions;

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
    VideoLiveInfo? liveInfo,
    String? description,
    int? songcount,
    String? language,
    String? channelId,
    ChannelMin? channel,
    List<Video>? clips,
    List<Video>? sources,
    List<Video>? refers,
    List<Video>? simulcasts,
    List<Channel>? mentions,
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
      liveInfo: liveInfo ?? this.liveInfo,
      description: description ?? this.description,
      songcount: songcount ?? this.songcount,
      language: language ?? this.language,
      channelId: channelId ?? this.channelId,
      channel: channel ?? this.channel,
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
    return super.toMap()
      ..addAll({
        'clips': clips?.map((clip) => clip.toMap()).toList(),
        'sources': sources?.map((source) => source.toMap()).toList(),
        'refers': refers?.map((refer) => refer.toMap()).toList(),
        'simulcasts':
            simulcasts?.map((simulcast) => simulcast.toMap()).toList(),
        'mentions': mentions?.map((mention) => mention.toMap()).toList(),
        'songs': songs?.map((song) => song.toMap()).toList(),
      });
  }

  factory VideoFull.fromMap(Map<String, dynamic> map) {
    return VideoFull(
      id: map['id'],
      title: map['title'],
      type: EnumUtil.convertStringToVideoType(map['type']) ?? VideoType.clip,
      topicId: map['topic_id'],
      publishedAt: map['published_at'],
      availableAt: map['available_at'],
      duration: map['duration'],
      status: EnumUtil.convertStringToVideoStatus(map['status']) ??
          VideoStatus.missing,
      liveInfo: VideoLiveInfo.fromMap(map['live_info']),
      description: map['description'],
      songcount: map['songcount'],
      language: map['lang'],
      channelId: map['channel_id'],
      channel: ChannelMin.fromMap(
        map['channel'],
      ),
      clips: List<Video>.from(
        map['clips']?.map((clip) => Video.fromMap(clip)) ?? [],
      ),
      sources: List<Video>.from(
        map['sources']?.map((source) => Video.fromMap(source)) ?? [],
      ),
      refers: List<Video>.from(
        map['refers']?.map((refer) => Video.fromMap(refer)) ?? [],
      ),
      simulcasts: List<Video>.from(
        map['simulcasts']?.map((simulcast) => Video.fromMap(simulcast)) ?? [],
      ),
      mentions: List<Channel>.from(
        map['mentions']?.map((mention) => Channel.fromMap(mention)) ?? [],
      ),
      songs: List<Song>.from(
        map['songs']?.map((song) => Song.fromMap(song)) ?? [],
      ),
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory VideoFull.fromJson(String source) =>
      VideoFull.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    final videoProps = super.props;
    videoProps.addAll([
      'clips: $clips',
      'sources: $sources',
      'refers: $refers',
      'simulcasts: $simulcasts',
      'mentions: $mentions',
      'songs: $songs',
    ]);

    return videoProps;
  }
}
