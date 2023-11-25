// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Video _$VideoFromJson(Map<String, dynamic> json) {
  return _Video.fromJson(json);
}

/// @nodoc
mixin _$Video {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res, Video>;
  @useResult
  $Res call(
      {String id,
      String title,
      VideoType? type,
      @JsonKey(name: 'topic_id') String? topicId,
      @JsonKey(name: 'published_at') String? publishedAt,
      @JsonKey(name: 'available_at') String availableAt,
      int? duration,
      @JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic)
      VideoStatus status,
      @JsonKey(name: 'start_scheduled') String? startScheduled,
      @JsonKey(name: 'start_actual') String? startActual,
      @JsonKey(name: 'end_actual') String? endActual,
      @JsonKey(name: 'live_viewers') int? liveViewers,
      String? description,
      int? songcount,
      @JsonKey(name: 'channel_id') String? channelId,
      ChannelMin? channel,
      @JsonKey(name: 'lang') String? language});

  $ChannelMinCopyWith<$Res>? get channel;
}

/// @nodoc
class _$VideoCopyWithImpl<$Res, $Val extends Video>
    implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

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
abstract class _$$VideoImplCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$$VideoImplCopyWith(
          _$VideoImpl value, $Res Function(_$VideoImpl) then) =
      __$$VideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      VideoType? type,
      @JsonKey(name: 'topic_id') String? topicId,
      @JsonKey(name: 'published_at') String? publishedAt,
      @JsonKey(name: 'available_at') String availableAt,
      int? duration,
      @JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic)
      VideoStatus status,
      @JsonKey(name: 'start_scheduled') String? startScheduled,
      @JsonKey(name: 'start_actual') String? startActual,
      @JsonKey(name: 'end_actual') String? endActual,
      @JsonKey(name: 'live_viewers') int? liveViewers,
      String? description,
      int? songcount,
      @JsonKey(name: 'channel_id') String? channelId,
      ChannelMin? channel,
      @JsonKey(name: 'lang') String? language});

  @override
  $ChannelMinCopyWith<$Res>? get channel;
}

/// @nodoc
class __$$VideoImplCopyWithImpl<$Res>
    extends _$VideoCopyWithImpl<$Res, _$VideoImpl>
    implements _$$VideoImplCopyWith<$Res> {
  __$$VideoImplCopyWithImpl(
      _$VideoImpl _value, $Res Function(_$VideoImpl) _then)
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
  }) {
    return _then(_$VideoImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoImpl extends _Video {
  const _$VideoImpl(
      {required this.id,
      required this.title,
      this.type,
      @JsonKey(name: 'topic_id') this.topicId,
      @JsonKey(name: 'published_at') this.publishedAt,
      @JsonKey(name: 'available_at') required this.availableAt,
      this.duration,
      @JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic)
      required this.status,
      @JsonKey(name: 'start_scheduled') this.startScheduled,
      @JsonKey(name: 'start_actual') this.startActual,
      @JsonKey(name: 'end_actual') this.endActual,
      @JsonKey(name: 'live_viewers') this.liveViewers,
      this.description,
      this.songcount,
      @JsonKey(name: 'channel_id') this.channelId,
      this.channel,
      @JsonKey(name: 'lang') this.language})
      : super._();

  factory _$VideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
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

  @override
  String toString() {
    return 'Video(id: $id, title: $title, type: $type, topicId: $topicId, publishedAt: $publishedAt, availableAt: $availableAt, duration: $duration, status: $status, startScheduled: $startScheduled, startActual: $startActual, endActual: $endActual, liveViewers: $liveViewers, description: $description, songcount: $songcount, channelId: $channelId, channel: $channel, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoImpl &&
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
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
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
      language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      __$$VideoImplCopyWithImpl<_$VideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoImplToJson(
      this,
    );
  }
}

abstract class _Video extends Video {
  const factory _Video(
      {required final String id,
      required final String title,
      final VideoType? type,
      @JsonKey(name: 'topic_id') final String? topicId,
      @JsonKey(name: 'published_at') final String? publishedAt,
      @JsonKey(name: 'available_at') required final String availableAt,
      final int? duration,
      @JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic)
      required final VideoStatus status,
      @JsonKey(name: 'start_scheduled') final String? startScheduled,
      @JsonKey(name: 'start_actual') final String? startActual,
      @JsonKey(name: 'end_actual') final String? endActual,
      @JsonKey(name: 'live_viewers') final int? liveViewers,
      final String? description,
      final int? songcount,
      @JsonKey(name: 'channel_id') final String? channelId,
      final ChannelMin? channel,
      @JsonKey(name: 'lang') final String? language}) = _$VideoImpl;
  const _Video._() : super._();

  factory _Video.fromJson(Map<String, dynamic> json) = _$VideoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
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
  @JsonKey(ignore: true)
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
