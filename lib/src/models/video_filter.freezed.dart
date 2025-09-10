// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VideoFilter {

/// Filter by video uploader channel ID
@JsonKey(name: 'channel_id', includeIfNull: false) String? get channelId;/// Youtube Video IDs. If Specified, only this video can be returned (may be filtered out by other conditions though)
@JsonKey(name: 'id', toJson: nullStringListIfEmpty, includeIfNull: false) List<String> get ids;/// Request extra data be included in the results. They are not guarenteed to be returned.
@JsonKey(toJson: concatIncludesList, name: 'include', includeIfNull: false) List<Includes> get includes;/// Filter by the `Language`
@JsonKey(toJson: concatLanguageListWithDefault, name: 'lang') List<Language> get languages;/// Limit the number of results returned. Maximum value of 50
@JsonKey(toJson: intToString) int get limit;/// Number of maximum hours upcoming to get upcoming videos by (for rejecting waiting rooms that are two years out)
@JsonKey(name: 'max_upcoming_hours', toJson: intToStringNullable, includeIfNull: false) int? get maxUpcomingHours;/// Filter by mentioned channel id, excludes itself. Generally used to find collabs/clips that include the requested channel
@JsonKey(name: 'mentioned_channel_id', includeIfNull: false) String? get mentionedChannelId;/// Receive results starting at this number in the array from the Holodex API
@JsonKey(toJson: intToString) int get offset;/// Order results by ascending or descending
@JsonKey(toJson: orderToString) Order get order;/// Filter by clips that feature the org's talent or videos posted by the org's talent.
@JsonKey(name: 'org', toJson: organizationToString, includeIfNull: false) Organization? get organization;/// If paginated is set to true, returns [PaginatedVideos] with total, otherwise returns [PaginatedVideos] without the total.
@JsonKey(toJson: paginatedToString) bool get paginated;/// Sort the returned data by this field
@JsonKey(toJson: concatVideoSortList, includeIfNull: false) List<VideoSort> get sort;/// Filter by the video status
@JsonKey(toJson: concatVideoStatusList, includeIfNull: false) List<VideoStatus> get status;/// Filter by video topic ID
@JsonKey(includeIfNull: false) String? get topic;/// Filter by type of video, either clips or streams
@JsonKey(toJson: videoTypeToString, includeIfNull: false) VideoType? get type;
/// Create a copy of VideoFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoFilterCopyWith<VideoFilter> get copyWith => _$VideoFilterCopyWithImpl<VideoFilter>(this as VideoFilter, _$identity);

  /// Serializes this VideoFilter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoFilter&&(identical(other.channelId, channelId) || other.channelId == channelId)&&const DeepCollectionEquality().equals(other.ids, ids)&&const DeepCollectionEquality().equals(other.includes, includes)&&const DeepCollectionEquality().equals(other.languages, languages)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.maxUpcomingHours, maxUpcomingHours) || other.maxUpcomingHours == maxUpcomingHours)&&(identical(other.mentionedChannelId, mentionedChannelId) || other.mentionedChannelId == mentionedChannelId)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.order, order) || other.order == order)&&(identical(other.organization, organization) || other.organization == organization)&&(identical(other.paginated, paginated) || other.paginated == paginated)&&const DeepCollectionEquality().equals(other.sort, sort)&&const DeepCollectionEquality().equals(other.status, status)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,channelId,const DeepCollectionEquality().hash(ids),const DeepCollectionEquality().hash(includes),const DeepCollectionEquality().hash(languages),limit,maxUpcomingHours,mentionedChannelId,offset,order,organization,paginated,const DeepCollectionEquality().hash(sort),const DeepCollectionEquality().hash(status),topic,type);

@override
String toString() {
  return 'VideoFilter(channelId: $channelId, ids: $ids, includes: $includes, languages: $languages, limit: $limit, maxUpcomingHours: $maxUpcomingHours, mentionedChannelId: $mentionedChannelId, offset: $offset, order: $order, organization: $organization, paginated: $paginated, sort: $sort, status: $status, topic: $topic, type: $type)';
}


}

