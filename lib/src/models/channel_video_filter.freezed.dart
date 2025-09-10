// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_video_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChannelVideoFilter {

/// Request extra data be included in the results. They are not guarenteed to be returned.
@JsonKey(toJson: concatIncludesList, name: 'include', includeIfNull: false) List<Includes> get includes;/// List of Language enum to filter channels/clips. Official streams do not follow this parameter
@JsonKey(toJson: concatLanguageListWithDefault, name: 'lang') List<Language> get languages;/// Result limit. Max of 50.
@JsonKey(toJson: intToString) int get limit;/// Offset results
@JsonKey(toJson: intToString) int get offset;/// If paginated is set to true, returns [PaginatedVideos] with total, otherwise returns [PaginatedVideos] without the total.
@JsonKey(toJson: paginatedToString) bool get paginated;
/// Create a copy of ChannelVideoFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChannelVideoFilterCopyWith<ChannelVideoFilter> get copyWith => _$ChannelVideoFilterCopyWithImpl<ChannelVideoFilter>(this as ChannelVideoFilter, _$identity);

  /// Serializes this ChannelVideoFilter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChannelVideoFilter&&const DeepCollectionEquality().equals(other.includes, includes)&&const DeepCollectionEquality().equals(other.languages, languages)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.paginated, paginated) || other.paginated == paginated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(includes),const DeepCollectionEquality().hash(languages),limit,offset,paginated);

@override
String toString() {
  return 'ChannelVideoFilter(includes: $includes, languages: $languages, limit: $limit, offset: $offset, paginated: $paginated)';
}


}

