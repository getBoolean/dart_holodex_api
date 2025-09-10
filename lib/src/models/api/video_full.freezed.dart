// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_full.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoFull {

 String get id; String get title;@JsonKey(fromJson: _parseVideoType) VideoType? get type;/// corresponds to a Topic ID, Videos of type clip cannot not have topic. Streams may or may not have topic.
@JsonKey(name: 'topic_id') String? get topicId;@JsonKey(name: 'published_at') String? get publishedAt;/// Takes on the first non-null value of end_actual, start_actual, start_scheduled, or published_at
@JsonKey(name: 'available_at') String get availableAt;/// Duration of the video in seconds
 int? get duration;@JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic) VideoStatus get status;/// Included when includes contains 'live_info'
@JsonKey(name: 'start_scheduled') String? get startScheduled;/// Included when includes contains 'live_info'
@JsonKey(name: 'start_actual') String? get startActual;/// Included when includes contains 'live_info'
@JsonKey(name: 'end_actual') String? get endActual;/// Included when includes contains 'live_info'
@JsonKey(name: 'live_viewers') int? get liveViewers;/// Included when includes contains 'description'
 String? get description;/// Number of tagged songs for this video
 int? get songcount;@JsonKey(name: 'channel_id') String? get channelId; ChannelMin? get channel;@JsonKey(name: 'lang') String? get language; List<Comment> get comments; List<Video> get recommendations; List<Video> get clips; List<Video> get sources; List<Video> get refers; List<Video> get simulcasts; List<Channel> get mentions; List<Song> get songs;@JsonKey(name: 'same_source_clips') List<Video> get sameSourceClips;
/// Create a copy of VideoFull
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoFullCopyWith<VideoFull> get copyWith => _$VideoFullCopyWithImpl<VideoFull>(this as VideoFull, _$identity);

  /// Serializes this VideoFull to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoFull&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.availableAt, availableAt) || other.availableAt == availableAt)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.status, status) || other.status == status)&&(identical(other.startScheduled, startScheduled) || other.startScheduled == startScheduled)&&(identical(other.startActual, startActual) || other.startActual == startActual)&&(identical(other.endActual, endActual) || other.endActual == endActual)&&(identical(other.liveViewers, liveViewers) || other.liveViewers == liveViewers)&&(identical(other.description, description) || other.description == description)&&(identical(other.songcount, songcount) || other.songcount == songcount)&&(identical(other.channelId, channelId) || other.channelId == channelId)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other.comments, comments)&&const DeepCollectionEquality().equals(other.recommendations, recommendations)&&const DeepCollectionEquality().equals(other.clips, clips)&&const DeepCollectionEquality().equals(other.sources, sources)&&const DeepCollectionEquality().equals(other.refers, refers)&&const DeepCollectionEquality().equals(other.simulcasts, simulcasts)&&const DeepCollectionEquality().equals(other.mentions, mentions)&&const DeepCollectionEquality().equals(other.songs, songs)&&const DeepCollectionEquality().equals(other.sameSourceClips, sameSourceClips));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,type,topicId,publishedAt,availableAt,duration,status,startScheduled,startActual,endActual,liveViewers,description,songcount,channelId,channel,language,const DeepCollectionEquality().hash(comments),const DeepCollectionEquality().hash(recommendations),const DeepCollectionEquality().hash(clips),const DeepCollectionEquality().hash(sources),const DeepCollectionEquality().hash(refers),const DeepCollectionEquality().hash(simulcasts),const DeepCollectionEquality().hash(mentions),const DeepCollectionEquality().hash(songs),const DeepCollectionEquality().hash(sameSourceClips)]);

@override
String toString() {
  return 'VideoFull(id: $id, title: $title, type: $type, topicId: $topicId, publishedAt: $publishedAt, availableAt: $availableAt, duration: $duration, status: $status, startScheduled: $startScheduled, startActual: $startActual, endActual: $endActual, liveViewers: $liveViewers, description: $description, songcount: $songcount, channelId: $channelId, channel: $channel, language: $language, comments: $comments, recommendations: $recommendations, clips: $clips, sources: $sources, refers: $refers, simulcasts: $simulcasts, mentions: $mentions, songs: $songs, sameSourceClips: $sameSourceClips)';
}


}

