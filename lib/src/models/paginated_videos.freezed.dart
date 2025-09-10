// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_videos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginatedVideos {

/// The total number of videos on the server.
@JsonKey(fromJson: _parseTotal) int? get total; List<VideoFull> get items; bool get paginated;
/// Create a copy of PaginatedVideos
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedVideosCopyWith<PaginatedVideos> get copyWith => _$PaginatedVideosCopyWithImpl<PaginatedVideos>(this as PaginatedVideos, _$identity);

  /// Serializes this PaginatedVideos to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedVideos&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.paginated, paginated) || other.paginated == paginated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,const DeepCollectionEquality().hash(items),paginated);

@override
String toString() {
  return 'PaginatedVideos(total: $total, items: $items, paginated: $paginated)';
}


}

/// @nodoc
abstract mixin class $PaginatedVideosCopyWith<$Res>  {
  factory $PaginatedVideosCopyWith(PaginatedVideos value, $Res Function(PaginatedVideos) _then) = _$PaginatedVideosCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: _parseTotal) int? total, List<VideoFull> items, bool paginated
});




}
/// @nodoc
class _$PaginatedVideosCopyWithImpl<$Res>
    implements $PaginatedVideosCopyWith<$Res> {
  _$PaginatedVideosCopyWithImpl(this._self, this._then);

  final PaginatedVideos _self;
  final $Res Function(PaginatedVideos) _then;

/// Create a copy of PaginatedVideos
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = freezed,Object? items = null,Object? paginated = null,}) {
  return _then(_self.copyWith(
total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<VideoFull>,paginated: null == paginated ? _self.paginated : paginated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginatedVideos].
extension PaginatedVideosPatterns on PaginatedVideos {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginatedVideos value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginatedVideos() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginatedVideos value)  $default,){
final _that = this;
switch (_that) {
case _PaginatedVideos():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginatedVideos value)?  $default,){
final _that = this;
switch (_that) {
case _PaginatedVideos() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _parseTotal)  int? total,  List<VideoFull> items,  bool paginated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginatedVideos() when $default != null:
return $default(_that.total,_that.items,_that.paginated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _parseTotal)  int? total,  List<VideoFull> items,  bool paginated)  $default,) {final _that = this;
switch (_that) {
case _PaginatedVideos():
return $default(_that.total,_that.items,_that.paginated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: _parseTotal)  int? total,  List<VideoFull> items,  bool paginated)?  $default,) {final _that = this;
switch (_that) {
case _PaginatedVideos() when $default != null:
return $default(_that.total,_that.items,_that.paginated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginatedVideos extends PaginatedVideos {
  const _PaginatedVideos({@JsonKey(fromJson: _parseTotal) this.total, final  List<VideoFull> items = const [], this.paginated = false}): _items = items,super._();
  factory _PaginatedVideos.fromJson(Map<String, dynamic> json) => _$PaginatedVideosFromJson(json);

/// The total number of videos on the server.
@override@JsonKey(fromJson: _parseTotal) final  int? total;
 final  List<VideoFull> _items;
@override@JsonKey() List<VideoFull> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  bool paginated;

/// Create a copy of PaginatedVideos
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedVideosCopyWith<_PaginatedVideos> get copyWith => __$PaginatedVideosCopyWithImpl<_PaginatedVideos>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginatedVideosToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedVideos&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.paginated, paginated) || other.paginated == paginated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,const DeepCollectionEquality().hash(_items),paginated);

@override
String toString() {
  return 'PaginatedVideos(total: $total, items: $items, paginated: $paginated)';
}


}

/// @nodoc
abstract mixin class _$PaginatedVideosCopyWith<$Res> implements $PaginatedVideosCopyWith<$Res> {
  factory _$PaginatedVideosCopyWith(_PaginatedVideos value, $Res Function(_PaginatedVideos) _then) = __$PaginatedVideosCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: _parseTotal) int? total, List<VideoFull> items, bool paginated
});




}
/// @nodoc
class __$PaginatedVideosCopyWithImpl<$Res>
    implements _$PaginatedVideosCopyWith<$Res> {
  __$PaginatedVideosCopyWithImpl(this._self, this._then);

  final _PaginatedVideos _self;
  final $Res Function(_PaginatedVideos) _then;

/// Create a copy of PaginatedVideos
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = freezed,Object? items = null,Object? paginated = null,}) {
  return _then(_PaginatedVideos(
total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<VideoFull>,paginated: null == paginated ? _self.paginated : paginated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
