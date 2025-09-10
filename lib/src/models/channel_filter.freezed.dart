// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChannelFilter {

/// List of Language enum to filter channels/clips. Official streams do not follow this parameter
@JsonKey(toJson: concatLanguageListWithDefault, name: 'lang') List<Language> get languages;/// Result limit. Max of 50.
@JsonKey(toJson: intToString) int get limit;/// Offset results
@JsonKey(toJson: intToString) int get offset;/// Type of Channel, whether it's a vtuber or a subber. Leave unset to query all.
@JsonKey(includeIfNull: false, toJson: channelTypeToString) ChannelType? get type;/// Column to sort on
@JsonKey(toJson: channelSortToStringList, includeIfNull: false) List<ChannelSort> get sort;/// ASC or DESC order, default asc.
@JsonKey(toJson: orderToString) Order get order;/// If set, filter for a Vtuber belonging to a specific org
@JsonKey(name: 'org', toJson: organizationToString, includeIfNull: false) Organization? get organization;
/// Create a copy of ChannelFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChannelFilterCopyWith<ChannelFilter> get copyWith => _$ChannelFilterCopyWithImpl<ChannelFilter>(this as ChannelFilter, _$identity);

  /// Serializes this ChannelFilter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChannelFilter&&const DeepCollectionEquality().equals(other.languages, languages)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.sort, sort)&&(identical(other.order, order) || other.order == order)&&(identical(other.organization, organization) || other.organization == organization));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(languages),limit,offset,type,const DeepCollectionEquality().hash(sort),order,organization);

@override
String toString() {
  return 'ChannelFilter(languages: $languages, limit: $limit, offset: $offset, type: $type, sort: $sort, order: $order, organization: $organization)';
}


}