/// @nodoc
abstract mixin class $VideoFullCopyWith<$Res>  {
  factory $VideoFullCopyWith(VideoFull value, $Res Function(VideoFull) _then) = _$VideoFullCopyWithImpl;
@useResult
$Res call({
 String id, String title,@JsonKey(fromJson: _parseVideoType) VideoType? type,@JsonKey(name: 'topic_id') String? topicId,@JsonKey(name: 'published_at') String? publishedAt,@JsonKey(name: 'available_at') String availableAt, int? duration,@JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic) VideoStatus status,@JsonKey(name: 'start_scheduled') String? startScheduled,@JsonKey(name: 'start_actual') String? startActual,@JsonKey(name: 'end_actual') String? endActual,@JsonKey(name: 'live_viewers') int? liveViewers, String? description, int? songcount,@JsonKey(name: 'channel_id') String? channelId, ChannelMin? channel,@JsonKey(name: 'lang') String? language, List<Comment> comments, List<Video> recommendations, List<Video> clips, List<Video> sources, List<Video> refers, List<Video> simulcasts, List<Channel> mentions, List<Song> songs,@JsonKey(name: 'same_source_clips') List<Video> sameSourceClips
});


$ChannelMinCopyWith<$Res>? get channel;

}
/// @nodoc
class _$VideoFullCopyWithImpl<$Res>
    implements $VideoFullCopyWith<$Res> {
  _$VideoFullCopyWithImpl(this._self, this._then);

  final VideoFull _self;
  final $Res Function(VideoFull) _then;

/// Create a copy of VideoFull
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? type = freezed,Object? topicId = freezed,Object? publishedAt = freezed,Object? availableAt = null,Object? duration = freezed,Object? status = null,Object? startScheduled = freezed,Object? startActual = freezed,Object? endActual = freezed,Object? liveViewers = freezed,Object? description = freezed,Object? songcount = freezed,Object? channelId = freezed,Object? channel = freezed,Object? language = freezed,Object? comments = null,Object? recommendations = null,Object? clips = null,Object? sources = null,Object? refers = null,Object? simulcasts = null,Object? mentions = null,Object? songs = null,Object? sameSourceClips = null,}) {
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
as String?,comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as List<Comment>,recommendations: null == recommendations ? _self.recommendations : recommendations // ignore: cast_nullable_to_non_nullable
as List<Video>,clips: null == clips ? _self.clips : clips // ignore: cast_nullable_to_non_nullable
as List<Video>,sources: null == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as List<Video>,refers: null == refers ? _self.refers : refers // ignore: cast_nullable_to_non_nullable
as List<Video>,simulcasts: null == simulcasts ? _self.simulcasts : simulcasts // ignore: cast_nullable_to_non_nullable
as List<Video>,mentions: null == mentions ? _self.mentions : mentions // ignore: cast_nullable_to_non_nullable
as List<Channel>,songs: null == songs ? _self.songs : songs // ignore: cast_nullable_to_non_nullable
as List<Song>,sameSourceClips: null == sameSourceClips ? _self.sameSourceClips : sameSourceClips // ignore: cast_nullable_to_non_nullable
as List<Video>,
  ));
}
/// Create a copy of VideoFull
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