/// @nodoc
abstract mixin class $VideoFilterCopyWith<$Res>  {
  factory $VideoFilterCopyWith(VideoFilter value, $Res Function(VideoFilter) _then) = _$VideoFilterCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'channel_id', includeIfNull: false) String? channelId,@JsonKey(name: 'id', toJson: nullStringListIfEmpty, includeIfNull: false) List<String> ids,@JsonKey(toJson: concatIncludesList, name: 'include', includeIfNull: false) List<Includes> includes,@JsonKey(toJson: concatLanguageListWithDefault, name: 'lang') List<Language> languages,@JsonKey(toJson: intToString) int limit,@JsonKey(name: 'max_upcoming_hours', toJson: intToStringNullable, includeIfNull: false) int? maxUpcomingHours,@JsonKey(name: 'mentioned_channel_id', includeIfNull: false) String? mentionedChannelId,@JsonKey(toJson: intToString) int offset,@JsonKey(toJson: orderToString) Order order,@JsonKey(name: 'org', toJson: organizationToString, includeIfNull: false) Organization? organization,@JsonKey(toJson: paginatedToString) bool paginated,@JsonKey(toJson: concatVideoSortList, includeIfNull: false) List<VideoSort> sort,@JsonKey(toJson: concatVideoStatusList, includeIfNull: false) List<VideoStatus> status,@JsonKey(includeIfNull: false) String? topic,@JsonKey(toJson: videoTypeToString, includeIfNull: false) VideoType? type
});




}
/// @nodoc
class _$VideoFilterCopyWithImpl<$Res>
    implements $VideoFilterCopyWith<$Res> {
  _$VideoFilterCopyWithImpl(this._self, this._then);

  final VideoFilter _self;
  final $Res Function(VideoFilter) _then;

/// Create a copy of VideoFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? channelId = freezed,Object? ids = null,Object? includes = null,Object? languages = null,Object? limit = null,Object? maxUpcomingHours = freezed,Object? mentionedChannelId = freezed,Object? offset = null,Object? order = null,Object? organization = freezed,Object? paginated = null,Object? sort = null,Object? status = null,Object? topic = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
channelId: freezed == channelId ? _self.channelId : channelId // ignore: cast_nullable_to_non_nullable
as String?,ids: null == ids ? _self.ids : ids // ignore: cast_nullable_to_non_nullable
as List<String>,includes: null == includes ? _self.includes : includes // ignore: cast_nullable_to_non_nullable
as List<Includes>,languages: null == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<Language>,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,maxUpcomingHours: freezed == maxUpcomingHours ? _self.maxUpcomingHours : maxUpcomingHours // ignore: cast_nullable_to_non_nullable
as int?,mentionedChannelId: freezed == mentionedChannelId ? _self.mentionedChannelId : mentionedChannelId // ignore: cast_nullable_to_non_nullable
as String?,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Order,organization: freezed == organization ? _self.organization : organization // ignore: cast_nullable_to_non_nullable
as Organization?,paginated: null == paginated ? _self.paginated : paginated // ignore: cast_nullable_to_non_nullable
as bool,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as List<VideoSort>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as List<VideoStatus>,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as VideoType?,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoFilter].
extension VideoFilterPatterns on VideoFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoFilter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoFilter value)  $default,){
final _that = this;
switch (_that) {
case _VideoFilter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoFilter value)?  $default,){
final _that = this;
switch (_that) {
case _VideoFilter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'channel_id', includeIfNull: false)  String? channelId, @JsonKey(name: 'id', toJson: nullStringListIfEmpty, includeIfNull: false)  List<String> ids, @JsonKey(toJson: concatIncludesList, name: 'include', includeIfNull: false)  List<Includes> includes, @JsonKey(toJson: concatLanguageListWithDefault, name: 'lang')  List<Language> languages, @JsonKey(toJson: intToString)  int limit, @JsonKey(name: 'max_upcoming_hours', toJson: intToStringNullable, includeIfNull: false)  int? maxUpcomingHours, @JsonKey(name: 'mentioned_channel_id', includeIfNull: false)  String? mentionedChannelId, @JsonKey(toJson: intToString)  int offset, @JsonKey(toJson: orderToString)  Order order, @JsonKey(name: 'org', toJson: organizationToString, includeIfNull: false)  Organization? organization, @JsonKey(toJson: paginatedToString)  bool paginated, @JsonKey(toJson: concatVideoSortList, includeIfNull: false)  List<VideoSort> sort, @JsonKey(toJson: concatVideoStatusList, includeIfNull: false)  List<VideoStatus> status, @JsonKey(includeIfNull: false)  String? topic, @JsonKey(toJson: videoTypeToString, includeIfNull: false)  VideoType? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoFilter() when $default != null:
return $default(_that.channelId,_that.ids,_that.includes,_that.languages,_that.limit,_that.maxUpcomingHours,_that.mentionedChannelId,_that.offset,_that.order,_that.organization,_that.paginated,_that.sort,_that.status,_that.topic,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'channel_id', includeIfNull: false)  String? channelId, @JsonKey(name: 'id', toJson: nullStringListIfEmpty, includeIfNull: false)  List<String> ids, @JsonKey(toJson: concatIncludesList, name: 'include', includeIfNull: false)  List<Includes> includes, @JsonKey(toJson: concatLanguageListWithDefault, name: 'lang')  List<Language> languages, @JsonKey(toJson: intToString)  int limit, @JsonKey(name: 'max_upcoming_hours', toJson: intToStringNullable, includeIfNull: false)  int? maxUpcomingHours, @JsonKey(name: 'mentioned_channel_id', includeIfNull: false)  String? mentionedChannelId, @JsonKey(toJson: intToString)  int offset, @JsonKey(toJson: orderToString)  Order order, @JsonKey(name: 'org', toJson: organizationToString, includeIfNull: false)  Organization? organization, @JsonKey(toJson: paginatedToString)  bool paginated, @JsonKey(toJson: concatVideoSortList, includeIfNull: false)  List<VideoSort> sort, @JsonKey(toJson: concatVideoStatusList, includeIfNull: false)  List<VideoStatus> status, @JsonKey(includeIfNull: false)  String? topic, @JsonKey(toJson: videoTypeToString, includeIfNull: false)  VideoType? type)  $default,) {final _that = this;
switch (_that) {
case _VideoFilter():
return $default(_that.channelId,_that.ids,_that.includes,_that.languages,_that.limit,_that.maxUpcomingHours,_that.mentionedChannelId,_that.offset,_that.order,_that.organization,_that.paginated,_that.sort,_that.status,_that.topic,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'channel_id', includeIfNull: false)  String? channelId, @JsonKey(name: 'id', toJson: nullStringListIfEmpty, includeIfNull: false)  List<String> ids, @JsonKey(toJson: concatIncludesList, name: 'include', includeIfNull: false)  List<Includes> includes, @JsonKey(toJson: concatLanguageListWithDefault, name: 'lang')  List<Language> languages, @JsonKey(toJson: intToString)  int limit, @JsonKey(name: 'max_upcoming_hours', toJson: intToStringNullable, includeIfNull: false)  int? maxUpcomingHours, @JsonKey(name: 'mentioned_channel_id', includeIfNull: false)  String? mentionedChannelId, @JsonKey(toJson: intToString)  int offset, @JsonKey(toJson: orderToString)  Order order, @JsonKey(name: 'org', toJson: organizationToString, includeIfNull: false)  Organization? organization, @JsonKey(toJson: paginatedToString)  bool paginated, @JsonKey(toJson: concatVideoSortList, includeIfNull: false)  List<VideoSort> sort, @JsonKey(toJson: concatVideoStatusList, includeIfNull: false)  List<VideoStatus> status, @JsonKey(includeIfNull: false)  String? topic, @JsonKey(toJson: videoTypeToString, includeIfNull: false)  VideoType? type)?  $default,) {final _that = this;
switch (_that) {
case _VideoFilter() when $default != null:
return $default(_that.channelId,_that.ids,_that.includes,_that.languages,_that.limit,_that.maxUpcomingHours,_that.mentionedChannelId,_that.offset,_that.order,_that.organization,_that.paginated,_that.sort,_that.status,_that.topic,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class _VideoFilter extends VideoFilter {
  const _VideoFilter({@JsonKey(name: 'channel_id', includeIfNull: false) this.channelId, @JsonKey(name: 'id', toJson: nullStringListIfEmpty, includeIfNull: false) final  List<String> ids = const [], @JsonKey(toJson: concatIncludesList, name: 'include', includeIfNull: false) final  List<Includes> includes = const [], @JsonKey(toJson: concatLanguageListWithDefault, name: 'lang') final  List<Language> languages = const [], @JsonKey(toJson: intToString) this.limit = 25, @JsonKey(name: 'max_upcoming_hours', toJson: intToStringNullable, includeIfNull: false) this.maxUpcomingHours, @JsonKey(name: 'mentioned_channel_id', includeIfNull: false) this.mentionedChannelId, @JsonKey(toJson: intToString) this.offset = 0, @JsonKey(toJson: orderToString) this.order = Order.descending, @JsonKey(name: 'org', toJson: organizationToString, includeIfNull: false) this.organization, @JsonKey(toJson: paginatedToString) this.paginated = false, @JsonKey(toJson: concatVideoSortList, includeIfNull: false) final  List<VideoSort> sort = const [VideoSort.availableAt], @JsonKey(toJson: concatVideoStatusList, includeIfNull: false) final  List<VideoStatus> status = const [], @JsonKey(includeIfNull: false) this.topic, @JsonKey(toJson: videoTypeToString, includeIfNull: false) this.type}): assert(limit <= 50, 'Limit cannot be greater than 50'),_ids = ids,_includes = includes,_languages = languages,_sort = sort,_status = status,super._();
  

/// Filter by video uploader channel ID
@override@JsonKey(name: 'channel_id', includeIfNull: false) final  String? channelId;
/// Youtube Video IDs. If Specified, only this video can be returned (may be filtered out by other conditions though)
 final  List<String> _ids;
/// Youtube Video IDs. If Specified, only this video can be returned (may be filtered out by other conditions though)
@override@JsonKey(name: 'id', toJson: nullStringListIfEmpty, includeIfNull: false) List<String> get ids {
  if (_ids is EqualUnmodifiableListView) return _ids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ids);
}

/// Request extra data be included in the results. They are not guarenteed to be returned.
 final  List<Includes> _includes;
/// Request extra data be included in the results. They are not guarenteed to be returned.
@override@JsonKey(toJson: concatIncludesList, name: 'include', includeIfNull: false) List<Includes> get includes {
  if (_includes is EqualUnmodifiableListView) return _includes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_includes);
}

/// Filter by the `Language`
 final  List<Language> _languages;
/// Filter by the `Language`
@override@JsonKey(toJson: concatLanguageListWithDefault, name: 'lang') List<Language> get languages {
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_languages);
}

/// Limit the number of results returned. Maximum value of 50
@override@JsonKey(toJson: intToString) final  int limit;
/// Number of maximum hours upcoming to get upcoming videos by (for rejecting waiting rooms that are two years out)
@override@JsonKey(name: 'max_upcoming_hours', toJson: intToStringNullable, includeIfNull: false) final  int? maxUpcomingHours;
/// Filter by mentioned channel id, excludes itself. Generally used to find collabs/clips that include the requested channel
@override@JsonKey(name: 'mentioned_channel_id', includeIfNull: false) final  String? mentionedChannelId;
/// Receive results starting at this number in the array from the Holodex API
@override@JsonKey(toJson: intToString) final  int offset;
/// Order results by ascending or descending
@override@JsonKey(toJson: orderToString) final  Order order;
/// Filter by clips that feature the org's talent or videos posted by the org's talent.
@override@JsonKey(name: 'org', toJson: organizationToString, includeIfNull: false) final  Organization? organization;
/// If paginated is set to true, returns [PaginatedVideos] with total, otherwise returns [PaginatedVideos] without the total.
@override@JsonKey(toJson: paginatedToString) final  bool paginated;
/// Sort the returned data by this field
 final  List<VideoSort> _sort;
/// Sort the returned data by this field
@override@JsonKey(toJson: concatVideoSortList, includeIfNull: false) List<VideoSort> get sort {
  if (_sort is EqualUnmodifiableListView) return _sort;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sort);
}