/// @nodoc
abstract mixin class $ChannelFilterCopyWith<$Res>  {
  factory $ChannelFilterCopyWith(ChannelFilter value, $Res Function(ChannelFilter) _then) = _$ChannelFilterCopyWithImpl;
@useResult
$Res call({
@JsonKey(toJson: concatLanguageListWithDefault, name: 'lang') List<Language> languages,@JsonKey(toJson: intToString) int limit,@JsonKey(toJson: intToString) int offset,@JsonKey(includeIfNull: false, toJson: channelTypeToString) ChannelType? type,@JsonKey(toJson: channelSortToStringList, includeIfNull: false) List<ChannelSort> sort,@JsonKey(toJson: orderToString) Order order,@JsonKey(name: 'org', toJson: organizationToString, includeIfNull: false) Organization? organization
});




}
/// @nodoc
class _$ChannelFilterCopyWithImpl<$Res>
    implements $ChannelFilterCopyWith<$Res> {
  _$ChannelFilterCopyWithImpl(this._self, this._then);

  final ChannelFilter _self;
  final $Res Function(ChannelFilter) _then;

/// Create a copy of ChannelFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? languages = null,Object? limit = null,Object? offset = null,Object? type = freezed,Object? sort = null,Object? order = null,Object? organization = freezed,}) {
  return _then(_self.copyWith(
languages: null == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<Language>,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ChannelType?,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as List<ChannelSort>,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Order,organization: freezed == organization ? _self.organization : organization // ignore: cast_nullable_to_non_nullable
as Organization?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChannelFilter].
extension ChannelFilterPatterns on ChannelFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChannelFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChannelFilter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChannelFilter value)  $default,){
final _that = this;
switch (_that) {
case _ChannelFilter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChannelFilter value)?  $default,){
final _that = this;
switch (_that) {
case _ChannelFilter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(toJson: concatLanguageListWithDefault, name: 'lang')  List<Language> languages, @JsonKey(toJson: intToString)  int limit, @JsonKey(toJson: intToString)  int offset, @JsonKey(includeIfNull: false, toJson: channelTypeToString)  ChannelType? type, @JsonKey(toJson: channelSortToStringList, includeIfNull: false)  List<ChannelSort> sort, @JsonKey(toJson: orderToString)  Order order, @JsonKey(name: 'org', toJson: organizationToString, includeIfNull: false)  Organization? organization)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChannelFilter() when $default != null:
return $default(_that.languages,_that.limit,_that.offset,_that.type,_that.sort,_that.order,_that.organization);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(toJson: concatLanguageListWithDefault, name: 'lang')  List<Language> languages, @JsonKey(toJson: intToString)  int limit, @JsonKey(toJson: intToString)  int offset, @JsonKey(includeIfNull: false, toJson: channelTypeToString)  ChannelType? type, @JsonKey(toJson: channelSortToStringList, includeIfNull: false)  List<ChannelSort> sort, @JsonKey(toJson: orderToString)  Order order, @JsonKey(name: 'org', toJson: organizationToString, includeIfNull: false)  Organization? organization)  $default,) {final _that = this;
switch (_that) {
case _ChannelFilter():
return $default(_that.languages,_that.limit,_that.offset,_that.type,_that.sort,_that.order,_that.organization);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(toJson: concatLanguageListWithDefault, name: 'lang')  List<Language> languages, @JsonKey(toJson: intToString)  int limit, @JsonKey(toJson: intToString)  int offset, @JsonKey(includeIfNull: false, toJson: channelTypeToString)  ChannelType? type, @JsonKey(toJson: channelSortToStringList, includeIfNull: false)  List<ChannelSort> sort, @JsonKey(toJson: orderToString)  Order order, @JsonKey(name: 'org', toJson: organizationToString, includeIfNull: false)  Organization? organization)?  $default,) {final _that = this;
switch (_that) {
case _ChannelFilter() when $default != null:
return $default(_that.languages,_that.limit,_that.offset,_that.type,_that.sort,_that.order,_that.organization);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class _ChannelFilter extends ChannelFilter {
  const _ChannelFilter({@JsonKey(toJson: concatLanguageListWithDefault, name: 'lang') final  List<Language> languages = const [], @JsonKey(toJson: intToString) this.limit = 25, @JsonKey(toJson: intToString) this.offset = 0, @JsonKey(includeIfNull: false, toJson: channelTypeToString) this.type, @JsonKey(toJson: channelSortToStringList, includeIfNull: false) final  List<ChannelSort> sort = const [ChannelSort.organization], @JsonKey(toJson: orderToString) this.order = Order.ascending, @JsonKey(name: 'org', toJson: organizationToString, includeIfNull: false) this.organization}): assert(limit <= 50, 'The limit cannot be greater than 50'),_languages = languages,_sort = sort,super._();
  

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
/// Type of Channel, whether it's a vtuber or a subber. Leave unset to query all.
@override@JsonKey(includeIfNull: false, toJson: channelTypeToString) final  ChannelType? type;
/// Column to sort on
 final  List<ChannelSort> _sort;
/// Column to sort on
@override@JsonKey(toJson: channelSortToStringList, includeIfNull: false) List<ChannelSort> get sort {
  if (_sort is EqualUnmodifiableListView) return _sort;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sort);
}

/// ASC or DESC order, default asc.
@override@JsonKey(toJson: orderToString) final  Order order;
/// If set, filter for a Vtuber belonging to a specific org
@override@JsonKey(name: 'org', toJson: organizationToString, includeIfNull: false) final  Organization? organization;

/// Create a copy of ChannelFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChannelFilterCopyWith<_ChannelFilter> get copyWith => __$ChannelFilterCopyWithImpl<_ChannelFilter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChannelFilterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChannelFilter&&const DeepCollectionEquality().equals(other._languages, _languages)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._sort, _sort)&&(identical(other.order, order) || other.order == order)&&(identical(other.organization, organization) || other.organization == organization));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_languages),limit,offset,type,const DeepCollectionEquality().hash(_sort),order,organization);

@override
String toString() {
  return 'ChannelFilter(languages: $languages, limit: $limit, offset: $offset, type: $type, sort: $sort, order: $order, organization: $organization)';
}


}

/// @nodoc
abstract mixin class _$ChannelFilterCopyWith<$Res> implements $ChannelFilterCopyWith<$Res> {
  factory _$ChannelFilterCopyWith(_ChannelFilter value, $Res Function(_ChannelFilter) _then) = __$ChannelFilterCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(toJson: concatLanguageListWithDefault, name: 'lang') List<Language> languages,@JsonKey(toJson: intToString) int limit,@JsonKey(toJson: intToString) int offset,@JsonKey(includeIfNull: false, toJson: channelTypeToString) ChannelType? type,@JsonKey(toJson: channelSortToStringList, includeIfNull: false) List<ChannelSort> sort,@JsonKey(toJson: orderToString) Order order,@JsonKey(name: 'org', toJson: organizationToString, includeIfNull: false) Organization? organization
});




}
/// @nodoc
class __$ChannelFilterCopyWithImpl<$Res>
    implements _$ChannelFilterCopyWith<$Res> {
  __$ChannelFilterCopyWithImpl(this._self, this._then);

  final _ChannelFilter _self;
  final $Res Function(_ChannelFilter) _then;

/// Create a copy of ChannelFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? languages = null,Object? limit = null,Object? offset = null,Object? type = freezed,Object? sort = null,Object? order = null,Object? organization = freezed,}) {
  return _then(_ChannelFilter(
languages: null == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<Language>,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ChannelType?,sort: null == sort ? _self._sort : sort // ignore: cast_nullable_to_non_nullable
as List<ChannelSort>,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Order,organization: freezed == organization ? _self.organization : organization // ignore: cast_nullable_to_non_nullable
as Organization?,
  ));
}


}

// dart format on
