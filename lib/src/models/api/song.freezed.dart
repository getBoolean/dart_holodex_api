// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Song _$SongFromJson(Map<String, dynamic> json) {
  return _Song.fromJson(json);
}

/// @nodoc
mixin _$Song {
  String get name => throw _privateConstructorUsedError;
  String? get art => throw _privateConstructorUsedError;
  int? get end => throw _privateConstructorUsedError;
  int? get start => throw _privateConstructorUsedError;
  int? get itunesid => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_artist')
  String? get originalArtist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongCopyWith<Song> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongCopyWith<$Res> {
  factory $SongCopyWith(Song value, $Res Function(Song) then) =
      _$SongCopyWithImpl<$Res, Song>;
  @useResult
  $Res call(
      {String name,
      String? art,
      int? end,
      int? start,
      int? itunesid,
      @JsonKey(name: 'original_artist') String? originalArtist});
}

/// @nodoc
class _$SongCopyWithImpl<$Res, $Val extends Song>
    implements $SongCopyWith<$Res> {
  _$SongCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? art = freezed,
    Object? end = freezed,
    Object? start = freezed,
    Object? itunesid = freezed,
    Object? originalArtist = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      art: freezed == art
          ? _value.art
          : art // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
      itunesid: freezed == itunesid
          ? _value.itunesid
          : itunesid // ignore: cast_nullable_to_non_nullable
              as int?,
      originalArtist: freezed == originalArtist
          ? _value.originalArtist
          : originalArtist // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongImplCopyWith<$Res> implements $SongCopyWith<$Res> {
  factory _$$SongImplCopyWith(
          _$SongImpl value, $Res Function(_$SongImpl) then) =
      __$$SongImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? art,
      int? end,
      int? start,
      int? itunesid,
      @JsonKey(name: 'original_artist') String? originalArtist});
}

/// @nodoc
class __$$SongImplCopyWithImpl<$Res>
    extends _$SongCopyWithImpl<$Res, _$SongImpl>
    implements _$$SongImplCopyWith<$Res> {
  __$$SongImplCopyWithImpl(_$SongImpl _value, $Res Function(_$SongImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? art = freezed,
    Object? end = freezed,
    Object? start = freezed,
    Object? itunesid = freezed,
    Object? originalArtist = freezed,
  }) {
    return _then(_$SongImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      art: freezed == art
          ? _value.art
          : art // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
      itunesid: freezed == itunesid
          ? _value.itunesid
          : itunesid // ignore: cast_nullable_to_non_nullable
              as int?,
      originalArtist: freezed == originalArtist
          ? _value.originalArtist
          : originalArtist // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongImpl implements _Song {
  const _$SongImpl(
      {required this.name,
      this.art,
      this.end,
      this.start,
      this.itunesid,
      @JsonKey(name: 'original_artist') this.originalArtist});

  factory _$SongImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongImplFromJson(json);

  @override
  final String name;
  @override
  final String? art;
  @override
  final int? end;
  @override
  final int? start;
  @override
  final int? itunesid;
  @override
  @JsonKey(name: 'original_artist')
  final String? originalArtist;

  @override
  String toString() {
    return 'Song(name: $name, art: $art, end: $end, start: $start, itunesid: $itunesid, originalArtist: $originalArtist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.art, art) || other.art == art) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.itunesid, itunesid) ||
                other.itunesid == itunesid) &&
            (identical(other.originalArtist, originalArtist) ||
                other.originalArtist == originalArtist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, art, end, start, itunesid, originalArtist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongImplCopyWith<_$SongImpl> get copyWith =>
      __$$SongImplCopyWithImpl<_$SongImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongImplToJson(
      this,
    );
  }
}

abstract class _Song implements Song {
  const factory _Song(
          {required final String name,
          final String? art,
          final int? end,
          final int? start,
          final int? itunesid,
          @JsonKey(name: 'original_artist') final String? originalArtist}) =
      _$SongImpl;

  factory _Song.fromJson(Map<String, dynamic> json) = _$SongImpl.fromJson;

  @override
  String get name;
  @override
  String? get art;
  @override
  int? get end;
  @override
  int? get start;
  @override
  int? get itunesid;
  @override
  @JsonKey(name: 'original_artist')
  String? get originalArtist;
  @override
  @JsonKey(ignore: true)
  _$$SongImplCopyWith<_$SongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
