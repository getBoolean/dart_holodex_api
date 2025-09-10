// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Video {

 String get id; String get title; VideoType? get type;/// corresponds to a Topic ID, Videos of type clip cannot not have topic. Streams may or may not have topic.
@JsonKey(name: 'topic_id') String? get topicId;@JsonKey(name: 'published_at') String? get publishedAt;/// Takes on the first non-null value of end_actual, start_actual, start_scheduled, or published_at
@JsonKey(name: 'available_at') String get availableAt;/// Duration of the video in seconds
 int? get duration;@JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic) VideoStatus get status;/// Included when includes contains 'live_info'
@JsonKey(name: 'start_scheduled') String? get startScheduled;/// Included when includes contains 'live_info'
@JsonKey(name: 'start_actual') String? get startActual;/// Included when includes contains 'live_info'
@JsonKey(name: 'end_actual') String? get endActual;/// Included when includes contains 'live_info'
@JsonKey(name: 'live_viewers') int? get liveViewers;/// Included when includes contains 'description'
 String? get description;/// Number of tagged songs for this video
 int? get songcount;@JsonKey(name: 'channel_id') String? get channelId; ChannelMin? get channel;@JsonKey(name: 'lang') String? get language;
/// Create a copy of Video
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoCopyWith<Video> get copyWith => _$VideoCopyWithImpl<Video>(this as Video, _$identity);

  /// Serializes this Video to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Video&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.availableAt, availableAt) || other.availableAt == availableAt)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.status, status) || other.status == status)&&(identical(other.startScheduled, startScheduled) || other.startScheduled == startScheduled)&&(identical(other.startActual, startActual) || other.startActual == startActual)&&(identical(other.endActual, endActual) || other.endActual == endActual)&&(identical(other.liveViewers, liveViewers) || other.liveViewers == liveViewers)&&(identical(other.description, description) || other.description == description)&&(identical(other.songcount, songcount) || other.songcount == songcount)&&(identical(other.channelId, channelId) || other.channelId == channelId)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,type,topicId,publishedAt,availableAt,duration,status,startScheduled,startActual,endActual,liveViewers,description,songcount,channelId,channel,language);

@override
String toString() {
  return 'Video(id: $id, title: $title, type: $type, topicId: $topicId, publishedAt: $publishedAt, availableAt: $availableAt, duration: $duration, status: $status, startScheduled: $startScheduled, startActual: $startActual, endActual: $endActual, liveViewers: $liveViewers, description: $description, songcount: $songcount, channelId: $channelId, channel: $channel, language: $language)';
}


}

/// @nodoc
abstract mixin class $VideoCopyWith<$Res>  {
  factory $VideoCopyWith(Video value, $Res Function(Video) _then) = _$VideoCopyWithImpl;
@useResult
$Res call({
 String id, String title, VideoType? type,@JsonKey(name: 'topic_id') String? topicId,@JsonKey(name: 'published_at') String? publishedAt,@JsonKey(name: 'available_at') String availableAt, int? duration,@JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic) VideoStatus status,@JsonKey(name: 'start_scheduled') String? startScheduled,@JsonKey(name: 'start_actual') String? startActual,@JsonKey(name: 'end_actual') String? endActual,@JsonKey(name: 'live_viewers') int? liveViewers, String? description, int? songcount,@JsonKey(name: 'channel_id') String? channelId, ChannelMin? channel,@JsonKey(name: 'lang') String? language
});


$ChannelMinCopyWith<$Res>? get channel;

}
/// @nodoc
class _$VideoCopyWithImpl<$Res>
    implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._self, this._then);

  final Video _self;
  final $Res Function(Video) _then;

/// Create a copy of Video
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? type = freezed,Object? topicId = freezed,Object? publishedAt = freezed,Object? availableAt = null,Object? duration = freezed,Object? status = null,Object? startScheduled = freezed,Object? startActual = freezed,Object? endActual = freezed,Object? liveViewers = freezed,Object? description = freezed,Object? songcount = freezed,Object? channelId = freezed,Object? channel = freezed,Object? language = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as VideoType?,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String?,availableAt: null == availableAt ? _self.availableAt : availableAt // ignore: cast_nullable_to_non_nullable
as String,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VideoStatus,startScheduled: freezed == startScheduled ? _self.startScheduled : startScheduled // ignore: cast_nullable_to_non_nullable
as String?,startActual: freezed == startActual ? _self.startActual : startActual // ignore: cast_nullable_to_non_nullable
as String?,endActual: freezed == endActual ? _self.endActual : endActual // ignore: cast_nullable_to_non_nullable
as String?,liveViewers: freezed == liveViewers ? _self.liveViewers : liveViewers // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,songcount: freezed == songcount ? _self.songcount : songcount // ignore: cast_nullable_to_non_nullable
as int?,channelId: freezed == channelId ? _self.channelId : channelId // ignore: cast_nullable_to_non_nullable
as String?,channel: freezed == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as ChannelMin?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Video
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChannelMinCopyWith<$Res>? get channel {
    if (_self.channel == null) {
    return null;
  }

  return $ChannelMinCopyWith<$Res>(_self.channel!, (value) {
    return _then(_self.copyWith(channel: value));
  });
}
}


