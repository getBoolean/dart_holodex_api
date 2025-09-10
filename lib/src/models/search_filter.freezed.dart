// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchFilter {

/// Sort by newest or oldest
@JsonKey(name: 'sort', toJson: searchSortToString) SearchSort get sort;/// If set, will filter clips to only show clips with these languages + all vtuber streams
/// (provided searchTargets is not set to filter out streams)
@JsonKey(toJson: languageListToStringList, name: 'lang') List<Language> get languages;/// Target types of videos
@JsonKey(name: 'target', toJson: searchTargetToStringList) List<SearchTarget> get targets;/// Return videos that match one of the provided topics
@JsonKey(name: 'topic') List<String> get topics;/// Videos with all of the specified channel ids. If two or more channel IDs are specified,
/// will only return their collabs, or if one channel is a clipper, it will only show clips
/// of the other vtubers made by this clipper.
@JsonKey(name: 'vch') List<String> get videoChannels;/// Videos of channels in any of the specified organizations, or clips that involve a channel
/// in the specified organization.
@JsonKey(name: 'org', toJson: organizationListToStringList) List<Organization> get organizations;/// If paginated is set to true, returns [List]<[VideoFull]> with total, otherwise returns [List]<[VideoFull]> without the total.
 bool get paginated;/// Offset results
@JsonKey(toJson: intToString) int get offset;/// Result limit
@JsonKey(toJson: intToString) int get limit;
/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchFilterCopyWith<SearchFilter> get copyWith => _$SearchFilterCopyWithImpl<SearchFilter>(this as SearchFilter, _$identity);

  /// Serializes this SearchFilter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchFilter&&(identical(other.sort, sort) || other.sort == sort)&&const DeepCollectionEquality().equals(other.languages, languages)&&const DeepCollectionEquality().equals(other.targets, targets)&&const DeepCollectionEquality().equals(other.topics, topics)&&const DeepCollectionEquality().equals(other.videoChannels, videoChannels)&&const DeepCollectionEquality().equals(other.organizations, organizations)&&(identical(other.paginated, paginated) || other.paginated == paginated)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sort,const DeepCollectionEquality().hash(languages),const DeepCollectionEquality().hash(targets),const DeepCollectionEquality().hash(topics),const DeepCollectionEquality().hash(videoChannels),const DeepCollectionEquality().hash(organizations),paginated,offset,limit);

