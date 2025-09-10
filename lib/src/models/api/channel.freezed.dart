// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Channel {

 String get id; String get name;@JsonKey(name: 'english_name') String? get englishName; ChannelType? get type; String? get photo;@JsonKey(name: 'org') String? get organization;@JsonKey(name: 'video_count') int? get videoCount;@JsonKey(name: 'subscriber_count') int? get subscriberCount;@JsonKey(name: 'view_count') int? get viewCount;@JsonKey(name: 'clip_count') int? get clipCount;@JsonKey(name: 'suborg') String? get subOrganization; String? get banner; String? get twitter;@JsonKey(toJson: Language.toStringStatic, fromJson: Language.fromString) Language get lang; bool? get inactive; String? get description;@JsonKey(name: 'published_at') String? get publishedAt;@JsonKey(name: 'crawled_at') String? get crawledAt;@JsonKey(name: 'comments_crawled_at') String? get commentsCrawledAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'yt_uploads_id') String? get ytUploadsId;@JsonKey(name: 'top_topics') List<String> get topTopics;@JsonKey(name: 'yt_handle') List<String> get ytHandle; String? get twitch;@JsonKey(name: 'yt_name_history') List<String> get ytNameHistory; String? get group;
/// Create a copy of Channel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChannelCopyWith<Channel> get copyWith => _$ChannelCopyWithImpl<Channel>(this as Channel, _$identity);

  /// Serializes this Channel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Channel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.englishName, englishName) || other.englishName == englishName)&&(identical(other.type, type) || other.type == type)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.organization, organization) || other.organization == organization)&&(identical(other.videoCount, videoCount) || other.videoCount == videoCount)&&(identical(other.subscriberCount, subscriberCount) || other.subscriberCount == subscriberCount)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.clipCount, clipCount) || other.clipCount == clipCount)&&(identical(other.subOrganization, subOrganization) || other.subOrganization == subOrganization)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.twitter, twitter) || other.twitter == twitter)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.inactive, inactive) || other.inactive == inactive)&&(identical(other.description, description) || other.description == description)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.crawledAt, crawledAt) || other.crawledAt == crawledAt)&&(identical(other.commentsCrawledAt, commentsCrawledAt) || other.commentsCrawledAt == commentsCrawledAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.ytUploadsId, ytUploadsId) || other.ytUploadsId == ytUploadsId)&&const DeepCollectionEquality().equals(other.topTopics, topTopics)&&const DeepCollectionEquality().equals(other.ytHandle, ytHandle)&&(identical(other.twitch, twitch) || other.twitch == twitch)&&const DeepCollectionEquality().equals(other.ytNameHistory, ytNameHistory)&&(identical(other.group, group) || other.group == group));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,englishName,type,photo,organization,videoCount,subscriberCount,viewCount,clipCount,subOrganization,banner,twitter,lang,inactive,description,publishedAt,crawledAt,commentsCrawledAt,updatedAt,ytUploadsId,const DeepCollectionEquality().hash(topTopics),const DeepCollectionEquality().hash(ytHandle),twitch,const DeepCollectionEquality().hash(ytNameHistory),group]);

@override
String toString() {
  return 'Channel(id: $id, name: $name, englishName: $englishName, type: $type, photo: $photo, organization: $organization, videoCount: $videoCount, subscriberCount: $subscriberCount, viewCount: $viewCount, clipCount: $clipCount, subOrganization: $subOrganization, banner: $banner, twitter: $twitter, lang: $lang, inactive: $inactive, description: $description, publishedAt: $publishedAt, crawledAt: $crawledAt, commentsCrawledAt: $commentsCrawledAt, updatedAt: $updatedAt, ytUploadsId: $ytUploadsId, topTopics: $topTopics, ytHandle: $ytHandle, twitch: $twitch, ytNameHistory: $ytNameHistory, group: $group)';
}


}

/// @nodoc
abstract mixin class $ChannelCopyWith<$Res>  {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) _then) = _$ChannelCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(name: 'english_name') String? englishName, ChannelType? type, String? photo,@JsonKey(name: 'org') String? organization,@JsonKey(name: 'video_count') int? videoCount,@JsonKey(name: 'subscriber_count') int? subscriberCount,@JsonKey(name: 'view_count') int? viewCount,@JsonKey(name: 'clip_count') int? clipCount,@JsonKey(name: 'suborg') String? subOrganization, String? banner, String? twitter,@JsonKey(toJson: Language.toStringStatic, fromJson: Language.fromString) Language lang, bool? inactive, String? description,@JsonKey(name: 'published_at') String? publishedAt,@JsonKey(name: 'crawled_at') String? crawledAt,@JsonKey(name: 'comments_crawled_at') String? commentsCrawledAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'yt_uploads_id') String? ytUploadsId,@JsonKey(name: 'top_topics') List<String> topTopics,@JsonKey(name: 'yt_handle') List<String> ytHandle, String? twitch,@JsonKey(name: 'yt_name_history') List<String> ytNameHistory, String? group
});




}
/// @nodoc
class _$ChannelCopyWithImpl<$Res>
    implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._self, this._then);

  final Channel _self;
  final $Res Function(Channel) _then;

