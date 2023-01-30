// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchFilter {
  /// Sort by newest or oldest
  @JsonKey(name: 'search_sort')
  SearchSort get sort => throw _privateConstructorUsedError;

  /// If set, will filter clips to only show clips with these languages + all vtuber streams
  /// (provided searchTargets is not set to filter out streams)
  @JsonKey(toJson: concatLanguageList, name: 'lang')
  List<Language> get languages => throw _privateConstructorUsedError;

  /// Target types of videos
  @JsonKey(name: 'search_targets')
  List<SearchTarget> get searchTargets => throw _privateConstructorUsedError;

  /// Return videos that match one of the provided topics
  List<String> get topics => throw _privateConstructorUsedError;

  /// Videos with all of the specified channel ids. If two or more channel IDs are specified,
  /// will only return their collabs, or if one channel is a clipper, it will only show clips
  /// of the other vtubers made by this clipper.
  @JsonKey(name: 'video_channels')
  List<String> get videoChannels => throw _privateConstructorUsedError;

  /// Videos of channels in any of the specified organizations, or clips that involve a channel
  /// in the specified organization.
  List<Organization> get organizations => throw _privateConstructorUsedError;

  /// If paginated is set to true, returns [List]<[VideoFull]> with total, otherwise returns [List]<[VideoFull]> without the total.
  @JsonKey(toJson: paginatedToString)
  bool get paginated => throw _privateConstructorUsedError;

  /// Offset results
  int get offset => throw _privateConstructorUsedError;

  /// Result limit
  int get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchFilterCopyWith<SearchFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFilterCopyWith<$Res> {
  factory $SearchFilterCopyWith(
          SearchFilter value, $Res Function(SearchFilter) then) =
      _$SearchFilterCopyWithImpl<$Res, SearchFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'search_sort')
          SearchSort sort,
      @JsonKey(toJson: concatLanguageList, name: 'lang')
          List<Language> languages,
      @JsonKey(name: 'search_targets')
          List<SearchTarget> searchTargets,
      List<String> topics,
      @JsonKey(name: 'video_channels')
          List<String> videoChannels,
      List<Organization> organizations,
      @JsonKey(toJson: paginatedToString)
          bool paginated,
      int offset,
      int limit});
}

/// @nodoc
class _$SearchFilterCopyWithImpl<$Res, $Val extends SearchFilter>
    implements $SearchFilterCopyWith<$Res> {
  _$SearchFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sort = null,
    Object? languages = null,
    Object? searchTargets = null,
    Object? topics = null,
    Object? videoChannels = null,
    Object? organizations = null,
    Object? paginated = null,
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SearchSort,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      searchTargets: null == searchTargets
          ? _value.searchTargets
          : searchTargets // ignore: cast_nullable_to_non_nullable
              as List<SearchTarget>,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videoChannels: null == videoChannels
          ? _value.videoChannels
          : videoChannels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      organizations: null == organizations
          ? _value.organizations
          : organizations // ignore: cast_nullable_to_non_nullable
              as List<Organization>,
      paginated: null == paginated
          ? _value.paginated
          : paginated // ignore: cast_nullable_to_non_nullable
              as bool,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchFilterCopyWith<$Res>
    implements $SearchFilterCopyWith<$Res> {
  factory _$$_SearchFilterCopyWith(
          _$_SearchFilter value, $Res Function(_$_SearchFilter) then) =
      __$$_SearchFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'search_sort')
          SearchSort sort,
      @JsonKey(toJson: concatLanguageList, name: 'lang')
          List<Language> languages,
      @JsonKey(name: 'search_targets')
          List<SearchTarget> searchTargets,
      List<String> topics,
      @JsonKey(name: 'video_channels')
          List<String> videoChannels,
      List<Organization> organizations,
      @JsonKey(toJson: paginatedToString)
          bool paginated,
      int offset,
      int limit});
}