/// Filter by the video status
 final  List<VideoStatus> _status;
/// Filter by the video status
@override@JsonKey(toJson: concatVideoStatusList, includeIfNull: false) List<VideoStatus> get status {
  if (_status is EqualUnmodifiableListView) return _status;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_status);
}

/// Filter by video topic ID
@override@JsonKey(includeIfNull: false) final  String? topic;
/// Filter by type of video, either clips or streams
@override@JsonKey(toJson: videoTypeToString, includeIfNull: false) final  VideoType? type;

/// Create a copy of VideoFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoFilterCopyWith<_VideoFilter> get copyWith => __$VideoFilterCopyWithImpl<_VideoFilter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoFilterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoFilter&&(identical(other.channelId, channelId) || other.channelId == channelId)&&const DeepCollectionEquality().equals(other._ids, _ids)&&const DeepCollectionEquality().equals(other._includes, _includes)&&const DeepCollectionEquality().equals(other._languages, _languages)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.maxUpcomingHours, maxUpcomingHours) || other.maxUpcomingHours == maxUpcomingHours)&&(identical(other.mentionedChannelId, mentionedChannelId) || other.mentionedChannelId == mentionedChannelId)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.order, order) || other.order == order)&&(identical(other.organization, organization) || other.organization == organization)&&(identical(other.paginated, paginated) || other.paginated == paginated)&&const DeepCollectionEquality().equals(other._sort, _sort)&&const DeepCollectionEquality().equals(other._status, _status)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,channelId,const DeepCollectionEquality().hash(_ids),const DeepCollectionEquality().hash(_includes),const DeepCollectionEquality().hash(_languages),limit,maxUpcomingHours,mentionedChannelId,offset,order,organization,paginated,const DeepCollectionEquality().hash(_sort),const DeepCollectionEquality().hash(_status),topic,type);

