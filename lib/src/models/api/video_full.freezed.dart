// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_full.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoFull _$VideoFullFromJson(Map<String, dynamic> json) {
  return _VideoFull.fromJson(json);
}

/// @nodoc
mixin _$VideoFull {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseVideoType)
  VideoType? get type => throw _privateConstructorUsedError;

  /// corresponds to a Topic ID, Videos of type clip cannot not have topic. Streams may or may not have topic.
  @JsonKey(name: 'topic_id')
  String? get topicId => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_at')
  String? get publishedAt => throw _privateConstructorUsedError;

  /// Takes on the first non-null value of end_actual, start_actual, start_scheduled, or published_at
  @JsonKey(name: 'available_at')
  String get availableAt => throw _privateConstructorUsedError;

  /// Duration of the video in seconds
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic)
  VideoStatus get status => throw _privateConstructorUsedError;

  /// Included when includes contains 'live_info'
  @JsonKey(name: 'start_scheduled')
  String? get startScheduled => throw _privateConstructorUsedError;

  /// Included when includes contains 'live_info'
  @JsonKey(name: 'start_actual')
  String? get startActual => throw _privateConstructorUsedError;

  /// Included when includes contains 'live_info'
  @JsonKey(name: 'end_actual')
  String? get endActual => throw _privateConstructorUsedError;

  /// Included when includes contains 'live_info'
  @JsonKey(name: 'live_viewers')
  int? get liveViewers => throw _privateConstructorUsedError;

  /// Included when includes contains 'description'
  String? get description => throw _privateConstructorUsedError;

  /// Number of tagged songs for this video
  int? get songcount => throw _privateConstructorUsedError;
  @JsonKey(name: 'channel_id')
  String? get channelId => throw _privateConstructorUsedError;
  ChannelMin? get channel => throw _privateConstructorUsedError;
  @JsonKey(name: 'lang')
  String? get language => throw _privateConstructorUsedError;
  List<Comment> get comments => throw _privateConstructorUsedError;
  List<Video> get recommendations => throw _privateConstructorUsedError;
  List<Video> get clips => throw _privateConstructorUsedError;
  List<Video> get sources => throw _privateConstructorUsedError;
  List<Video> get refers => throw _privateConstructorUsedError;
  List<Video> get simulcasts => throw _privateConstructorUsedError;
  List<Channel> get mentions => throw _privateConstructorUsedError;
  List<Song> get songs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoFullCopyWith<VideoFull> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoFullCopyWith<$Res> {
  factory $VideoFullCopyWith(VideoFull value, $Res Function(VideoFull) then) =
      _$VideoFullCopyWithImpl<$Res, VideoFull>;
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(fromJson: _parseVideoType)
          VideoType? type,
      @JsonKey(name: 'topic_id')
          String? topicId,
      @JsonKey(name: 'published_at')
          String? publishedAt,
      @JsonKey(name: 'available_at')
          String availableAt,
      int? duration,
      @JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic)
          VideoStatus status,
      @JsonKey(name: 'start_scheduled')
          String? startScheduled,
      @JsonKey(name: 'start_actual')
          String? startActual,
      @JsonKey(name: 'end_actual')
          String? endActual,
      @JsonKey(name: 'live_viewers')
          int? liveViewers,
      String? description,
      int? songcount,
      @JsonKey(name: 'channel_id')
          String? channelId,
      ChannelMin? channel,
      @JsonKey(name: 'lang')
          String? language,
      List<Comment> comments,
      List<Video> recommendations,
      List<Video> clips,
      List<Video> sources,
      List<Video> refers,
      List<Video> simulcasts,
      List<Channel> mentions,
      List<Song> songs});

  $ChannelMinCopyWith<$Res>? get channel;
}