/// Adds pattern-matching-related methods to [VideoFull].
extension VideoFullPatterns on VideoFull {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoFull value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoFull() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoFull value)  $default,){
final _that = this;
switch (_that) {
case _VideoFull():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoFull value)?  $default,){
final _that = this;
switch (_that) {
case _VideoFull() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title, @JsonKey(fromJson: _parseVideoType)  VideoType? type, @JsonKey(name: 'topic_id')  String? topicId, @JsonKey(name: 'published_at')  String? publishedAt, @JsonKey(name: 'available_at')  String availableAt,  int? duration, @JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic)  VideoStatus status, @JsonKey(name: 'start_scheduled')  String? startScheduled, @JsonKey(name: 'start_actual')  String? startActual, @JsonKey(name: 'end_actual')  String? endActual, @JsonKey(name: 'live_viewers')  int? liveViewers,  String? description,  int? songcount, @JsonKey(name: 'channel_id')  String? channelId,  ChannelMin? channel, @JsonKey(name: 'lang')  String? language,  List<Comment> comments,  List<Video> recommendations,  List<Video> clips,  List<Video> sources,  List<Video> refers,  List<Video> simulcasts,  List<Channel> mentions,  List<Song> songs, @JsonKey(name: 'same_source_clips')  List<Video> sameSourceClips)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoFull() when $default != null:
return $default(_that.id,_that.title,_that.type,_that.topicId,_that.publishedAt,_that.availableAt,_that.duration,_that.status,_that.startScheduled,_that.startActual,_that.endActual,_that.liveViewers,_that.description,_that.songcount,_that.channelId,_that.channel,_that.language,_that.comments,_that.recommendations,_that.clips,_that.sources,_that.refers,_that.simulcasts,_that.mentions,_that.songs,_that.sameSourceClips);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title, @JsonKey(fromJson: _parseVideoType)  VideoType? type, @JsonKey(name: 'topic_id')  String? topicId, @JsonKey(name: 'published_at')  String? publishedAt, @JsonKey(name: 'available_at')  String availableAt,  int? duration, @JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic)  VideoStatus status, @JsonKey(name: 'start_scheduled')  String? startScheduled, @JsonKey(name: 'start_actual')  String? startActual, @JsonKey(name: 'end_actual')  String? endActual, @JsonKey(name: 'live_viewers')  int? liveViewers,  String? description,  int? songcount, @JsonKey(name: 'channel_id')  String? channelId,  ChannelMin? channel, @JsonKey(name: 'lang')  String? language,  List<Comment> comments,  List<Video> recommendations,  List<Video> clips,  List<Video> sources,  List<Video> refers,  List<Video> simulcasts,  List<Channel> mentions,  List<Song> songs, @JsonKey(name: 'same_source_clips')  List<Video> sameSourceClips)  $default,) {final _that = this;
switch (_that) {
case _VideoFull():
return $default(_that.id,_that.title,_that.type,_that.topicId,_that.publishedAt,_that.availableAt,_that.duration,_that.status,_that.startScheduled,_that.startActual,_that.endActual,_that.liveViewers,_that.description,_that.songcount,_that.channelId,_that.channel,_that.language,_that.comments,_that.recommendations,_that.clips,_that.sources,_that.refers,_that.simulcasts,_that.mentions,_that.songs,_that.sameSourceClips);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title, @JsonKey(fromJson: _parseVideoType)  VideoType? type, @JsonKey(name: 'topic_id')  String? topicId, @JsonKey(name: 'published_at')  String? publishedAt, @JsonKey(name: 'available_at')  String availableAt,  int? duration, @JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic)  VideoStatus status, @JsonKey(name: 'start_scheduled')  String? startScheduled, @JsonKey(name: 'start_actual')  String? startActual, @JsonKey(name: 'end_actual')  String? endActual, @JsonKey(name: 'live_viewers')  int? liveViewers,  String? description,  int? songcount, @JsonKey(name: 'channel_id')  String? channelId,  ChannelMin? channel, @JsonKey(name: 'lang')  String? language,  List<Comment> comments,  List<Video> recommendations,  List<Video> clips,  List<Video> sources,  List<Video> refers,  List<Video> simulcasts,  List<Channel> mentions,  List<Song> songs, @JsonKey(name: 'same_source_clips')  List<Video> sameSourceClips)?  $default,) {final _that = this;
switch (_that) {
case _VideoFull() when $default != null:
return $default(_that.id,_that.title,_that.type,_that.topicId,_that.publishedAt,_that.availableAt,_that.duration,_that.status,_that.startScheduled,_that.startActual,_that.endActual,_that.liveViewers,_that.description,_that.songcount,_that.channelId,_that.channel,_that.language,_that.comments,_that.recommendations,_that.clips,_that.sources,_that.refers,_that.simulcasts,_that.mentions,_that.songs,_that.sameSourceClips);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoFull extends VideoFull {
  const _VideoFull({required this.id, required this.title, @JsonKey(fromJson: _parseVideoType) this.type, @JsonKey(name: 'topic_id') this.topicId, @JsonKey(name: 'published_at') this.publishedAt, @JsonKey(name: 'available_at') required this.availableAt, this.duration, @JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic) required this.status, @JsonKey(name: 'start_scheduled') this.startScheduled, @JsonKey(name: 'start_actual') this.startActual, @JsonKey(name: 'end_actual') this.endActual, @JsonKey(name: 'live_viewers') this.liveViewers, this.description, this.songcount, @JsonKey(name: 'channel_id') this.channelId, this.channel, @JsonKey(name: 'lang') this.language, final  List<Comment> comments = const [], final  List<Video> recommendations = const [], final  List<Video> clips = const [], final  List<Video> sources = const [], final  List<Video> refers = const [], final  List<Video> simulcasts = const [], final  List<Channel> mentions = const [], final  List<Song> songs = const [], @JsonKey(name: 'same_source_clips') final  List<Video> sameSourceClips = const []}): _comments = comments,_recommendations = recommendations,_clips = clips,_sources = sources,_refers = refers,_simulcasts = simulcasts,_mentions = mentions,_songs = songs,_sameSourceClips = sameSourceClips,super._();
  factory _VideoFull.fromJson(Map<String, dynamic> json) => _$VideoFullFromJson(json);

@override final  String id;
@override final  String title;
@override@JsonKey(fromJson: _parseVideoType) final  VideoType? type;
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
 final  List<Comment> _comments;
@override@JsonKey() List<Comment> get comments {
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comments);
}

 final  List<Video> _recommendations;
@override@JsonKey() List<Video> get recommendations {
  if (_recommendations is EqualUnmodifiableListView) return _recommendations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recommendations);
}

 final  List<Video> _clips;
