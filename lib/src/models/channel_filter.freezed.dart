// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChannelFilter {
  /// List of Language enum to filter channels/clips. Official streams do not follow this parameter
  @JsonKey(toJson: concatLanguageListWithDefault, name: 'lang')
  List<Language> get languages => throw _privateConstructorUsedError;

  /// Result limit. Max of 50.
  @JsonKey(toJson: intToString)
  int get limit => throw _privateConstructorUsedError;

  /// Offset results
  @JsonKey(toJson: intToString)
  int get offset => throw _privateConstructorUsedError;

  /// Type of Channel, whether it's a vtuber or a subber. Leave unset to query all.
  ChannelType? get type => throw _privateConstructorUsedError;

  /// Column to sort on
  List<ChannelSort> get sort => throw _privateConstructorUsedError;

  /// ASC or DESC order, default asc.
  Order get order => throw _privateConstructorUsedError;

  /// If set, filter for Vtuber belonging to a specific org
  @JsonKey(name: 'org')
  Organization? get organization => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelFilterCopyWith<ChannelFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelFilterCopyWith<$Res> {
  factory $ChannelFilterCopyWith(
          ChannelFilter value, $Res Function(ChannelFilter) then) =
      _$ChannelFilterCopyWithImpl<$Res, ChannelFilter>;
  @useResult
  $Res call(
      {@JsonKey(toJson: concatLanguageListWithDefault, name: 'lang')
          List<Language> languages,
      @JsonKey(toJson: intToString)
          int limit,
      @JsonKey(toJson: intToString)
          int offset,
      ChannelType? type,
      List<ChannelSort> sort,
      Order order,
      @JsonKey(name: 'org')
          Organization? organization});
}

/// @nodoc
class _$ChannelFilterCopyWithImpl<$Res, $Val extends ChannelFilter>
    implements $ChannelFilterCopyWith<$Res> {
  _$ChannelFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languages = null,
    Object? limit = null,
    Object? offset = null,
    Object? type = freezed,
    Object? sort = null,
    Object? order = null,
    Object? organization = freezed,
  }) {
    return _then(_value.copyWith(
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChannelType?,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as List<ChannelSort>,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelFilterCopyWith<$Res>
    implements $ChannelFilterCopyWith<$Res> {
  factory _$$_ChannelFilterCopyWith(
          _$_ChannelFilter value, $Res Function(_$_ChannelFilter) then) =
      __$$_ChannelFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(toJson: concatLanguageListWithDefault, name: 'lang')
          List<Language> languages,
      @JsonKey(toJson: intToString)
          int limit,
      @JsonKey(toJson: intToString)
          int offset,
      ChannelType? type,
      List<ChannelSort> sort,
      Order order,
      @JsonKey(name: 'org')
          Organization? organization});
}

/// @nodoc
class __$$_ChannelFilterCopyWithImpl<$Res>
    extends _$ChannelFilterCopyWithImpl<$Res, _$_ChannelFilter>
    implements _$$_ChannelFilterCopyWith<$Res> {
  __$$_ChannelFilterCopyWithImpl(
      _$_ChannelFilter _value, $Res Function(_$_ChannelFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languages = null,
    Object? limit = null,
    Object? offset = null,
    Object? type = freezed,
    Object? sort = null,
    Object? order = null,
    Object? organization = freezed,
  }) {
    return _then(_$_ChannelFilter(
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChannelType?,
      sort: null == sort
          ? _value._sort
          : sort // ignore: cast_nullable_to_non_nullable
              as List<ChannelSort>,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_ChannelFilter extends _ChannelFilter {
  const _$_ChannelFilter(
      {@JsonKey(toJson: concatLanguageListWithDefault, name: 'lang')
          final List<Language> languages = const [],
      @JsonKey(toJson: intToString)
          this.limit = 25,
      @JsonKey(toJson: intToString)
          this.offset = 0,
      this.type,
      final List<ChannelSort> sort = const [ChannelSort.organization],
      this.order = Order.ascending,
      @JsonKey(name: 'org')
          this.organization})
      : assert(limit <= 50, 'The limit cannot be greater than 50'),
        _languages = languages,
        _sort = sort,
        super._();

  /// List of Language enum to filter channels/clips. Official streams do not follow this parameter
  final List<Language> _languages;

  /// List of Language enum to filter channels/clips. Official streams do not follow this parameter
  @override
  @JsonKey(toJson: concatLanguageListWithDefault, name: 'lang')
  List<Language> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  /// Result limit. Max of 50.
  @override
  @JsonKey(toJson: intToString)
  final int limit;

  /// Offset results
  @override
  @JsonKey(toJson: intToString)
  final int offset;

  /// Type of Channel, whether it's a vtuber or a subber. Leave unset to query all.
  @override
  final ChannelType? type;

  /// Column to sort on
  final List<ChannelSort> _sort;

  /// Column to sort on
  @override
  @JsonKey()
  List<ChannelSort> get sort {
    if (_sort is EqualUnmodifiableListView) return _sort;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sort);
  }

  /// ASC or DESC order, default asc.
  @override
  @JsonKey()
  final Order order;

  /// If set, filter for Vtuber belonging to a specific org
  @override
  @JsonKey(name: 'org')
  final Organization? organization;

  @override
  String toString() {
    return 'ChannelFilter(languages: $languages, limit: $limit, offset: $offset, type: $type, sort: $sort, order: $order, organization: $organization)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelFilter &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._sort, _sort) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.organization, organization) ||
                other.organization == organization));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_languages),
      limit,
      offset,
      type,
      const DeepCollectionEquality().hash(_sort),
      order,
      organization);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelFilterCopyWith<_$_ChannelFilter> get copyWith =>
      __$$_ChannelFilterCopyWithImpl<_$_ChannelFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelFilterToJson(
      this,
    );
  }
}

abstract class _ChannelFilter extends ChannelFilter {
  const factory _ChannelFilter(
      {@JsonKey(toJson: concatLanguageListWithDefault, name: 'lang')
          final List<Language> languages,
      @JsonKey(toJson: intToString)
          final int limit,
      @JsonKey(toJson: intToString)
          final int offset,
      final ChannelType? type,
      final List<ChannelSort> sort,
      final Order order,
      @JsonKey(name: 'org')
          final Organization? organization}) = _$_ChannelFilter;
  const _ChannelFilter._() : super._();

  @override

  /// List of Language enum to filter channels/clips. Official streams do not follow this parameter
  @JsonKey(toJson: concatLanguageListWithDefault, name: 'lang')
  List<Language> get languages;
  @override

  /// Result limit. Max of 50.
  @JsonKey(toJson: intToString)
  int get limit;
  @override

  /// Offset results
  @JsonKey(toJson: intToString)
  int get offset;
  @override

  /// Type of Channel, whether it's a vtuber or a subber. Leave unset to query all.
  ChannelType? get type;
  @override

  /// Column to sort on
  List<ChannelSort> get sort;
  @override

  /// ASC or DESC order, default asc.
  Order get order;
  @override

  /// If set, filter for Vtuber belonging to a specific org
  @JsonKey(name: 'org')
  Organization? get organization;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelFilterCopyWith<_$_ChannelFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