/// @nodoc
class _$VideoFullCopyWithImpl<$Res, $Val extends VideoFull>
    implements $VideoFullCopyWith<$Res> {
  _$VideoFullCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = freezed,
    Object? topicId = freezed,
    Object? publishedAt = freezed,
    Object? availableAt = null,
    Object? duration = freezed,
    Object? status = null,
    Object? startScheduled = freezed,
    Object? startActual = freezed,
    Object? endActual = freezed,
    Object? liveViewers = freezed,
    Object? description = freezed,
    Object? songcount = freezed,
    Object? channelId = freezed,
    Object? channel = freezed,
    Object? language = freezed,
    Object? comments = null,
    Object? recommendations = null,
    Object? clips = null,
    Object? sources = null,
    Object? refers = null,
    Object? simulcasts = null,
    Object? mentions = null,
    Object? songs = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VideoType?,
      topicId: freezed == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      availableAt: null == availableAt
          ? _value.availableAt
          : availableAt // ignore: cast_nullable_to_non_nullable
              as String,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as VideoStatus,
      startScheduled: freezed == startScheduled
          ? _value.startScheduled
          : startScheduled // ignore: cast_nullable_to_non_nullable
              as String?,
      startActual: freezed == startActual
          ? _value.startActual
          : startActual // ignore: cast_nullable_to_non_nullable
              as String?,
      endActual: freezed == endActual
          ? _value.endActual
          : endActual // ignore: cast_nullable_to_non_nullable
              as String?,
      liveViewers: freezed == liveViewers
          ? _value.liveViewers
          : liveViewers // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      songcount: freezed == songcount
          ? _value.songcount
          : songcount // ignore: cast_nullable_to_non_nullable
              as int?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as ChannelMin?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      recommendations: null == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      clips: null == clips
          ? _value.clips
          : clips // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      refers: null == refers
          ? _value.refers
          : refers // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      simulcasts: null == simulcasts
          ? _value.simulcasts
          : simulcasts // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      mentions: null == mentions
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
      songs: null == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<Song>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChannelMinCopyWith<$Res>? get channel {
    if (_value.channel == null) {
      return null;
    }

    return $ChannelMinCopyWith<$Res>(_value.channel!, (value) {
      return _then(_value.copyWith(channel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VideoFullCopyWith<$Res> implements $VideoFullCopyWith<$Res> {
  factory _$$_VideoFullCopyWith(
          _$_VideoFull value, $Res Function(_$_VideoFull) then) =
      __$$_VideoFullCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(fromJson: _parseVideoType)
          VideoType? type,
      @JsonKey(name: 'topic_id')
          String? topicId,
      @JsonKey(name: 'published_at')
          String? publishedAt,
      @JsonKey(name: 'available_at')
          String availableAt,
      int? duration,
      @JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic)
          VideoStatus status,
      @JsonKey(name: 'start_scheduled')
          String? startScheduled,
      @JsonKey(name: 'start_actual')
          String? startActual,
      @JsonKey(name: 'end_actual')
          String? endActual,
      @JsonKey(name: 'live_viewers')
          int? liveViewers,
      String? description,
      int? songcount,
      @JsonKey(name: 'channel_id')
          String? channelId,
      ChannelMin? channel,
      @JsonKey(name: 'lang')
          String? language,
      List<Comment> comments,
      List<Video> recommendations,
      List<Video> clips,
      List<Video> sources,
      List<Video> refers,
      List<Video> simulcasts,
      List<Channel> mentions,
      List<Song> songs});

  @override
  $ChannelMinCopyWith<$Res>? get channel;
}

/// @nodoc
class __$$_VideoFullCopyWithImpl<$Res>
    extends _$VideoFullCopyWithImpl<$Res, _$_VideoFull>
    implements _$$_VideoFullCopyWith<$Res> {
  __$$_VideoFullCopyWithImpl(
      _$_VideoFull _value, $Res Function(_$_VideoFull) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = freezed,
    Object? topicId = freezed,
    Object? publishedAt = freezed,
    Object? availableAt = null,
    Object? duration = freezed,
    Object? status = null,
    Object? startScheduled = freezed,
    Object? startActual = freezed,
    Object? endActual = freezed,
    Object? liveViewers = freezed,
    Object? description = freezed,
    Object? songcount = freezed,
    Object? channelId = freezed,
    Object? channel = freezed,
    Object? language = freezed,
    Object? comments = null,
    Object? recommendations = null,
    Object? clips = null,
    Object? sources = null,
    Object? refers = null,
    Object? simulcasts = null,
    Object? mentions = null,
    Object? songs = null,
  }) {
    return _then(_$_VideoFull(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VideoType?,
      topicId: freezed == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      availableAt: null == availableAt
          ? _value.availableAt
          : availableAt // ignore: cast_nullable_to_non_nullable
              as String,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as VideoStatus,
      startScheduled: freezed == startScheduled
          ? _value.startScheduled
          : startScheduled // ignore: cast_nullable_to_non_nullable
              as String?,
      startActual: freezed == startActual
          ? _value.startActual
          : startActual // ignore: cast_nullable_to_non_nullable
              as String?,
      endActual: freezed == endActual
          ? _value.endActual
          : endActual // ignore: cast_nullable_to_non_nullable
              as String?,
      liveViewers: freezed == liveViewers
          ? _value.liveViewers
          : liveViewers // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      songcount: freezed == songcount
          ? _value.songcount
          : songcount // ignore: cast_nullable_to_non_nullable
              as int?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as ChannelMin?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      recommendations: null == recommendations
          ? _value._recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      clips: null == clips
          ? _value._clips
          : clips // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      sources: null == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      refers: null == refers
          ? _value._refers
          : refers // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      simulcasts: null == simulcasts
          ? _value._simulcasts
          : simulcasts // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      mentions: null == mentions
          ? _value._mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
      songs: null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<Song>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoFull extends _VideoFull {
  const _$_VideoFull(
      {required this.id,
      required this.title,
      @JsonKey(fromJson: _parseVideoType)
          this.type,
      @JsonKey(name: 'topic_id')
          this.topicId,
      @JsonKey(name: 'published_at')
          this.publishedAt,
      @JsonKey(name: 'available_at')
          required this.availableAt,
      this.duration,
      @JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic)
          required this.status,
      @JsonKey(name: 'start_scheduled')
          this.startScheduled,
      @JsonKey(name: 'start_actual')
          this.startActual,
      @JsonKey(name: 'end_actual')
          this.endActual,
      @JsonKey(name: 'live_viewers')
          this.liveViewers,
      this.description,
      this.songcount,
      @JsonKey(name: 'channel_id')
          this.channelId,
      this.channel,
      @JsonKey(name: 'lang')
          this.language,
      final List<Comment> comments = const [],
      final List<Video> recommendations = const [],
      final List<Video> clips = const [],
      final List<Video> sources = const [],
      final List<Video> refers = const [],
      final List<Video> simulcasts = const [],
      final List<Channel> mentions = const [],
      final List<Song> songs = const []})
      : _comments = comments,
        _recommendations = recommendations,
        _clips = clips,
        _sources = sources,
        _refers = refers,
        _simulcasts = simulcasts,
        _mentions = mentions,
        _songs = songs,
        super._();

  factory _$_VideoFull.fromJson(Map<String, dynamic> json) =>
      _$$_VideoFullFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey(fromJson: _parseVideoType)
  final VideoType? type;

  /// corresponds to a Topic ID, Videos of type clip cannot not have topic. Streams may or may not have topic.
  @override
  @JsonKey(name: 'topic_id')
  final String? topicId;
  @override
  @JsonKey(name: 'published_at')
  final String? publishedAt;

  /// Takes on the first non-null value of end_actual, start_actual, start_scheduled, or published_at
  @override
  @JsonKey(name: 'available_at')
  final String availableAt;

  /// Duration of the video in seconds
  @override
  final int? duration;
  @override
  @JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic)
  final VideoStatus status;

  /// Included when includes contains 'live_info'
  @override
  @JsonKey(name: 'start_scheduled')
  final String? startScheduled;

  /// Included when includes contains 'live_info'
  @override
  @JsonKey(name: 'start_actual')
  final String? startActual;

  /// Included when includes contains 'live_info'
  @override
  @JsonKey(name: 'end_actual')
  final String? endActual;

  /// Included when includes contains 'live_info'
  @override
  @JsonKey(name: 'live_viewers')
  final int? liveViewers;

  /// Included when includes contains 'description'
  @override
  final String? description;

  /// Number of tagged songs for this video
  @override
  final int? songcount;
  @override
  @JsonKey(name: 'channel_id')
  final String? channelId;
  @override
  final ChannelMin? channel;
  @override
  @JsonKey(name: 'lang')
  final String? language;
  final List<Comment> _comments;
  @override
  @JsonKey()
  List<Comment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  final List<Video> _recommendations;
  @override
  @JsonKey()
  List<Video> get recommendations {
    if (_recommendations is EqualUnmodifiableListView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendations);
  }

  final List<Video> _clips;
  @override
  @JsonKey()
  List<Video> get clips {
    if (_clips is EqualUnmodifiableListView) return _clips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clips);
  }

  final List<Video> _sources;
  @override
  @JsonKey()
  List<Video> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  final List<Video> _refers;
  @override
  @JsonKey()
  List<Video> get refers {
    if (_refers is EqualUnmodifiableListView) return _refers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_refers);
  }

  final List<Video> _simulcasts;
  @override
  @JsonKey()
  List<Video> get simulcasts {
    if (_simulcasts is EqualUnmodifiableListView) return _simulcasts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_simulcasts);
  }

  final List<Channel> _mentions;
  @override
  @JsonKey()
  List<Channel> get mentions {
    if (_mentions is EqualUnmodifiableListView) return _mentions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mentions);
  }

  final List<Song> _songs;
  @override
  @JsonKey()
  List<Song> get songs {
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  @override
  String toString() {
    return 'VideoFull(id: $id, title: $title, type: $type, topicId: $topicId, publishedAt: $publishedAt, availableAt: $availableAt, duration: $duration, status: $status, startScheduled: $startScheduled, startActual: $startActual, endActual: $endActual, liveViewers: $liveViewers, description: $description, songcount: $songcount, channelId: $channelId, channel: $channel, language: $language, comments: $comments, recommendations: $recommendations, clips: $clips, sources: $sources, refers: $refers, simulcasts: $simulcasts, mentions: $mentions, songs: $songs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoFull &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.topicId, topicId) || other.topicId == topicId) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.availableAt, availableAt) ||
                other.availableAt == availableAt) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startScheduled, startScheduled) ||
                other.startScheduled == startScheduled) &&
            (identical(other.startActual, startActual) ||
                other.startActual == startActual) &&
            (identical(other.endActual, endActual) ||
                other.endActual == endActual) &&
            (identical(other.liveViewers, liveViewers) ||
                other.liveViewers == liveViewers) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.songcount, songcount) ||
                other.songcount == songcount) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.language, language) ||
                other.language == language) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality()
                .equals(other._recommendations, _recommendations) &&
            const DeepCollectionEquality().equals(other._clips, _clips) &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            const DeepCollectionEquality().equals(other._refers, _refers) &&
            const DeepCollectionEquality()
                .equals(other._simulcasts, _simulcasts) &&
            const DeepCollectionEquality().equals(other._mentions, _mentions) &&
            const DeepCollectionEquality().equals(other._songs, _songs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        type,
        topicId,
        publishedAt,
        availableAt,
        duration,
        status,
        startScheduled,
        startActual,
        endActual,
        liveViewers,
        description,
        songcount,
        channelId,
        channel,
        language,
        const DeepCollectionEquality().hash(_comments),
        const DeepCollectionEquality().hash(_recommendations),
        const DeepCollectionEquality().hash(_clips),
        const DeepCollectionEquality().hash(_sources),
        const DeepCollectionEquality().hash(_refers),
        const DeepCollectionEquality().hash(_simulcasts),
        const DeepCollectionEquality().hash(_mentions),
        const DeepCollectionEquality().hash(_songs)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoFullCopyWith<_$_VideoFull> get copyWith =>
      __$$_VideoFullCopyWithImpl<_$_VideoFull>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoFullToJson(
      this,
    );
  }
}