@override@JsonKey() List<Video> get clips {
  if (_clips is EqualUnmodifiableListView) return _clips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_clips);
}

 final  List<Video> _sources;
@override@JsonKey() List<Video> get sources {
  if (_sources is EqualUnmodifiableListView) return _sources;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sources);
}

 final  List<Video> _refers;
@override@JsonKey() List<Video> get refers {
  if (_refers is EqualUnmodifiableListView) return _refers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_refers);
}

 final  List<Video> _simulcasts;
@override@JsonKey() List<Video> get simulcasts {
  if (_simulcasts is EqualUnmodifiableListView) return _simulcasts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_simulcasts);
}

 final  List<Channel> _mentions;
@override@JsonKey() List<Channel> get mentions {
  if (_mentions is EqualUnmodifiableListView) return _mentions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mentions);
}

 final  List<Song> _songs;
@override@JsonKey() List<Song> get songs {
  if (_songs is EqualUnmodifiableListView) return _songs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_songs);
}

 final  List<Video> _sameSourceClips;
@override@JsonKey(name: 'same_source_clips') List<Video> get sameSourceClips {
  if (_sameSourceClips is EqualUnmodifiableListView) return _sameSourceClips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sameSourceClips);
}


/// Create a copy of VideoFull
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoFullCopyWith<_VideoFull> get copyWith => __$VideoFullCopyWithImpl<_VideoFull>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoFullToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoFull&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.availableAt, availableAt) || other.availableAt == availableAt)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.status, status) || other.status == status)&&(identical(other.startScheduled, startScheduled) || other.startScheduled == startScheduled)&&(identical(other.startActual, startActual) || other.startActual == startActual)&&(identical(other.endActual, endActual) || other.endActual == endActual)&&(identical(other.liveViewers, liveViewers) || other.liveViewers == liveViewers)&&(identical(other.description, description) || other.description == description)&&(identical(other.songcount, songcount) || other.songcount == songcount)&&(identical(other.channelId, channelId) || other.channelId == channelId)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other._comments, _comments)&&const DeepCollectionEquality().equals(other._recommendations, _recommendations)&&const DeepCollectionEquality().equals(other._clips, _clips)&&const DeepCollectionEquality().equals(other._sources, _sources)&&const DeepCollectionEquality().equals(other._refers, _refers)&&const DeepCollectionEquality().equals(other._simulcasts, _simulcasts)&&const DeepCollectionEquality().equals(other._mentions, _mentions)&&const DeepCollectionEquality().equals(other._songs, _songs)&&const DeepCollectionEquality().equals(other._sameSourceClips, _sameSourceClips));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,type,topicId,publishedAt,availableAt,duration,status,startScheduled,startActual,endActual,liveViewers,description,songcount,channelId,channel,language,const DeepCollectionEquality().hash(_comments),const DeepCollectionEquality().hash(_recommendations),const DeepCollectionEquality().hash(_clips),const DeepCollectionEquality().hash(_sources),const DeepCollectionEquality().hash(_refers),const DeepCollectionEquality().hash(_simulcasts),const DeepCollectionEquality().hash(_mentions),const DeepCollectionEquality().hash(_songs),const DeepCollectionEquality().hash(_sameSourceClips)]);