@override
String toString() {
  return 'VideoFilter(channelId: $channelId, ids: $ids, includes: $includes, languages: $languages, limit: $limit, maxUpcomingHours: $maxUpcomingHours, mentionedChannelId: $mentionedChannelId, offset: $offset, order: $order, organization: $organization, paginated: $paginated, sort: $sort, status: $status, topic: $topic, type: $type)';
}


}

/// @nodoc
abstract mixin class _$VideoFilterCopyWith<$Res> implements $VideoFilterCopyWith<$Res> {
  factory _$VideoFilterCopyWith(_VideoFilter value, $Res Function(_VideoFilter) _then) = __$VideoFilterCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'channel_id', includeIfNull: false) String? channelId,@JsonKey(name: 'id', toJson: nullStringListIfEmpty, includeIfNull: false) List<String> ids,@JsonKey(toJson: concatIncludesList, name: 'include', includeIfNull: false) List<Includes> includes,@JsonKey(toJson: concatLanguageListWithDefault, name: 'lang') List<Language> languages,@JsonKey(toJson: intToString) int limit,@JsonKey(name: 'max_upcoming_hours', toJson: intToStringNullable, includeIfNull: false) int? maxUpcomingHours,@JsonKey(name: 'mentioned_channel_id', includeIfNull: false) String? mentionedChannelId,@JsonKey(toJson: intToString) int offset,@JsonKey(toJson: orderToString) Order order,@JsonKey(name: 'org', toJson: organizationToString, includeIfNull: false) Organization? organization,@JsonKey(toJson: paginatedToString) bool paginated,@JsonKey(toJson: concatVideoSortList, includeIfNull: false) List<VideoSort> sort,@JsonKey(toJson: concatVideoStatusList, includeIfNull: false) List<VideoStatus> status,@JsonKey(includeIfNull: false) String? topic,@JsonKey(toJson: videoTypeToString, includeIfNull: false) VideoType? type
});




}
/// @nodoc
class __$VideoFilterCopyWithImpl<$Res>
    implements _$VideoFilterCopyWith<$Res> {
  __$VideoFilterCopyWithImpl(this._self, this._then);

  final _VideoFilter _self;
  final $Res Function(_VideoFilter) _then;

/// Create a copy of VideoFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? channelId = freezed,Object? ids = null,Object? includes = null,Object? languages = null,Object? limit = null,Object? maxUpcomingHours = freezed,Object? mentionedChannelId = freezed,Object? offset = null,Object? order = null,Object? organization = freezed,Object? paginated = null,Object? sort = null,Object? status = null,Object? topic = freezed,Object? type = freezed,}) {
  return _then(_VideoFilter(
channelId: freezed == channelId ? _self.channelId : channelId // ignore: cast_nullable_to_non_nullable
as String?,ids: null == ids ? _self._ids : ids // ignore: cast_nullable_to_non_nullable
as List<String>,includes: null == includes ? _self._includes : includes // ignore: cast_nullable_to_non_nullable
as List<Includes>,languages: null == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<Language>,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,maxUpcomingHours: freezed == maxUpcomingHours ? _self.maxUpcomingHours : maxUpcomingHours // ignore: cast_nullable_to_non_nullable
as int?,mentionedChannelId: freezed == mentionedChannelId ? _self.mentionedChannelId : mentionedChannelId // ignore: cast_nullable_to_non_nullable
as String?,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Order,organization: freezed == organization ? _self.organization : organization // ignore: cast_nullable_to_non_nullable
as Organization?,paginated: null == paginated ? _self.paginated : paginated // ignore: cast_nullable_to_non_nullable
as bool,sort: null == sort ? _self._sort : sort // ignore: cast_nullable_to_non_nullable
as List<VideoSort>,status: null == status ? _self._status : status // ignore: cast_nullable_to_non_nullable
as List<VideoStatus>,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as VideoType?,
  ));
}


}

// dart format on