abstract class _VideoFull extends VideoFull {
  const factory _VideoFull(
      {required final String id,
      required final String title,
      @JsonKey(fromJson: _parseVideoType)
          final VideoType? type,
      @JsonKey(name: 'topic_id')
          final String? topicId,
      @JsonKey(name: 'published_at')
          final String? publishedAt,
      @JsonKey(name: 'available_at')
          required final String availableAt,
      final int? duration,
      @JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic)
          required final VideoStatus status,
      @JsonKey(name: 'start_scheduled')
          final String? startScheduled,
      @JsonKey(name: 'start_actual')
          final String? startActual,
      @JsonKey(name: 'end_actual')
          final String? endActual,
      @JsonKey(name: 'live_viewers')
          final int? liveViewers,
      final String? description,
      final int? songcount,
      @JsonKey(name: 'channel_id')
          final String? channelId,
      final ChannelMin? channel,
      @JsonKey(name: 'lang')
          final String? language,
      final List<Comment> comments,
      final List<Video> recommendations,
      final List<Video> clips,
      final List<Video> sources,
      final List<Video> refers,
      final List<Video> simulcasts,
      final List<Channel> mentions,
      final List<Song> songs}) = _$_VideoFull;
  const _VideoFull._() : super._();

  factory _VideoFull.fromJson(Map<String, dynamic> json) =
      _$_VideoFull.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(fromJson: _parseVideoType)
  VideoType? get type;
  @override

  /// corresponds to a Topic ID, Videos of type clip cannot not have topic. Streams may or may not have topic.
  @JsonKey(name: 'topic_id')
  String? get topicId;
  @override
  @JsonKey(name: 'published_at')
  String? get publishedAt;
  @override

  /// Takes on the first non-null value of end_actual, start_actual, start_scheduled, or published_at
  @JsonKey(name: 'available_at')
  String get availableAt;
  @override

  /// Duration of the video in seconds
  int? get duration;
  @override
  @JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic)
  VideoStatus get status;
  @override

  /// Included when includes contains 'live_info'
  @JsonKey(name: 'start_scheduled')
  String? get startScheduled;
  @override

  /// Included when includes contains 'live_info'
  @JsonKey(name: 'start_actual')
  String? get startActual;
  @override

  /// Included when includes contains 'live_info'
  @JsonKey(name: 'end_actual')
  String? get endActual;
  @override

  /// Included when includes contains 'live_info'
  @JsonKey(name: 'live_viewers')
  int? get liveViewers;
  @override

  /// Included when includes contains 'description'
  String? get description;
  @override

  /// Number of tagged songs for this video
  int? get songcount;
  @override
  @JsonKey(name: 'channel_id')
  String? get channelId;
  @override
  ChannelMin? get channel;
  @override
  @JsonKey(name: 'lang')
  String? get language;
  @override
  List<Comment> get comments;
  @override
  List<Video> get recommendations;
  @override
  List<Video> get clips;
  @override
  List<Video> get sources;
  @override
  List<Video> get refers;
  @override
  List<Video> get simulcasts;
  @override
  List<Channel> get mentions;
  @override
  List<Song> get songs;
  @override
  @JsonKey(ignore: true)
  _$$_VideoFullCopyWith<_$_VideoFull> get copyWith =>
      throw _privateConstructorUsedError;
}
