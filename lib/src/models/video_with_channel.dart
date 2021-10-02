part of dart_holodex_api.models;

class VideoWithChannel extends Equatable {
	final String id;
	final String title;
	final VideoType type;

  /// corresponds to a Topic ID, Videos of type clip cannot not have topic. Streams may or may not have topic.
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

  ///Included when includes contains 'description'
	final String? description;

  /// Number of tagged songs for this video
	final int songcount;

	final String? channelId;

	final ChannelMin channel;
  
  /// Returns a new [VideoWithChannel] instance.
  VideoWithChannel({
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
    required this.channelId,
    required this.channel,
    required this.songcount,
  });

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
      channelId: channelId ?? this.channelId,
      channel: channel ?? this.channel,
    );
  }

  Map<String, dynamic> toMap() {
    final stringStatus = EnumToString.convertToString(status).replaceAll('new_', 'new');
    return {
      'id': id,
      'title': title,
      'type': EnumToString.convertToString(type),
      'topic_id': topicId,
      'published_at': publishedAt,
      'available_at': availableAt,
      'duration': duration,
      'status': stringStatus,
      'start_scheduled': startScheduled,
      'start_actual': startActual,
      'end_actual': endActual,
      'live_viewers': liveViewers,
      'description': description,
      'songcount': songcount,
      'channel_id': channelId,
      'channel': channel.toMap(),
    };
  }

  factory VideoWithChannel.fromMap(Map<String, dynamic> map) {
    final stringStatus = (map['status'] as String).replaceAll('new', 'new_');
    return VideoWithChannel(
      id: map['id'],
      title: map['title'],
      type: EnumToString.fromString(VideoType.values, map['type']) ?? VideoType.clip,
      topicId: map['topic_id'],
      publishedAt: map['published_at'],
      availableAt: map['available_at'],
      duration: map['duration'],
      status: EnumToString.fromString(VideoStatus .values, stringStatus) ?? VideoStatus.missing,
      startScheduled: map['start_scheduled'],
      startActual: map['start_actual'],
      endActual: map['end_actual'],
      liveViewers: map['live_viewers'],
      description: map['description'],
      songcount: map['songcount'],
      channelId: map['channel_id'],
      channel: ChannelMin.fromMap(map['channel']),
    );
  }

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
      songcount,
      channelId ?? '',
      channel,
    ];
  }
}