/// Adds pattern-matching-related methods to [Video].
extension VideoPatterns on Video {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Video value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Video() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Video value)  $default,){
final _that = this;
switch (_that) {
case _Video():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Video value)?  $default,){
final _that = this;
switch (_that) {
case _Video() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  VideoType? type, @JsonKey(name: 'topic_id')  String? topicId, @JsonKey(name: 'published_at')  String? publishedAt, @JsonKey(name: 'available_at')  String availableAt,  int? duration, @JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic)  VideoStatus status, @JsonKey(name: 'start_scheduled')  String? startScheduled, @JsonKey(name: 'start_actual')  String? startActual, @JsonKey(name: 'end_actual')  String? endActual, @JsonKey(name: 'live_viewers')  int? liveViewers,  String? description,  int? songcount, @JsonKey(name: 'channel_id')  String? channelId,  ChannelMin? channel, @JsonKey(name: 'lang')  String? language)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Video() when $default != null:
return $default(_that.id,_that.title,_that.type,_that.topicId,_that.publishedAt,_that.availableAt,_that.duration,_that.status,_that.startScheduled,_that.startActual,_that.endActual,_that.liveViewers,_that.description,_that.songcount,_that.channelId,_that.channel,_that.language);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  VideoType? type, @JsonKey(name: 'topic_id')  String? topicId, @JsonKey(name: 'published_at')  String? publishedAt, @JsonKey(name: 'available_at')  String availableAt,  int? duration, @JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic)  VideoStatus status, @JsonKey(name: 'start_scheduled')  String? startScheduled, @JsonKey(name: 'start_actual')  String? startActual, @JsonKey(name: 'end_actual')  String? endActual, @JsonKey(name: 'live_viewers')  int? liveViewers,  String? description,  int? songcount, @JsonKey(name: 'channel_id')  String? channelId,  ChannelMin? channel, @JsonKey(name: 'lang')  String? language)  $default,) {final _that = this;
switch (_that) {
case _Video():
return $default(_that.id,_that.title,_that.type,_that.topicId,_that.publishedAt,_that.availableAt,_that.duration,_that.status,_that.startScheduled,_that.startActual,_that.endActual,_that.liveViewers,_that.description,_that.songcount,_that.channelId,_that.channel,_that.language);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  VideoType? type, @JsonKey(name: 'topic_id')  String? topicId, @JsonKey(name: 'published_at')  String? publishedAt, @JsonKey(name: 'available_at')  String availableAt,  int? duration, @JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic)  VideoStatus status, @JsonKey(name: 'start_scheduled')  String? startScheduled, @JsonKey(name: 'start_actual')  String? startActual, @JsonKey(name: 'end_actual')  String? endActual, @JsonKey(name: 'live_viewers')  int? liveViewers,  String? description,  int? songcount, @JsonKey(name: 'channel_id')  String? channelId,  ChannelMin? channel, @JsonKey(name: 'lang')  String? language)?  $default,) {final _that = this;
switch (_that) {
case _Video() when $default != null:
return $default(_that.id,_that.title,_that.type,_that.topicId,_that.publishedAt,_that.availableAt,_that.duration,_that.status,_that.startScheduled,_that.startActual,_that.endActual,_that.liveViewers,_that.description,_that.songcount,_that.channelId,_that.channel,_that.language);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Video extends Video {
  const _Video({required this.id, required this.title, this.type, @JsonKey(name: 'topic_id') this.topicId, @JsonKey(name: 'published_at') this.publishedAt, @JsonKey(name: 'available_at') required this.availableAt, this.duration, @JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic) required this.status, @JsonKey(name: 'start_scheduled') this.startScheduled, @JsonKey(name: 'start_actual') this.startActual, @JsonKey(name: 'end_actual') this.endActual, @JsonKey(name: 'live_viewers') this.liveViewers, this.description, this.songcount, @JsonKey(name: 'channel_id') this.channelId, this.channel, @JsonKey(name: 'lang') this.language}): super._();
  factory _Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);

@override final  String id;
@override final  String title;
@override final  VideoType? type;
/// corresponds to a Topic ID, Videos of type clip cannot not have topic. Streams may or may not have topic.
@override@JsonKey(name: 'topic_id') final  String? topicId;
@override@JsonKey(name: 'published_at') final  String? publishedAt;
/// Takes on the first non-null value of end_actual, start_actual, start_scheduled, or published_at
@override@JsonKey(name: 'available_at') final  String availableAt;
/// Duration of the video in seconds
@override final  int? duration;
@override@JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic) final  VideoStatus status;
/// Included when includes contains 'live_info'
@override@JsonKey(name: 'start_scheduled') final  String? startScheduled;
/// Included when includes contains 'live_info'
@override@JsonKey(name: 'start_actual') final  String? startActual;
/// Included when includes contains 'live_info'
@override@JsonKey(name: 'end_actual') final  String? endActual;
/// Included when includes contains 'live_info'
@override@JsonKey(name: 'live_viewers') final  int? liveViewers;
/// Included when includes contains 'description'
@override final  String? description;
/// Number of tagged songs for this video
@override final  int? songcount;
@override@JsonKey(name: 'channel_id') final  String? channelId;
@override final  ChannelMin? channel;
@override@JsonKey(name: 'lang') final  String? language;

