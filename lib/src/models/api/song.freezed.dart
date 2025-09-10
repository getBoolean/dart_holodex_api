// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Song {

 String get name; String? get art; int? get end; int? get start; int? get itunesid;@JsonKey(name: 'original_artist') String? get originalArtist;
/// Create a copy of Song
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SongCopyWith<Song> get copyWith => _$SongCopyWithImpl<Song>(this as Song, _$identity);

  /// Serializes this Song to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Song&&(identical(other.name, name) || other.name == name)&&(identical(other.art, art) || other.art == art)&&(identical(other.end, end) || other.end == end)&&(identical(other.start, start) || other.start == start)&&(identical(other.itunesid, itunesid) || other.itunesid == itunesid)&&(identical(other.originalArtist, originalArtist) || other.originalArtist == originalArtist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,art,end,start,itunesid,originalArtist);

@override
String toString() {
  return 'Song(name: $name, art: $art, end: $end, start: $start, itunesid: $itunesid, originalArtist: $originalArtist)';
}


}

/// @nodoc
abstract mixin class $SongCopyWith<$Res>  {
  factory $SongCopyWith(Song value, $Res Function(Song) _then) = _$SongCopyWithImpl;
@useResult
$Res call({
 String name, String? art, int? end, int? start, int? itunesid,@JsonKey(name: 'original_artist') String? originalArtist
});




}
/// @nodoc
class _$SongCopyWithImpl<$Res>
    implements $SongCopyWith<$Res> {
  _$SongCopyWithImpl(this._self, this._then);

  final Song _self;
  final $Res Function(Song) _then;

/// Create a copy of Song
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? art = freezed,Object? end = freezed,Object? start = freezed,Object? itunesid = freezed,Object? originalArtist = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,art: freezed == art ? _self.art : art // ignore: cast_nullable_to_non_nullable
as String?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as int?,start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as int?,itunesid: freezed == itunesid ? _self.itunesid : itunesid // ignore: cast_nullable_to_non_nullable
as int?,originalArtist: freezed == originalArtist ? _self.originalArtist : originalArtist // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Song].
extension SongPatterns on Song {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Song value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Song() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Song value)  $default,){
final _that = this;
switch (_that) {
case _Song():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Song value)?  $default,){
final _that = this;
switch (_that) {
case _Song() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? art,  int? end,  int? start,  int? itunesid, @JsonKey(name: 'original_artist')  String? originalArtist)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Song() when $default != null:
return $default(_that.name,_that.art,_that.end,_that.start,_that.itunesid,_that.originalArtist);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? art,  int? end,  int? start,  int? itunesid, @JsonKey(name: 'original_artist')  String? originalArtist)  $default,) {final _that = this;
switch (_that) {
case _Song():
return $default(_that.name,_that.art,_that.end,_that.start,_that.itunesid,_that.originalArtist);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? art,  int? end,  int? start,  int? itunesid, @JsonKey(name: 'original_artist')  String? originalArtist)?  $default,) {final _that = this;
switch (_that) {
case _Song() when $default != null:
return $default(_that.name,_that.art,_that.end,_that.start,_that.itunesid,_that.originalArtist);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Song implements Song {
  const _Song({required this.name, this.art, this.end, this.start, this.itunesid, @JsonKey(name: 'original_artist') this.originalArtist});
  factory _Song.fromJson(Map<String, dynamic> json) => _$SongFromJson(json);

@override final  String name;
@override final  String? art;
@override final  int? end;
@override final  int? start;
@override final  int? itunesid;
@override@JsonKey(name: 'original_artist') final  String? originalArtist;

/// Create a copy of Song
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SongCopyWith<_Song> get copyWith => __$SongCopyWithImpl<_Song>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SongToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Song&&(identical(other.name, name) || other.name == name)&&(identical(other.art, art) || other.art == art)&&(identical(other.end, end) || other.end == end)&&(identical(other.start, start) || other.start == start)&&(identical(other.itunesid, itunesid) || other.itunesid == itunesid)&&(identical(other.originalArtist, originalArtist) || other.originalArtist == originalArtist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,art,end,start,itunesid,originalArtist);

@override
String toString() {
  return 'Song(name: $name, art: $art, end: $end, start: $start, itunesid: $itunesid, originalArtist: $originalArtist)';
}


}

/// @nodoc
abstract mixin class _$SongCopyWith<$Res> implements $SongCopyWith<$Res> {
  factory _$SongCopyWith(_Song value, $Res Function(_Song) _then) = __$SongCopyWithImpl;
@override @useResult
$Res call({
 String name, String? art, int? end, int? start, int? itunesid,@JsonKey(name: 'original_artist') String? originalArtist
});




}
/// @nodoc
class __$SongCopyWithImpl<$Res>
    implements _$SongCopyWith<$Res> {
  __$SongCopyWithImpl(this._self, this._then);

  final _Song _self;
  final $Res Function(_Song) _then;

/// Create a copy of Song
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? art = freezed,Object? end = freezed,Object? start = freezed,Object? itunesid = freezed,Object? originalArtist = freezed,}) {
  return _then(_Song(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,art: freezed == art ? _self.art : art // ignore: cast_nullable_to_non_nullable
as String?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as int?,start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as int?,itunesid: freezed == itunesid ? _self.itunesid : itunesid // ignore: cast_nullable_to_non_nullable
as int?,originalArtist: freezed == originalArtist ? _self.originalArtist : originalArtist // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