/// Create a copy of Channel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? englishName = freezed,Object? type = freezed,Object? photo = freezed,Object? organization = freezed,Object? videoCount = freezed,Object? subscriberCount = freezed,Object? viewCount = freezed,Object? clipCount = freezed,Object? subOrganization = freezed,Object? banner = freezed,Object? twitter = freezed,Object? lang = null,Object? inactive = freezed,Object? description = freezed,Object? publishedAt = freezed,Object? crawledAt = freezed,Object? commentsCrawledAt = freezed,Object? updatedAt = freezed,Object? ytUploadsId = freezed,Object? topTopics = null,Object? ytHandle = null,Object? twitch = freezed,Object? ytNameHistory = null,Object? group = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,englishName: freezed == englishName ? _self.englishName : englishName // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ChannelType?,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,organization: freezed == organization ? _self.organization : organization // ignore: cast_nullable_to_non_nullable
as String?,videoCount: freezed == videoCount ? _self.videoCount : videoCount // ignore: cast_nullable_to_non_nullable
as int?,subscriberCount: freezed == subscriberCount ? _self.subscriberCount : subscriberCount // ignore: cast_nullable_to_non_nullable
as int?,viewCount: freezed == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int?,clipCount: freezed == clipCount ? _self.clipCount : clipCount // ignore: cast_nullable_to_non_nullable
as int?,subOrganization: freezed == subOrganization ? _self.subOrganization : subOrganization // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,twitter: freezed == twitter ? _self.twitter : twitter // ignore: cast_nullable_to_non_nullable
as String?,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as Language,inactive: freezed == inactive ? _self.inactive : inactive // ignore: cast_nullable_to_non_nullable
as bool?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String?,crawledAt: freezed == crawledAt ? _self.crawledAt : crawledAt // ignore: cast_nullable_to_non_nullable
as String?,commentsCrawledAt: freezed == commentsCrawledAt ? _self.commentsCrawledAt : commentsCrawledAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,ytUploadsId: freezed == ytUploadsId ? _self.ytUploadsId : ytUploadsId // ignore: cast_nullable_to_non_nullable
as String?,topTopics: null == topTopics ? _self.topTopics : topTopics // ignore: cast_nullable_to_non_nullable
as List<String>,ytHandle: null == ytHandle ? _self.ytHandle : ytHandle // ignore: cast_nullable_to_non_nullable
as List<String>,twitch: freezed == twitch ? _self.twitch : twitch // ignore: cast_nullable_to_non_nullable
as String?,ytNameHistory: null == ytNameHistory ? _self.ytNameHistory : ytNameHistory // ignore: cast_nullable_to_non_nullable
as List<String>,group: freezed == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Channel].
extension ChannelPatterns on Channel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Channel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Channel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Channel value)  $default,){
final _that = this;
switch (_that) {
case _Channel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Channel value)?  $default,){
final _that = this;
switch (_that) {
case _Channel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'english_name')  String? englishName,  ChannelType? type,  String? photo, @JsonKey(name: 'org')  String? organization, @JsonKey(name: 'video_count')  int? videoCount, @JsonKey(name: 'subscriber_count')  int? subscriberCount, @JsonKey(name: 'view_count')  int? viewCount, @JsonKey(name: 'clip_count')  int? clipCount, @JsonKey(name: 'suborg')  String? subOrganization,  String? banner,  String? twitter, @JsonKey(toJson: Language.toStringStatic, fromJson: Language.fromString)  Language lang,  bool? inactive,  String? description, @JsonKey(name: 'published_at')  String? publishedAt, @JsonKey(name: 'crawled_at')  String? crawledAt, @JsonKey(name: 'comments_crawled_at')  String? commentsCrawledAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'yt_uploads_id')  String? ytUploadsId, @JsonKey(name: 'top_topics')  List<String> topTopics, @JsonKey(name: 'yt_handle')  List<String> ytHandle,  String? twitch, @JsonKey(name: 'yt_name_history')  List<String> ytNameHistory,  String? group)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Channel() when $default != null:
return $default(_that.id,_that.name,_that.englishName,_that.type,_that.photo,_that.organization,_that.videoCount,_that.subscriberCount,_that.viewCount,_that.clipCount,_that.subOrganization,_that.banner,_that.twitter,_that.lang,_that.inactive,_that.description,_that.publishedAt,_that.crawledAt,_that.commentsCrawledAt,_that.updatedAt,_that.ytUploadsId,_that.topTopics,_that.ytHandle,_that.twitch,_that.ytNameHistory,_that.group);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'english_name')  String? englishName,  ChannelType? type,  String? photo, @JsonKey(name: 'org')  String? organization, @JsonKey(name: 'video_count')  int? videoCount, @JsonKey(name: 'subscriber_count')  int? subscriberCount, @JsonKey(name: 'view_count')  int? viewCount, @JsonKey(name: 'clip_count')  int? clipCount, @JsonKey(name: 'suborg')  String? subOrganization,  String? banner,  String? twitter, @JsonKey(toJson: Language.toStringStatic, fromJson: Language.fromString)  Language lang,  bool? inactive,  String? description, @JsonKey(name: 'published_at')  String? publishedAt, @JsonKey(name: 'crawled_at')  String? crawledAt, @JsonKey(name: 'comments_crawled_at')  String? commentsCrawledAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'yt_uploads_id')  String? ytUploadsId, @JsonKey(name: 'top_topics')  List<String> topTopics, @JsonKey(name: 'yt_handle')  List<String> ytHandle,  String? twitch, @JsonKey(name: 'yt_name_history')  List<String> ytNameHistory,  String? group)  $default,) {final _that = this;
switch (_that) {
case _Channel():
return $default(_that.id,_that.name,_that.englishName,_that.type,_that.photo,_that.organization,_that.videoCount,_that.subscriberCount,_that.viewCount,_that.clipCount,_that.subOrganization,_that.banner,_that.twitter,_that.lang,_that.inactive,_that.description,_that.publishedAt,_that.crawledAt,_that.commentsCrawledAt,_that.updatedAt,_that.ytUploadsId,_that.topTopics,_that.ytHandle,_that.twitch,_that.ytNameHistory,_that.group);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(name: 'english_name')  String? englishName,  ChannelType? type,  String? photo, @JsonKey(name: 'org')  String? organization, @JsonKey(name: 'video_count')  int? videoCount, @JsonKey(name: 'subscriber_count')  int? subscriberCount, @JsonKey(name: 'view_count')  int? viewCount, @JsonKey(name: 'clip_count')  int? clipCount, @JsonKey(name: 'suborg')  String? subOrganization,  String? banner,  String? twitter, @JsonKey(toJson: Language.toStringStatic, fromJson: Language.fromString)  Language lang,  bool? inactive,  String? description, @JsonKey(name: 'published_at')  String? publishedAt, @JsonKey(name: 'crawled_at')  String? crawledAt, @JsonKey(name: 'comments_crawled_at')  String? commentsCrawledAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'yt_uploads_id')  String? ytUploadsId, @JsonKey(name: 'top_topics')  List<String> topTopics, @JsonKey(name: 'yt_handle')  List<String> ytHandle,  String? twitch, @JsonKey(name: 'yt_name_history')  List<String> ytNameHistory,  String? group)?  $default,) {final _that = this;
switch (_that) {
case _Channel() when $default != null:
return $default(_that.id,_that.name,_that.englishName,_that.type,_that.photo,_that.organization,_that.videoCount,_that.subscriberCount,_that.viewCount,_that.clipCount,_that.subOrganization,_that.banner,_that.twitter,_that.lang,_that.inactive,_that.description,_that.publishedAt,_that.crawledAt,_that.commentsCrawledAt,_that.updatedAt,_that.ytUploadsId,_that.topTopics,_that.ytHandle,_that.twitch,_that.ytNameHistory,_that.group);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Channel extends Channel {
  const _Channel({required this.id, required this.name, @JsonKey(name: 'english_name') this.englishName, this.type, this.photo, @JsonKey(name: 'org') this.organization, @JsonKey(name: 'video_count') this.videoCount, @JsonKey(name: 'subscriber_count') this.subscriberCount, @JsonKey(name: 'view_count') this.viewCount, @JsonKey(name: 'clip_count') this.clipCount, @JsonKey(name: 'suborg') this.subOrganization, this.banner, this.twitter, @JsonKey(toJson: Language.toStringStatic, fromJson: Language.fromString) required this.lang, this.inactive, this.description, @JsonKey(name: 'published_at') this.publishedAt, @JsonKey(name: 'crawled_at') this.crawledAt, @JsonKey(name: 'comments_crawled_at') this.commentsCrawledAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'yt_uploads_id') this.ytUploadsId, @JsonKey(name: 'top_topics') final  List<String> topTopics = const [], @JsonKey(name: 'yt_handle') final  List<String> ytHandle = const [], this.twitch, @JsonKey(name: 'yt_name_history') final  List<String> ytNameHistory = const [], this.group}): _topTopics = topTopics,_ytHandle = ytHandle,_ytNameHistory = ytNameHistory,super._();
  factory _Channel.fromJson(Map<String, dynamic> json) => _$ChannelFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey(name: 'english_name') final  String? englishName;
@override final  ChannelType? type;
@override final  String? photo;
@override@JsonKey(name: 'org') final  String? organization;
@override@JsonKey(name: 'video_count') final  int? videoCount;
@override@JsonKey(name: 'subscriber_count') final  int? subscriberCount;
@override@JsonKey(name: 'view_count') final  int? viewCount;
@override@JsonKey(name: 'clip_count') final  int? clipCount;
@override@JsonKey(name: 'suborg') final  String? subOrganization;
@override final  String? banner;
@override final  String? twitter;
@override@JsonKey(toJson: Language.toStringStatic, fromJson: Language.fromString) final  Language lang;
@override final  bool? inactive;
@override final  String? description;
@override@JsonKey(name: 'published_at') final  String? publishedAt;
@override@JsonKey(name: 'crawled_at') final  String? crawledAt;
@override@JsonKey(name: 'comments_crawled_at') final  String? commentsCrawledAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'yt_uploads_id') final  String? ytUploadsId;
 final  List<String> _topTopics;
@override@JsonKey(name: 'top_topics') List<String> get topTopics {
  if (_topTopics is EqualUnmodifiableListView) return _topTopics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topTopics);
}

 final  List<String> _ytHandle;
