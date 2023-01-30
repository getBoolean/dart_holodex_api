// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_video_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChannelVideoFilter {
  /// Request extra data be included in the results. They are not guarenteed to be returned.
  List<Includes> get includes => throw _privateConstructorUsedError;

  /// List of Language enum to filter channels/clips. Official streams do not follow this parameter
  @JsonKey(toJson: concatLanguageList)
  List<Language> get languages => throw _privateConstructorUsedError;

  /// Result limit. Max of 50.
  int get limit => throw _privateConstructorUsedError;

  /// Offset results
  int get offset => throw _privateConstructorUsedError;

  /// If paginated is set to true, returns [VideoFullList] with total, otherwise returns [VideoFullList] without the total.
  bool get paginated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelVideoFilterCopyWith<ChannelVideoFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelVideoFilterCopyWith<$Res> {
  factory $ChannelVideoFilterCopyWith(
          ChannelVideoFilter value, $Res Function(ChannelVideoFilter) then) =
      _$ChannelVideoFilterCopyWithImpl<$Res, ChannelVideoFilter>;
  @useResult
  $Res call(
      {List<Includes> includes,
      @JsonKey(toJson: concatLanguageList) List<Language> languages,
      int limit,
      int offset,
      bool paginated});
}

/// @nodoc
class _$ChannelVideoFilterCopyWithImpl<$Res, $Val extends ChannelVideoFilter>
    implements $ChannelVideoFilterCopyWith<$Res> {
  _$ChannelVideoFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? includes = null,
    Object? languages = null,
    Object? limit = null,
    Object? offset = null,
    Object? paginated = null,
  }) {
    return _then(_value.copyWith(
      includes: null == includes
          ? _value.includes
          : includes // ignore: cast_nullable_to_non_nullable
              as List<Includes>,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      paginated: null == paginated
          ? _value.paginated
          : paginated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelVideoFilterCopyWith<$Res>
    implements $ChannelVideoFilterCopyWith<$Res> {
  factory _$$_ChannelVideoFilterCopyWith(_$_ChannelVideoFilter value,
          $Res Function(_$_ChannelVideoFilter) then) =
      __$$_ChannelVideoFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Includes> includes,
      @JsonKey(toJson: concatLanguageList) List<Language> languages,
      int limit,
      int offset,
      bool paginated});
}

/// @nodoc
class __$$_ChannelVideoFilterCopyWithImpl<$Res>
    extends _$ChannelVideoFilterCopyWithImpl<$Res, _$_ChannelVideoFilter>
    implements _$$_ChannelVideoFilterCopyWith<$Res> {
  __$$_ChannelVideoFilterCopyWithImpl(
      _$_ChannelVideoFilter _value, $Res Function(_$_ChannelVideoFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? includes = null,
    Object? languages = null,
    Object? limit = null,
    Object? offset = null,
    Object? paginated = null,
  }) {
    return _then(_$_ChannelVideoFilter(
      includes: null == includes
          ? _value._includes
          : includes // ignore: cast_nullable_to_non_nullable
              as List<Includes>,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      paginated: null == paginated
          ? _value.paginated
          : paginated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_ChannelVideoFilter extends _ChannelVideoFilter {
  const _$_ChannelVideoFilter(
      {final List<Includes> includes = const [],
      @JsonKey(toJson: concatLanguageList)
          final List<Language> languages = const [],
      this.limit = 25,
      this.offset = 0,
      this.paginated = true})
      : assert(limit <= 50, 'The limit cannot be greater than 50'),
        _includes = includes,
        _languages = languages,
        super._();

  /// Request extra data be included in the results. They are not guarenteed to be returned.
  final List<Includes> _includes;

  /// Request extra data be included in the results. They are not guarenteed to be returned.
  @override
  @JsonKey()
  List<Includes> get includes {
    if (_includes is EqualUnmodifiableListView) return _includes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_includes);
  }

  /// List of Language enum to filter channels/clips. Official streams do not follow this parameter
  final List<Language> _languages;

  /// List of Language enum to filter channels/clips. Official streams do not follow this parameter
  @override
  @JsonKey(toJson: concatLanguageList)
  List<Language> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  /// Result limit. Max of 50.
  @override
  @JsonKey()
  final int limit;

  /// Offset results
  @override
  @JsonKey()
  final int offset;

  /// If paginated is set to true, returns [VideoFullList] with total, otherwise returns [VideoFullList] without the total.
  @override
  @JsonKey()
  final bool paginated;

  @override
  String toString() {
    return 'ChannelVideoFilter(includes: $includes, languages: $languages, limit: $limit, offset: $offset, paginated: $paginated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelVideoFilter &&
            const DeepCollectionEquality().equals(other._includes, _includes) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.paginated, paginated) ||
                other.paginated == paginated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_includes),
      const DeepCollectionEquality().hash(_languages),
      limit,
      offset,
      paginated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelVideoFilterCopyWith<_$_ChannelVideoFilter> get copyWith =>
      __$$_ChannelVideoFilterCopyWithImpl<_$_ChannelVideoFilter>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelVideoFilterToJson(
      this,
    );
  }
}

abstract class _ChannelVideoFilter extends ChannelVideoFilter {
  const factory _ChannelVideoFilter(
      {final List<Includes> includes,
      @JsonKey(toJson: concatLanguageList) final List<Language> languages,
      final int limit,
      final int offset,
      final bool paginated}) = _$_ChannelVideoFilter;
  const _ChannelVideoFilter._() : super._();

  @override

  /// Request extra data be included in the results. They are not guarenteed to be returned.
  List<Includes> get includes;
  @override

  /// List of Language enum to filter channels/clips. Official streams do not follow this parameter
  @JsonKey(toJson: concatLanguageList)
  List<Language> get languages;
  @override

  /// Result limit. Max of 50.
  int get limit;
  @override

  /// Offset results
  int get offset;
  @override

  /// If paginated is set to true, returns [VideoFullList] with total, otherwise returns [VideoFullList] without the total.
  bool get paginated;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelVideoFilterCopyWith<_$_ChannelVideoFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