/// Create a copy of Video
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoCopyWith<_Video> get copyWith => __$VideoCopyWithImpl<_Video>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Video&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.availableAt, availableAt) || other.availableAt == availableAt)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.status, status) || other.status == status)&&(identical(other.startScheduled, startScheduled) || other.startScheduled == startScheduled)&&(identical(other.startActual, startActual) || other.startActual == startActual)&&(identical(other.endActual, endActual) || other.endActual == endActual)&&(identical(other.liveViewers, liveViewers) || other.liveViewers == liveViewers)&&(identical(other.description, description) || other.description == description)&&(identical(other.songcount, songcount) || other.songcount == songcount)&&(identical(other.channelId, channelId) || other.channelId == channelId)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,type,topicId,publishedAt,availableAt,duration,status,startScheduled,startActual,endActual,liveViewers,description,songcount,channelId,channel,language);

@override
String toString() {
  return 'Video(id: $id, title: $title, type: $type, topicId: $topicId, publishedAt: $publishedAt, availableAt: $availableAt, duration: $duration, status: $status, startScheduled: $startScheduled, startActual: $startActual, endActual: $endActual, liveViewers: $liveViewers, description: $description, songcount: $songcount, channelId: $channelId, channel: $channel, language: $language)';
}


}

/// @nodoc
abstract mixin class _$VideoCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$VideoCopyWith(_Video value, $Res Function(_Video) _then) = __$VideoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, VideoType? type,@JsonKey(name: 'topic_id') String? topicId,@JsonKey(name: 'published_at') String? publishedAt,@JsonKey(name: 'available_at') String availableAt, int? duration,@JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic) VideoStatus status,@JsonKey(name: 'start_scheduled') String? startScheduled,@JsonKey(name: 'start_actual') String? startActual,@JsonKey(name: 'end_actual') String? endActual,@JsonKey(name: 'live_viewers') int? liveViewers, String? description, int? songcount,@JsonKey(name: 'channel_id') String? channelId, ChannelMin? channel,@JsonKey(name: 'lang') String? language
});


@override $ChannelMinCopyWith<$Res>? get channel;

}
/// @nodoc
class __$VideoCopyWithImpl<$Res>
    implements _$VideoCopyWith<$Res> {
  __$VideoCopyWithImpl(this._self, this._then);

  final _Video _self;
  final $Res Function(_Video) _then;

/// Create a copy of Video
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? type = freezed,Object? topicId = freezed,Object? publishedAt = freezed,Object? availableAt = null,Object? duration = freezed,Object? status = null,Object? startScheduled = freezed,Object? startActual = freezed,Object? endActual = freezed,Object? liveViewers = freezed,Object? description = freezed,Object? songcount = freezed,Object? channelId = freezed,Object? channel = freezed,Object? language = freezed,}) {
  return _then(_Video(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as VideoType?,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String?,availableAt: null == availableAt ? _self.availableAt : availableAt // ignore: cast_nullable_to_non_nullable
as String,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VideoStatus,startScheduled: freezed == startScheduled ? _self.startScheduled : startScheduled // ignore: cast_nullable_to_non_nullable
as String?,startActual: freezed == startActual ? _self.startActual : startActual // ignore: cast_nullable_to_non_nullable
as String?,endActual: freezed == endActual ? _self.endActual : endActual // ignore: cast_nullable_to_non_nullable
as String?,liveViewers: freezed == liveViewers ? _self.liveViewers : liveViewers // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,songcount: freezed == songcount ? _self.songcount : songcount // ignore: cast_nullable_to_non_nullable
as int?,channelId: freezed == channelId ? _self.channelId : channelId // ignore: cast_nullable_to_non_nullable
as String?,channel: freezed == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as ChannelMin?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Video
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChannelMinCopyWith<$Res>? get channel {
    if (_self.channel == null) {
    return null;
  }

  return $ChannelMinCopyWith<$Res>(_self.channel!, (value) {
    return _then(_self.copyWith(channel: value));
  });
}
}

// dart format on