/// @nodoc
abstract mixin class $ChannelVideoFilterCopyWith<$Res>  {
  factory $ChannelVideoFilterCopyWith(ChannelVideoFilter value, $Res Function(ChannelVideoFilter) _then) = _$ChannelVideoFilterCopyWithImpl;
@useResult
$Res call({
@JsonKey(toJson: concatIncludesList, name: 'include', includeIfNull: false) List<Includes> includes,@JsonKey(toJson: concatLanguageListWithDefault, name: 'lang') List<Language> languages,@JsonKey(toJson: intToString) int limit,@JsonKey(toJson: intToString) int offset,@JsonKey(toJson: paginatedToString) bool paginated
});




}
/// @nodoc
class _$ChannelVideoFilterCopyWithImpl<$Res>
    implements $ChannelVideoFilterCopyWith<$Res> {
  _$ChannelVideoFilterCopyWithImpl(this._self, this._then);

  final ChannelVideoFilter _self;
  final $Res Function(ChannelVideoFilter) _then;

/// Create a copy of ChannelVideoFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? includes = null,Object? languages = null,Object? limit = null,Object? offset = null,Object? paginated = null,}) {
  return _then(_self.copyWith(
includes: null == includes ? _self.includes : includes // ignore: cast_nullable_to_non_nullable
as List<Includes>,languages: null == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<Language>,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,paginated: null == paginated ? _self.paginated : paginated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ChannelVideoFilter].
extension ChannelVideoFilterPatterns on ChannelVideoFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChannelVideoFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChannelVideoFilter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChannelVideoFilter value)  $default,){
final _that = this;
switch (_that) {
case _ChannelVideoFilter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChannelVideoFilter value)?  $default,){
final _that = this;
switch (_that) {
case _ChannelVideoFilter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(toJson: concatIncludesList, name: 'include', includeIfNull: false)  List<Includes> includes, @JsonKey(toJson: concatLanguageListWithDefault, name: 'lang')  List<Language> languages, @JsonKey(toJson: intToString)  int limit, @JsonKey(toJson: intToString)  int offset, @JsonKey(toJson: paginatedToString)  bool paginated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChannelVideoFilter() when $default != null:
return $default(_that.includes,_that.languages,_that.limit,_that.offset,_that.paginated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(toJson: concatIncludesList, name: 'include', includeIfNull: false)  List<Includes> includes, @JsonKey(toJson: concatLanguageListWithDefault, name: 'lang')  List<Language> languages, @JsonKey(toJson: intToString)  int limit, @JsonKey(toJson: intToString)  int offset, @JsonKey(toJson: paginatedToString)  bool paginated)  $default,) {final _that = this;
switch (_that) {
case _ChannelVideoFilter():
return $default(_that.includes,_that.languages,_that.limit,_that.offset,_that.paginated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(toJson: concatIncludesList, name: 'include', includeIfNull: false)  List<Includes> includes, @JsonKey(toJson: concatLanguageListWithDefault, name: 'lang')  List<Language> languages, @JsonKey(toJson: intToString)  int limit, @JsonKey(toJson: intToString)  int offset, @JsonKey(toJson: paginatedToString)  bool paginated)?  $default,) {final _that = this;
switch (_that) {
case _ChannelVideoFilter() when $default != null:
return $default(_that.includes,_that.languages,_that.limit,_that.offset,_that.paginated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class _ChannelVideoFilter extends ChannelVideoFilter {
  const _ChannelVideoFilter({@JsonKey(toJson: concatIncludesList, name: 'include', includeIfNull: false) final  List<Includes> includes = const [], @JsonKey(toJson: concatLanguageListWithDefault, name: 'lang') final  List<Language> languages = const [], @JsonKey(toJson: intToString) this.limit = 25, @JsonKey(toJson: intToString) this.offset = 0, @JsonKey(toJson: paginatedToString) this.paginated = true}): assert(limit <= 50, 'The limit cannot be greater than 50'),_includes = includes,_languages = languages,super._();
  

/// Request extra data be included in the results. They are not guarenteed to be returned.
 final  List<Includes> _includes;
/// Request extra data be included in the results. They are not guarenteed to be returned.
@override@JsonKey(toJson: concatIncludesList, name: 'include', includeIfNull: false) List<Includes> get includes {
  if (_includes is EqualUnmodifiableListView) return _includes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_includes);
}

/// List of Language enum to filter channels/clips. Official streams do not follow this parameter
 final  List<Language> _languages;
/// List of Language enum to filter channels/clips. Official streams do not follow this parameter
@override@JsonKey(toJson: concatLanguageListWithDefault, name: 'lang') List<Language> get languages {
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_languages);
}

/// Result limit. Max of 50.
@override@JsonKey(toJson: intToString) final  int limit;
/// Offset results
@override@JsonKey(toJson: intToString) final  int offset;
/// If paginated is set to true, returns [PaginatedVideos] with total, otherwise returns [PaginatedVideos] without the total.
@override@JsonKey(toJson: paginatedToString) final  bool paginated;

/// Create a copy of ChannelVideoFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChannelVideoFilterCopyWith<_ChannelVideoFilter> get copyWith => __$ChannelVideoFilterCopyWithImpl<_ChannelVideoFilter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChannelVideoFilterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChannelVideoFilter&&const DeepCollectionEquality().equals(other._includes, _includes)&&const DeepCollectionEquality().equals(other._languages, _languages)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.paginated, paginated) || other.paginated == paginated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_includes),const DeepCollectionEquality().hash(_languages),limit,offset,paginated);

@override
String toString() {
  return 'ChannelVideoFilter(includes: $includes, languages: $languages, limit: $limit, offset: $offset, paginated: $paginated)';
}


}

/// @nodoc
abstract mixin class _$ChannelVideoFilterCopyWith<$Res> implements $ChannelVideoFilterCopyWith<$Res> {
  factory _$ChannelVideoFilterCopyWith(_ChannelVideoFilter value, $Res Function(_ChannelVideoFilter) _then) = __$ChannelVideoFilterCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(toJson: concatIncludesList, name: 'include', includeIfNull: false) List<Includes> includes,@JsonKey(toJson: concatLanguageListWithDefault, name: 'lang') List<Language> languages,@JsonKey(toJson: intToString) int limit,@JsonKey(toJson: intToString) int offset,@JsonKey(toJson: paginatedToString) bool paginated
});




}
/// @nodoc
class __$ChannelVideoFilterCopyWithImpl<$Res>
    implements _$ChannelVideoFilterCopyWith<$Res> {
  __$ChannelVideoFilterCopyWithImpl(this._self, this._then);

  final _ChannelVideoFilter _self;
  final $Res Function(_ChannelVideoFilter) _then;

/// Create a copy of ChannelVideoFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? includes = null,Object? languages = null,Object? limit = null,Object? offset = null,Object? paginated = null,}) {
  return _then(_ChannelVideoFilter(
includes: null == includes ? _self._includes : includes // ignore: cast_nullable_to_non_nullable
as List<Includes>,languages: null == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<Language>,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,paginated: null == paginated ? _self.paginated : paginated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