/// @nodoc
class __$$_SearchFilterCopyWithImpl<$Res>
    extends _$SearchFilterCopyWithImpl<$Res, _$_SearchFilter>
    implements _$$_SearchFilterCopyWith<$Res> {
  __$$_SearchFilterCopyWithImpl(
      _$_SearchFilter _value, $Res Function(_$_SearchFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sort = null,
    Object? languages = null,
    Object? searchTargets = null,
    Object? topics = null,
    Object? videoChannels = null,
    Object? organizations = null,
    Object? paginated = null,
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_$_SearchFilter(
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SearchSort,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      searchTargets: null == searchTargets
          ? _value._searchTargets
          : searchTargets // ignore: cast_nullable_to_non_nullable
              as List<SearchTarget>,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videoChannels: null == videoChannels
          ? _value._videoChannels
          : videoChannels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      organizations: null == organizations
          ? _value._organizations
          : organizations // ignore: cast_nullable_to_non_nullable
              as List<Organization>,
      paginated: null == paginated
          ? _value.paginated
          : paginated // ignore: cast_nullable_to_non_nullable
              as bool,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_SearchFilter extends _SearchFilter {
  const _$_SearchFilter(
      {@JsonKey(name: 'search_sort')
          this.sort = SearchSort.newest,
      @JsonKey(toJson: concatLanguageList, name: 'lang')
          final List<Language> languages = const [],
      @JsonKey(name: 'search_targets')
          final List<SearchTarget> searchTargets = const [
        SearchTarget.clip,
        SearchTarget.stream
      ],
      final List<String> topics = const [],
      @JsonKey(name: 'video_channels')
          final List<String> videoChannels = const [],
      final List<Organization> organizations = const [],
      @JsonKey(toJson: paginatedToString)
          this.paginated = true,
      this.offset = 0,
      this.limit = 25})
      : assert(limit <= 50, 'The limit cannot be greater than 50'),
        _languages = languages,
        _searchTargets = searchTargets,
        _topics = topics,
        _videoChannels = videoChannels,
        _organizations = organizations,
        super._();

  /// Sort by newest or oldest
  @override
  @JsonKey(name: 'search_sort')
  final SearchSort sort;

  /// If set, will filter clips to only show clips with these languages + all vtuber streams
  /// (provided searchTargets is not set to filter out streams)
  final List<Language> _languages;

  /// If set, will filter clips to only show clips with these languages + all vtuber streams
  /// (provided searchTargets is not set to filter out streams)
  @override
  @JsonKey(toJson: concatLanguageList, name: 'lang')
  List<Language> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  /// Target types of videos
  final List<SearchTarget> _searchTargets;

  /// Target types of videos
  @override
  @JsonKey(name: 'search_targets')
  List<SearchTarget> get searchTargets {
    if (_searchTargets is EqualUnmodifiableListView) return _searchTargets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchTargets);
  }

  /// Return videos that match one of the provided topics
  final List<String> _topics;

  /// Return videos that match one of the provided topics
  @override
  @JsonKey()
  List<String> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  /// Videos with all of the specified channel ids. If two or more channel IDs are specified,
  /// will only return their collabs, or if one channel is a clipper, it will only show clips
  /// of the other vtubers made by this clipper.
  final List<String> _videoChannels;

  /// Videos with all of the specified channel ids. If two or more channel IDs are specified,
  /// will only return their collabs, or if one channel is a clipper, it will only show clips
  /// of the other vtubers made by this clipper.
  @override
  @JsonKey(name: 'video_channels')
  List<String> get videoChannels {
    if (_videoChannels is EqualUnmodifiableListView) return _videoChannels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoChannels);
  }

  /// Videos of channels in any of the specified organizations, or clips that involve a channel
  /// in the specified organization.
  final List<Organization> _organizations;

  /// Videos of channels in any of the specified organizations, or clips that involve a channel
  /// in the specified organization.
  @override
  @JsonKey()
  List<Organization> get organizations {
    if (_organizations is EqualUnmodifiableListView) return _organizations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_organizations);
  }

  /// If paginated is set to true, returns [List]<[VideoFull]> with total, otherwise returns [List]<[VideoFull]> without the total.
  @override
  @JsonKey(toJson: paginatedToString)
  final bool paginated;

  /// Offset results
  @override
  @JsonKey()
  final int offset;

  /// Result limit
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'SearchFilter(sort: $sort, languages: $languages, searchTargets: $searchTargets, topics: $topics, videoChannels: $videoChannels, organizations: $organizations, paginated: $paginated, offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchFilter &&
            (identical(other.sort, sort) || other.sort == sort) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality()
                .equals(other._searchTargets, _searchTargets) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            const DeepCollectionEquality()
                .equals(other._videoChannels, _videoChannels) &&
            const DeepCollectionEquality()
                .equals(other._organizations, _organizations) &&
            (identical(other.paginated, paginated) ||
                other.paginated == paginated) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sort,
      const DeepCollectionEquality().hash(_languages),
      const DeepCollectionEquality().hash(_searchTargets),
      const DeepCollectionEquality().hash(_topics),
      const DeepCollectionEquality().hash(_videoChannels),
      const DeepCollectionEquality().hash(_organizations),
      paginated,
      offset,
      limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchFilterCopyWith<_$_SearchFilter> get copyWith =>
      __$$_SearchFilterCopyWithImpl<_$_SearchFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchFilterToJson(
      this,
    );
  }
}

abstract class _SearchFilter extends SearchFilter {
  const factory _SearchFilter(
      {@JsonKey(name: 'search_sort')
          final SearchSort sort,
      @JsonKey(toJson: concatLanguageList, name: 'lang')
          final List<Language> languages,
      @JsonKey(name: 'search_targets')
          final List<SearchTarget> searchTargets,
      final List<String> topics,
      @JsonKey(name: 'video_channels')
          final List<String> videoChannels,
      final List<Organization> organizations,
      @JsonKey(toJson: paginatedToString)
          final bool paginated,
      final int offset,
      final int limit}) = _$_SearchFilter;
  const _SearchFilter._() : super._();

  @override

  /// Sort by newest or oldest
  @JsonKey(name: 'search_sort')
  SearchSort get sort;
  @override

  /// If set, will filter clips to only show clips with these languages + all vtuber streams
  /// (provided searchTargets is not set to filter out streams)
  @JsonKey(toJson: concatLanguageList, name: 'lang')
  List<Language> get languages;
  @override

  /// Target types of videos
  @JsonKey(name: 'search_targets')
  List<SearchTarget> get searchTargets;
  @override

  /// Return videos that match one of the provided topics
  List<String> get topics;
  @override

  /// Videos with all of the specified channel ids. If two or more channel IDs are specified,
  /// will only return their collabs, or if one channel is a clipper, it will only show clips
  /// of the other vtubers made by this clipper.
  @JsonKey(name: 'video_channels')
  List<String> get videoChannels;
  @override

  /// Videos of channels in any of the specified organizations, or clips that involve a channel
  /// in the specified organization.
  List<Organization> get organizations;
  @override

  /// If paginated is set to true, returns [List]<[VideoFull]> with total, otherwise returns [List]<[VideoFull]> without the total.
  @JsonKey(toJson: paginatedToString)
  bool get paginated;
  @override

  /// Offset results
  int get offset;
  @override

  /// Result limit
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$_SearchFilterCopyWith<_$_SearchFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
