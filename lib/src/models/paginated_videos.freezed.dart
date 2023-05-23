// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_videos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedVideos _$PaginatedVideosFromJson(Map<String, dynamic> json) {
  return _PaginatedVideos.fromJson(json);
}

/// @nodoc
mixin _$PaginatedVideos {
  /// The total number of videos on the server.
  @JsonKey(fromJson: _parseTotal)
  int? get total => throw _privateConstructorUsedError;
  List<VideoFull> get items => throw _privateConstructorUsedError;
  bool get paginated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedVideosCopyWith<PaginatedVideos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedVideosCopyWith<$Res> {
  factory $PaginatedVideosCopyWith(
          PaginatedVideos value, $Res Function(PaginatedVideos) then) =
      _$PaginatedVideosCopyWithImpl<$Res, PaginatedVideos>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseTotal) int? total,
      List<VideoFull> items,
      bool paginated});
}

/// @nodoc
class _$PaginatedVideosCopyWithImpl<$Res, $Val extends PaginatedVideos>
    implements $PaginatedVideosCopyWith<$Res> {
  _$PaginatedVideosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? items = null,
    Object? paginated = null,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<VideoFull>,
      paginated: null == paginated
          ? _value.paginated
          : paginated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginatedVideosCopyWith<$Res>
    implements $PaginatedVideosCopyWith<$Res> {
  factory _$$_PaginatedVideosCopyWith(
          _$_PaginatedVideos value, $Res Function(_$_PaginatedVideos) then) =
      __$$_PaginatedVideosCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseTotal) int? total,
      List<VideoFull> items,
      bool paginated});
}

/// @nodoc
class __$$_PaginatedVideosCopyWithImpl<$Res>
    extends _$PaginatedVideosCopyWithImpl<$Res, _$_PaginatedVideos>
    implements _$$_PaginatedVideosCopyWith<$Res> {
  __$$_PaginatedVideosCopyWithImpl(
      _$_PaginatedVideos _value, $Res Function(_$_PaginatedVideos) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? items = null,
    Object? paginated = null,
  }) {
    return _then(_$_PaginatedVideos(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<VideoFull>,
      paginated: null == paginated
          ? _value.paginated
          : paginated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginatedVideos extends _PaginatedVideos {
  const _$_PaginatedVideos(
      {@JsonKey(fromJson: _parseTotal) this.total,
      final List<VideoFull> items = const [],
      this.paginated = false})
      : _items = items,
        super._();

  factory _$_PaginatedVideos.fromJson(Map<String, dynamic> json) =>
      _$$_PaginatedVideosFromJson(json);

  /// The total number of videos on the server.
  @override
  @JsonKey(fromJson: _parseTotal)
  final int? total;
  final List<VideoFull> _items;
  @override
  @JsonKey()
  List<VideoFull> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final bool paginated;

  @override
  String toString() {
    return 'PaginatedVideos(total: $total, items: $items, paginated: $paginated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedVideos &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.paginated, paginated) ||
                other.paginated == paginated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total,
      const DeepCollectionEquality().hash(_items), paginated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatedVideosCopyWith<_$_PaginatedVideos> get copyWith =>
      __$$_PaginatedVideosCopyWithImpl<_$_PaginatedVideos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginatedVideosToJson(
      this,
    );
  }
}

abstract class _PaginatedVideos extends PaginatedVideos {
  const factory _PaginatedVideos(
      {@JsonKey(fromJson: _parseTotal) final int? total,
      final List<VideoFull> items,
      final bool paginated}) = _$_PaginatedVideos;
  const _PaginatedVideos._() : super._();

  factory _PaginatedVideos.fromJson(Map<String, dynamic> json) =
      _$_PaginatedVideos.fromJson;

  @override

  /// The total number of videos on the server.
  @JsonKey(fromJson: _parseTotal)
  int? get total;
  @override
  List<VideoFull> get items;
  @override
  bool get paginated;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedVideosCopyWith<_$_PaginatedVideos> get copyWith =>
      throw _privateConstructorUsedError;
}