@override
String toString() {
  return 'VideoFull(id: $id, title: $title, type: $type, topicId: $topicId, publishedAt: $publishedAt, availableAt: $availableAt, duration: $duration, status: $status, startScheduled: $startScheduled, startActual: $startActual, endActual: $endActual, liveViewers: $liveViewers, description: $description, songcount: $songcount, channelId: $channelId, channel: $channel, language: $language, comments: $comments, recommendations: $recommendations, clips: $clips, sources: $sources, refers: $refers, simulcasts: $simulcasts, mentions: $mentions, songs: $songs, sameSourceClips: $sameSourceClips)';
}


}

/// @nodoc
abstract mixin class _$VideoFullCopyWith<$Res> implements $VideoFullCopyWith<$Res> {
  factory _$VideoFullCopyWith(_VideoFull value, $Res Function(_VideoFull) _then) = __$VideoFullCopyWithImpl;
@override @useResult
$Res call({
 String id, String title,@JsonKey(fromJson: _parseVideoType) VideoType? type,@JsonKey(name: 'topic_id') String? topicId,@JsonKey(name: 'published_at') String? publishedAt,@JsonKey(name: 'available_at') String availableAt, int? duration,@JsonKey(fromJson: VideoStatus.fromJson, toJson: VideoStatus.toJsonStatic) VideoStatus status,@JsonKey(name: 'start_scheduled') String? startScheduled,@JsonKey(name: 'start_actual') String? startActual,@JsonKey(name: 'end_actual') String? endActual,@JsonKey(name: 'live_viewers') int? liveViewers, String? description, int? songcount,@JsonKey(name: 'channel_id') String? channelId, ChannelMin? channel,@JsonKey(name: 'lang') String? language, List<Comment> comments, List<Video> recommendations, List<Video> clips, List<Video> sources, List<Video> refers, List<Video> simulcasts, List<Channel> mentions, List<Song> songs,@JsonKey(name: 'same_source_clips') List<Video> sameSourceClips
});


@override $ChannelMinCopyWith<$Res>? get channel;

}
/// @nodoc
class __$VideoFullCopyWithImpl<$Res>
    implements _$VideoFullCopyWith<$Res> {
  __$VideoFullCopyWithImpl(this._self, this._then);

  final _VideoFull _self;
  final $Res Function(_VideoFull) _then;

/// Create a copy of VideoFull
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? type = freezed,Object? topicId = freezed,Object? publishedAt = freezed,Object? availableAt = null,Object? duration = freezed,Object? status = null,Object? startScheduled = freezed,Object? startActual = freezed,Object? endActual = freezed,Object? liveViewers = freezed,Object? description = freezed,Object? songcount = freezed,Object? channelId = freezed,Object? channel = freezed,Object? language = freezed,Object? comments = null,Object? recommendations = null,Object? clips = null,Object? sources = null,Object? refers = null,Object? simulcasts = null,Object? mentions = null,Object? songs = null,Object? sameSourceClips = null,}) {
  return _then(_VideoFull(
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
as String?,comments: null == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<Comment>,recommendations: null == recommendations ? _self._recommendations : recommendations // ignore: cast_nullable_to_non_nullable
as List<Video>,clips: null == clips ? _self._clips : clips // ignore: cast_nullable_to_non_nullable
as List<Video>,sources: null == sources ? _self._sources : sources // ignore: cast_nullable_to_non_nullable
as List<Video>,refers: null == refers ? _self._refers : refers // ignore: cast_nullable_to_non_nullable
as List<Video>,simulcasts: null == simulcasts ? _self._simulcasts : simulcasts // ignore: cast_nullable_to_non_nullable
as List<Video>,mentions: null == mentions ? _self._mentions : mentions // ignore: cast_nullable_to_non_nullable
as List<Channel>,songs: null == songs ? _self._songs : songs // ignore: cast_nullable_to_non_nullable
as List<Song>,sameSourceClips: null == sameSourceClips ? _self._sameSourceClips : sameSourceClips // ignore: cast_nullable_to_non_nullable
as List<Video>,
  ));
}

/// Create a copy of VideoFull
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