@override@JsonKey(name: 'yt_handle') List<String> get ytHandle {
  if (_ytHandle is EqualUnmodifiableListView) return _ytHandle;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ytHandle);
}

@override final  String? twitch;
 final  List<String> _ytNameHistory;
@override@JsonKey(name: 'yt_name_history') List<String> get ytNameHistory {
  if (_ytNameHistory is EqualUnmodifiableListView) return _ytNameHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ytNameHistory);
}

@override final  String? group;

/// Create a copy of Channel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChannelCopyWith<_Channel> get copyWith => __$ChannelCopyWithImpl<_Channel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChannelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Channel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.englishName, englishName) || other.englishName == englishName)&&(identical(other.type, type) || other.type == type)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.organization, organization) || other.organization == organization)&&(identical(other.videoCount, videoCount) || other.videoCount == videoCount)&&(identical(other.subscriberCount, subscriberCount) || other.subscriberCount == subscriberCount)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.clipCount, clipCount) || other.clipCount == clipCount)&&(identical(other.subOrganization, subOrganization) || other.subOrganization == subOrganization)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.twitter, twitter) || other.twitter == twitter)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.inactive, inactive) || other.inactive == inactive)&&(identical(other.description, description) || other.description == description)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.crawledAt, crawledAt) || other.crawledAt == crawledAt)&&(identical(other.commentsCrawledAt, commentsCrawledAt) || other.commentsCrawledAt == commentsCrawledAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.ytUploadsId, ytUploadsId) || other.ytUploadsId == ytUploadsId)&&const DeepCollectionEquality().equals(other._topTopics, _topTopics)&&const DeepCollectionEquality().equals(other._ytHandle, _ytHandle)&&(identical(other.twitch, twitch) || other.twitch == twitch)&&const DeepCollectionEquality().equals(other._ytNameHistory, _ytNameHistory)&&(identical(other.group, group) || other.group == group));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,englishName,type,photo,organization,videoCount,subscriberCount,viewCount,clipCount,subOrganization,banner,twitter,lang,inactive,description,publishedAt,crawledAt,commentsCrawledAt,updatedAt,ytUploadsId,const DeepCollectionEquality().hash(_topTopics),const DeepCollectionEquality().hash(_ytHandle),twitch,const DeepCollectionEquality().hash(_ytNameHistory),group]);

