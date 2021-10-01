part of dart_holodex_api.models;

class VideoWithChannel extends Equatable {
	final String id;
	final String title;
	final VideoTypeEnum type;

  /// corresponds to a Topic ID, Videos of type clip cannot not have topic. Streams may or may not have topic.
	final String? topicId;

	final DateTime publishedAt;

  /// Takes on the first non-null value of end_actual, start_actual, start_scheduled, or published_at
	final DateTime availableAt;

  /// Duration of the video in seconds
	final int duration;

	final VideoStatusEnum status;

  /// Included when includes contains 'live_info'
	final DateTime? startScheduled;

  /// Included when includes contains 'live_info'
	final DateTime? startActual;

  /// Included when includes contains 'live_info'
	final DateTime? endActual;

  /// Included when includes contains 'live_info'
	final int? liveViewers;

  ///Included when includes contains 'description'
	final String? description;

  /// Number of tagged songs for this video
	final int songcount;

	final String channelId;

	final ChannelMin channel;
  
  VideoWithChannel({
    required this.id,
    required this.title,
    required this.type,
    this.topicId,
    required this.publishedAt,
    required this.availableAt,
    required this.duration,
    required this.status,
    this.startScheduled,
    this.startActual,
    this.endActual,
    this.liveViewers,
    this.description,
    required this.songcount,
    required this.channelId,
    required this.channel,
  });

  VideoWithChannel copyWith({
    String? id,
    String? title,
    VideoTypeEnum? type,
    String? topicId,
    DateTime? publishedAt,
    DateTime? availableAt,
    int? duration,
    VideoStatusEnum? status,
    DateTime? startScheduled,
    DateTime? startActual,
    DateTime? endActual,
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
      'published_at': publishedAt.millisecondsSinceEpoch,
      'available_at': availableAt.millisecondsSinceEpoch,
      'duration': duration,
      'status': stringStatus,
      'start_scheduled': startScheduled?.millisecondsSinceEpoch,
      'start_actual': startActual?.millisecondsSinceEpoch,
      'end_actual': endActual?.millisecondsSinceEpoch,
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
      type: EnumToString.fromString(VideoTypeEnum.values, map['type']) ?? VideoTypeEnum.clip,
      topicId: map['topic_id'],
      publishedAt: DateTime.fromMillisecondsSinceEpoch(map['published_at']),
      availableAt: DateTime.fromMillisecondsSinceEpoch(map['available_at']),
      duration: map['duration'],
      status: EnumToString.fromString(VideoStatusEnum .values, stringStatus) ?? VideoStatusEnum.missing,
      startScheduled: DateTime.fromMillisecondsSinceEpoch(map['start_scheduled']),
      startActual: DateTime.fromMillisecondsSinceEpoch(map['start_actual']),
      endActual: DateTime.fromMillisecondsSinceEpoch(map['end_actual']),
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
      publishedAt,
      availableAt,
      duration,
      status,
      // startScheduled,
      // startActual,
      // endActual,
      liveViewers ?? -1,
      description ?? '',
      songcount,
      channelId,
      channel,
    ];
  }
}