@override
String toString() {
  return 'SearchFilter(sort: $sort, languages: $languages, targets: $targets, topics: $topics, videoChannels: $videoChannels, organizations: $organizations, paginated: $paginated, offset: $offset, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $SearchFilterCopyWith<$Res>  {
  factory $SearchFilterCopyWith(SearchFilter value, $Res Function(SearchFilter) _then) = _$SearchFilterCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sort', toJson: searchSortToString) SearchSort sort,@JsonKey(toJson: languageListToStringList, name: 'lang') List<Language> languages,@JsonKey(name: 'target', toJson: searchTargetToStringList) List<SearchTarget> targets,@JsonKey(name: 'topic') List<String> topics,@JsonKey(name: 'vch') List<String> videoChannels,@JsonKey(name: 'org', toJson: organizationListToStringList) List<Organization> organizations, bool paginated,@JsonKey(toJson: intToString) int offset,@JsonKey(toJson: intToString) int limit
});




}
/// @nodoc
class _$SearchFilterCopyWithImpl<$Res>
    implements $SearchFilterCopyWith<$Res> {
  _$SearchFilterCopyWithImpl(this._self, this._then);

  final SearchFilter _self;
  final $Res Function(SearchFilter) _then;

/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sort = null,Object? languages = null,Object? targets = null,Object? topics = null,Object? videoChannels = null,Object? organizations = null,Object? paginated = null,Object? offset = null,Object? limit = null,}) {
  return _then(_self.copyWith(
sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as SearchSort,languages: null == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<Language>,targets: null == targets ? _self.targets : targets // ignore: cast_nullable_to_non_nullable
as List<SearchTarget>,topics: null == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,videoChannels: null == videoChannels ? _self.videoChannels : videoChannels // ignore: cast_nullable_to_non_nullable
as List<String>,organizations: null == organizations ? _self.organizations : organizations // ignore: cast_nullable_to_non_nullable
as List<Organization>,paginated: null == paginated ? _self.paginated : paginated // ignore: cast_nullable_to_non_nullable
as bool,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchFilter].
extension SearchFilterPatterns on SearchFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchFilter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchFilter value)  $default,){
final _that = this;
switch (_that) {
case _SearchFilter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchFilter value)?  $default,){
final _that = this;
switch (_that) {
case _SearchFilter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sort', toJson: searchSortToString)  SearchSort sort, @JsonKey(toJson: languageListToStringList, name: 'lang')  List<Language> languages, @JsonKey(name: 'target', toJson: searchTargetToStringList)  List<SearchTarget> targets, @JsonKey(name: 'topic')  List<String> topics, @JsonKey(name: 'vch')  List<String> videoChannels, @JsonKey(name: 'org', toJson: organizationListToStringList)  List<Organization> organizations,  bool paginated, @JsonKey(toJson: intToString)  int offset, @JsonKey(toJson: intToString)  int limit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchFilter() when $default != null:
return $default(_that.sort,_that.languages,_that.targets,_that.topics,_that.videoChannels,_that.organizations,_that.paginated,_that.offset,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sort', toJson: searchSortToString)  SearchSort sort, @JsonKey(toJson: languageListToStringList, name: 'lang')  List<Language> languages, @JsonKey(name: 'target', toJson: searchTargetToStringList)  List<SearchTarget> targets, @JsonKey(name: 'topic')  List<String> topics, @JsonKey(name: 'vch')  List<String> videoChannels, @JsonKey(name: 'org', toJson: organizationListToStringList)  List<Organization> organizations,  bool paginated, @JsonKey(toJson: intToString)  int offset, @JsonKey(toJson: intToString)  int limit)  $default,) {final _that = this;
switch (_that) {
case _SearchFilter():
return $default(_that.sort,_that.languages,_that.targets,_that.topics,_that.videoChannels,_that.organizations,_that.paginated,_that.offset,_that.limit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sort', toJson: searchSortToString)  SearchSort sort, @JsonKey(toJson: languageListToStringList, name: 'lang')  List<Language> languages, @JsonKey(name: 'target', toJson: searchTargetToStringList)  List<SearchTarget> targets, @JsonKey(name: 'topic')  List<String> topics, @JsonKey(name: 'vch')  List<String> videoChannels, @JsonKey(name: 'org', toJson: organizationListToStringList)  List<Organization> organizations,  bool paginated, @JsonKey(toJson: intToString)  int offset, @JsonKey(toJson: intToString)  int limit)?  $default,) {final _that = this;
switch (_that) {
case _SearchFilter() when $default != null:
return $default(_that.sort,_that.languages,_that.targets,_that.topics,_that.videoChannels,_that.organizations,_that.paginated,_that.offset,_that.limit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class _SearchFilter implements SearchFilter {
  const _SearchFilter({@JsonKey(name: 'sort', toJson: searchSortToString) this.sort = SearchSort.newest, @JsonKey(toJson: languageListToStringList, name: 'lang') final  List<Language> languages = const [], @JsonKey(name: 'target', toJson: searchTargetToStringList) final  List<SearchTarget> targets = const [SearchTarget.clip, SearchTarget.stream], @JsonKey(name: 'topic') final  List<String> topics = const [], @JsonKey(name: 'vch') final  List<String> videoChannels = const [], @JsonKey(name: 'org', toJson: organizationListToStringList) final  List<Organization> organizations = const [], this.paginated = true, @JsonKey(toJson: intToString) this.offset = 0, @JsonKey(toJson: intToString) this.limit = 25}): assert(limit <= 50, 'The limit cannot be greater than 50'),_languages = languages,_targets = targets,_topics = topics,_videoChannels = videoChannels,_organizations = organizations;
  

/// Sort by newest or oldest
@override@JsonKey(name: 'sort', toJson: searchSortToString) final  SearchSort sort;
/// If set, will filter clips to only show clips with these languages + all vtuber streams
/// (provided searchTargets is not set to filter out streams)
 final  List<Language> _languages;
/// If set, will filter clips to only show clips with these languages + all vtuber streams
/// (provided searchTargets is not set to filter out streams)
@override@JsonKey(toJson: languageListToStringList, name: 'lang') List<Language> get languages {
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_languages);
}

/// Target types of videos
 final  List<SearchTarget> _targets;
/// Target types of videos
@override@JsonKey(name: 'target', toJson: searchTargetToStringList) List<SearchTarget> get targets {
  if (_targets is EqualUnmodifiableListView) return _targets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_targets);
}

/// Return videos that match one of the provided topics
 final  List<String> _topics;
/// Return videos that match one of the provided topics
@override@JsonKey(name: 'topic') List<String> get topics {
  if (_topics is EqualUnmodifiableListView) return _topics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topics);
}

/// Videos with all of the specified channel ids. If two or more channel IDs are specified,
/// will only return their collabs, or if one channel is a clipper, it will only show clips
/// of the other vtubers made by this clipper.
 final  List<String> _videoChannels;
/// Videos with all of the specified channel ids. If two or more channel IDs are specified,
/// will only return their collabs, or if one channel is a clipper, it will only show clips
/// of the other vtubers made by this clipper.
@override@JsonKey(name: 'vch') List<String> get videoChannels {
  if (_videoChannels is EqualUnmodifiableListView) return _videoChannels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videoChannels);
}

/// Videos of channels in any of the specified organizations, or clips that involve a channel
/// in the specified organization.
 final  List<Organization> _organizations;
/// Videos of channels in any of the specified organizations, or clips that involve a channel
/// in the specified organization.
@override@JsonKey(name: 'org', toJson: organizationListToStringList) List<Organization> get organizations {
  if (_organizations is EqualUnmodifiableListView) return _organizations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_organizations);
}

/// If paginated is set to true, returns [List]<[VideoFull]> with total, otherwise returns [List]<[VideoFull]> without the total.
@override@JsonKey() final  bool paginated;
/// Offset results
@override@JsonKey(toJson: intToString) final  int offset;
/// Result limit
@override@JsonKey(toJson: intToString) final  int limit;

/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchFilterCopyWith<_SearchFilter> get copyWith => __$SearchFilterCopyWithImpl<_SearchFilter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchFilterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchFilter&&(identical(other.sort, sort) || other.sort == sort)&&const DeepCollectionEquality().equals(other._languages, _languages)&&const DeepCollectionEquality().equals(other._targets, _targets)&&const DeepCollectionEquality().equals(other._topics, _topics)&&const DeepCollectionEquality().equals(other._videoChannels, _videoChannels)&&const DeepCollectionEquality().equals(other._organizations, _organizations)&&(identical(other.paginated, paginated) || other.paginated == paginated)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sort,const DeepCollectionEquality().hash(_languages),const DeepCollectionEquality().hash(_targets),const DeepCollectionEquality().hash(_topics),const DeepCollectionEquality().hash(_videoChannels),const DeepCollectionEquality().hash(_organizations),paginated,offset,limit);

@override
String toString() {
  return 'SearchFilter(sort: $sort, languages: $languages, targets: $targets, topics: $topics, videoChannels: $videoChannels, organizations: $organizations, paginated: $paginated, offset: $offset, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$SearchFilterCopyWith<$Res> implements $SearchFilterCopyWith<$Res> {
  factory _$SearchFilterCopyWith(_SearchFilter value, $Res Function(_SearchFilter) _then) = __$SearchFilterCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sort', toJson: searchSortToString) SearchSort sort,@JsonKey(toJson: languageListToStringList, name: 'lang') List<Language> languages,@JsonKey(name: 'target', toJson: searchTargetToStringList) List<SearchTarget> targets,@JsonKey(name: 'topic') List<String> topics,@JsonKey(name: 'vch') List<String> videoChannels,@JsonKey(name: 'org', toJson: organizationListToStringList) List<Organization> organizations, bool paginated,@JsonKey(toJson: intToString) int offset,@JsonKey(toJson: intToString) int limit
});




}
/// @nodoc
class __$SearchFilterCopyWithImpl<$Res>
    implements _$SearchFilterCopyWith<$Res> {
  __$SearchFilterCopyWithImpl(this._self, this._then);

  final _SearchFilter _self;
  final $Res Function(_SearchFilter) _then;

/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sort = null,Object? languages = null,Object? targets = null,Object? topics = null,Object? videoChannels = null,Object? organizations = null,Object? paginated = null,Object? offset = null,Object? limit = null,}) {
  return _then(_SearchFilter(
sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as SearchSort,languages: null == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<Language>,targets: null == targets ? _self._targets : targets // ignore: cast_nullable_to_non_nullable
as List<SearchTarget>,topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,videoChannels: null == videoChannels ? _self._videoChannels : videoChannels // ignore: cast_nullable_to_non_nullable
as List<String>,organizations: null == organizations ? _self._organizations : organizations // ignore: cast_nullable_to_non_nullable
as List<Organization>,paginated: null == paginated ? _self.paginated : paginated // ignore: cast_nullable_to_non_nullable
as bool,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
