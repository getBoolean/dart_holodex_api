// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_min.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChannelMin {

 String get id; String get name;@JsonKey(name: 'english_name') String? get englishName; ChannelType? get type; String? get photo;@JsonKey(name: 'org') String? get organization;@JsonKey(name: 'video_count') int? get videoCount;@JsonKey(name: 'subscriber_count') int? get subscriberCount;@JsonKey(name: 'view_count') int? get viewCount;@JsonKey(name: 'clip_count') int? get clipCount;
/// Create a copy of ChannelMin
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChannelMinCopyWith<ChannelMin> get copyWith => _$ChannelMinCopyWithImpl<ChannelMin>(this as ChannelMin, _$identity);

  /// Serializes this ChannelMin to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChannelMin&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.englishName, englishName) || other.englishName == englishName)&&(identical(other.type, type) || other.type == type)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.organization, organization) || other.organization == organization)&&(identical(other.videoCount, videoCount) || other.videoCount == videoCount)&&(identical(other.subscriberCount, subscriberCount) || other.subscriberCount == subscriberCount)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.clipCount, clipCount) || other.clipCount == clipCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,englishName,type,photo,organization,videoCount,subscriberCount,viewCount,clipCount);

@override
String toString() {
  return 'ChannelMin(id: $id, name: $name, englishName: $englishName, type: $type, photo: $photo, organization: $organization, videoCount: $videoCount, subscriberCount: $subscriberCount, viewCount: $viewCount, clipCount: $clipCount)';
}


}

/// @nodoc
abstract mixin class $ChannelMinCopyWith<$Res>  {
  factory $ChannelMinCopyWith(ChannelMin value, $Res Function(ChannelMin) _then) = _$ChannelMinCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(name: 'english_name') String? englishName, ChannelType? type, String? photo,@JsonKey(name: 'org') String? organization,@JsonKey(name: 'video_count') int? videoCount,@JsonKey(name: 'subscriber_count') int? subscriberCount,@JsonKey(name: 'view_count') int? viewCount,@JsonKey(name: 'clip_count') int? clipCount
});




}
/// @nodoc
class _$ChannelMinCopyWithImpl<$Res>
    implements $ChannelMinCopyWith<$Res> {
  _$ChannelMinCopyWithImpl(this._self, this._then);

  final ChannelMin _self;
  final $Res Function(ChannelMin) _then;

/// Create a copy of ChannelMin
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? englishName = freezed,Object? type = freezed,Object? photo = freezed,Object? organization = freezed,Object? videoCount = freezed,Object? subscriberCount = freezed,Object? viewCount = freezed,Object? clipCount = freezed,}) {
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
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChannelMin].
extension ChannelMinPatterns on ChannelMin {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChannelMin value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChannelMin() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChannelMin value)  $default,){
final _that = this;
switch (_that) {
case _ChannelMin():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChannelMin value)?  $default,){
final _that = this;
switch (_that) {
case _ChannelMin() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'english_name')  String? englishName,  ChannelType? type,  String? photo, @JsonKey(name: 'org')  String? organization, @JsonKey(name: 'video_count')  int? videoCount, @JsonKey(name: 'subscriber_count')  int? subscriberCount, @JsonKey(name: 'view_count')  int? viewCount, @JsonKey(name: 'clip_count')  int? clipCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChannelMin() when $default != null:
return $default(_that.id,_that.name,_that.englishName,_that.type,_that.photo,_that.organization,_that.videoCount,_that.subscriberCount,_that.viewCount,_that.clipCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'english_name')  String? englishName,  ChannelType? type,  String? photo, @JsonKey(name: 'org')  String? organization, @JsonKey(name: 'video_count')  int? videoCount, @JsonKey(name: 'subscriber_count')  int? subscriberCount, @JsonKey(name: 'view_count')  int? viewCount, @JsonKey(name: 'clip_count')  int? clipCount)  $default,) {final _that = this;
switch (_that) {
case _ChannelMin():
return $default(_that.id,_that.name,_that.englishName,_that.type,_that.photo,_that.organization,_that.videoCount,_that.subscriberCount,_that.viewCount,_that.clipCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(name: 'english_name')  String? englishName,  ChannelType? type,  String? photo, @JsonKey(name: 'org')  String? organization, @JsonKey(name: 'video_count')  int? videoCount, @JsonKey(name: 'subscriber_count')  int? subscriberCount, @JsonKey(name: 'view_count')  int? viewCount, @JsonKey(name: 'clip_count')  int? clipCount)?  $default,) {final _that = this;
switch (_that) {
case _ChannelMin() when $default != null:
return $default(_that.id,_that.name,_that.englishName,_that.type,_that.photo,_that.organization,_that.videoCount,_that.subscriberCount,_that.viewCount,_that.clipCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChannelMin extends ChannelMin {
  const _ChannelMin({required this.id, required this.name, @JsonKey(name: 'english_name') this.englishName, this.type, this.photo, @JsonKey(name: 'org') this.organization, @JsonKey(name: 'video_count') this.videoCount, @JsonKey(name: 'subscriber_count') this.subscriberCount, @JsonKey(name: 'view_count') this.viewCount, @JsonKey(name: 'clip_count') this.clipCount}): super._();
  factory _ChannelMin.fromJson(Map<String, dynamic> json) => _$ChannelMinFromJson(json);

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

/// Create a copy of ChannelMin
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChannelMinCopyWith<_ChannelMin> get copyWith => __$ChannelMinCopyWithImpl<_ChannelMin>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChannelMinToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChannelMin&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.englishName, englishName) || other.englishName == englishName)&&(identical(other.type, type) || other.type == type)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.organization, organization) || other.organization == organization)&&(identical(other.videoCount, videoCount) || other.videoCount == videoCount)&&(identical(other.subscriberCount, subscriberCount) || other.subscriberCount == subscriberCount)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.clipCount, clipCount) || other.clipCount == clipCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,englishName,type,photo,organization,videoCount,subscriberCount,viewCount,clipCount);

@override
String toString() {
  return 'ChannelMin(id: $id, name: $name, englishName: $englishName, type: $type, photo: $photo, organization: $organization, videoCount: $videoCount, subscriberCount: $subscriberCount, viewCount: $viewCount, clipCount: $clipCount)';
}


}

/// @nodoc
abstract mixin class _$ChannelMinCopyWith<$Res> implements $ChannelMinCopyWith<$Res> {
  factory _$ChannelMinCopyWith(_ChannelMin value, $Res Function(_ChannelMin) _then) = __$ChannelMinCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(name: 'english_name') String? englishName, ChannelType? type, String? photo,@JsonKey(name: 'org') String? organization,@JsonKey(name: 'video_count') int? videoCount,@JsonKey(name: 'subscriber_count') int? subscriberCount,@JsonKey(name: 'view_count') int? viewCount,@JsonKey(name: 'clip_count') int? clipCount
});




}
/// @nodoc
class __$ChannelMinCopyWithImpl<$Res>
    implements _$ChannelMinCopyWith<$Res> {
  __$ChannelMinCopyWithImpl(this._self, this._then);

  final _ChannelMin _self;
  final $Res Function(_ChannelMin) _then;

/// Create a copy of ChannelMin
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? englishName = freezed,Object? type = freezed,Object? photo = freezed,Object? organization = freezed,Object? videoCount = freezed,Object? subscriberCount = freezed,Object? viewCount = freezed,Object? clipCount = freezed,}) {
  return _then(_ChannelMin(
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
as int?,
  ));
}


}

// dart format on
