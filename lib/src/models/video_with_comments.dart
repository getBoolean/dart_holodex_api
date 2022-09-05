part of dart_holodex_api.models;

/// An extended [Video] class with [comments].
class VideoWithComments extends Video {
  final List<Comment> comments;

  const VideoWithComments({
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
    required this.comments,
    super.channel,
  });

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
    VideoLiveInfo? liveInfo,
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
      liveInfo: liveInfo ?? this.liveInfo,
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
    return super.toMap()
      ..addAll({
        'comments': comments.map((x) => x.toMap()).toList(),
      });
  }

  factory VideoWithComments.fromMap(Map<String, dynamic> map) {
    return VideoWithComments(
      id: map['id'],
      title: map['title'],
      type: VideoType.values.byCode(map['type']) ?? VideoType.clip,
      topicId: map['topic_id'],
      publishedAt: map['published_at'],
      availableAt: map['available_at'],
      duration: map['duration'],
      status: VideoStatus.values.byCode(map['status']) ?? VideoStatus.missing,
      liveInfo: VideoLiveInfo.fromMap(map['live_info']),
      description: map['description'],
      songcount: map['songcount'],
      channelId: map['channel_id'],
      channel: ChannelMin.fromMap(map['channel']),
      language: map['lang'],
      comments: List<Comment>.from(
        map['comments']?.map((x) => Comment.fromMap(x)) ?? [],
      ),
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory VideoWithComments.fromJson(String source) =>
      VideoWithComments.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    final videoProps = super.props;
    videoProps.addAll([
      'comments: $comments',
    ]);

    return videoProps;
  }
}