@override
String toString() {
  return 'Channel(id: $id, name: $name, englishName: $englishName, type: $type, photo: $photo, organization: $organization, videoCount: $videoCount, subscriberCount: $subscriberCount, viewCount: $viewCount, clipCount: $clipCount, subOrganization: $subOrganization, banner: $banner, twitter: $twitter, lang: $lang, inactive: $inactive, description: $description, publishedAt: $publishedAt, crawledAt: $crawledAt, commentsCrawledAt: $commentsCrawledAt, updatedAt: $updatedAt, ytUploadsId: $ytUploadsId, topTopics: $topTopics, ytHandle: $ytHandle, twitch: $twitch, ytNameHistory: $ytNameHistory, group: $group)';
}


}

/// @nodoc
abstract mixin class _$ChannelCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$ChannelCopyWith(_Channel value, $Res Function(_Channel) _then) = __$ChannelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(name: 'english_name') String? englishName, ChannelType? type, String? photo,@JsonKey(name: 'org') String? organization,@JsonKey(name: 'video_count') int? videoCount,@JsonKey(name: 'subscriber_count') int? subscriberCount,@JsonKey(name: 'view_count') int? viewCount,@JsonKey(name: 'clip_count') int? clipCount,@JsonKey(name: 'suborg') String? subOrganization, String? banner, String? twitter,@JsonKey(toJson: Language.toStringStatic, fromJson: Language.fromString) Language lang, bool? inactive, String? description,@JsonKey(name: 'published_at') String? publishedAt,@JsonKey(name: 'crawled_at') String? crawledAt,@JsonKey(name: 'comments_crawled_at') String? commentsCrawledAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'yt_uploads_id') String? ytUploadsId,@JsonKey(name: 'top_topics') List<String> topTopics,@JsonKey(name: 'yt_handle') List<String> ytHandle, String? twitch,@JsonKey(name: 'yt_name_history') List<String> ytNameHistory, String? group
});




}
/// @nodoc
class __$ChannelCopyWithImpl<$Res>
    implements _$ChannelCopyWith<$Res> {
  __$ChannelCopyWithImpl(this._self, this._then);

  final _Channel _self;
  final $Res Function(_Channel) _then;

/// Create a copy of Channel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? englishName = freezed,Object? type = freezed,Object? photo = freezed,Object? organization = freezed,Object? videoCount = freezed,Object? subscriberCount = freezed,Object? viewCount = freezed,Object? clipCount = freezed,Object? subOrganization = freezed,Object? banner = freezed,Object? twitter = freezed,Object? lang = null,Object? inactive = freezed,Object? description = freezed,Object? publishedAt = freezed,Object? crawledAt = freezed,Object? commentsCrawledAt = freezed,Object? updatedAt = freezed,Object? ytUploadsId = freezed,Object? topTopics = null,Object? ytHandle = null,Object? twitch = freezed,Object? ytNameHistory = null,Object? group = freezed,}) {
  return _then(_Channel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,englishName: freezed == englishName ? _self.englishName : englishName // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ChannelType?,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,organization: freezed == organization ? _self.organization : organization // ignore: cast_nullable_to_non_nullable
as String?,videoCount: freezed == videoCount ? _self.videoCount : videoCount // ignore: cast_nullable_to_non_nullable
as int?,subscriberCount: freezed == subscriberCount ? _self.subscriberCount : subscriberCount // ignore: cast_nullable_to_non_nullable
as int?,viewCount: freezed == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int?,clipCount: freezed == clipCount ? _self.clipCount : clipCount // ignore: cast_nullable_to_non_nullable
as int?,subOrganization: freezed == subOrganization ? _self.subOrganization : subOrganization // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,twitter: freezed == twitter ? _self.twitter : twitter // ignore: cast_nullable_to_non_nullable
as String?,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as Language,inactive: freezed == inactive ? _self.inactive : inactive // ignore: cast_nullable_to_non_nullable
as bool?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String?,crawledAt: freezed == crawledAt ? _self.crawledAt : crawledAt // ignore: cast_nullable_to_non_nullable
as String?,commentsCrawledAt: freezed == commentsCrawledAt ? _self.commentsCrawledAt : commentsCrawledAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,ytUploadsId: freezed == ytUploadsId ? _self.ytUploadsId : ytUploadsId // ignore: cast_nullable_to_non_nullable
as String?,topTopics: null == topTopics ? _self._topTopics : topTopics // ignore: cast_nullable_to_non_nullable
as List<String>,ytHandle: null == ytHandle ? _self._ytHandle : ytHandle // ignore: cast_nullable_to_non_nullable
as List<String>,twitch: freezed == twitch ? _self.twitch : twitch // ignore: cast_nullable_to_non_nullable
as String?,ytNameHistory: null == ytNameHistory ? _self._ytNameHistory : ytNameHistory // ignore: cast_nullable_to_non_nullable
as List<String>,group: freezed == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
