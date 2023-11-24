// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Channel _$ChannelFromJson(Map<String, dynamic> json) {
  return _Channel.fromJson(json);
}

/// @nodoc
mixin _$Channel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'english_name')
  String? get englishName => throw _privateConstructorUsedError;
  ChannelType? get type => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: 'org')
  String? get organization => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_count')
  int? get videoCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscriber_count')
  int? get subscriberCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'view_count')
  String? get viewCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'clip_count')
  int? get clipCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'suborg')
  String? get subOrganization => throw _privateConstructorUsedError;
  String? get banner => throw _privateConstructorUsedError;
  String? get twitter => throw _privateConstructorUsedError;
  @JsonKey(toJson: Language.toStringStatic, fromJson: Language.fromString)
  Language get lang => throw _privateConstructorUsedError;
  bool? get inactive => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_at')
  String? get publishedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'crawled_at')
  String? get crawledAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'comments_crawled_at')
  String? get commentsCrawledAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'yt_uploads_id')
  String? get ytUploadsId => throw _privateConstructorUsedError;
  @JsonKey(name: 'top_topics')
  List<String> get topTopics => throw _privateConstructorUsedError;
  @JsonKey(name: 'yt_handle')
  List<String> get ytHandle => throw _privateConstructorUsedError;
  String? get twitch => throw _privateConstructorUsedError;
  @JsonKey(name: 'yt_name_history')
  List<String> get ytNameHistory => throw _privateConstructorUsedError;
  String? get group => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelCopyWith<Channel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res, Channel>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'english_name') String? englishName,
      ChannelType? type,
      String? photo,
      @JsonKey(name: 'org') String? organization,
      @JsonKey(name: 'video_count') int? videoCount,
      @JsonKey(name: 'subscriber_count') int? subscriberCount,
      @JsonKey(name: 'view_count') String? viewCount,
      @JsonKey(name: 'clip_count') int? clipCount,
      @JsonKey(name: 'suborg') String? subOrganization,
      String? banner,
      String? twitter,
      @JsonKey(toJson: Language.toStringStatic, fromJson: Language.fromString)
      Language lang,
      bool? inactive,
      String? description,
      @JsonKey(name: 'published_at') String? publishedAt,
      @JsonKey(name: 'crawled_at') String? crawledAt,
      @JsonKey(name: 'comments_crawled_at') String? commentsCrawledAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'yt_uploads_id') String? ytUploadsId,
      @JsonKey(name: 'top_topics') List<String> topTopics,
      @JsonKey(name: 'yt_handle') List<String> ytHandle,
      String? twitch,
      @JsonKey(name: 'yt_name_history') List<String> ytNameHistory,
      String? group});
}

/// @nodoc
class _$ChannelCopyWithImpl<$Res, $Val extends Channel>
    implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? englishName = freezed,
    Object? type = freezed,
    Object? photo = freezed,
    Object? organization = freezed,
    Object? videoCount = freezed,
    Object? subscriberCount = freezed,
    Object? viewCount = freezed,
    Object? clipCount = freezed,
    Object? subOrganization = freezed,
    Object? banner = freezed,
    Object? twitter = freezed,
    Object? lang = null,
    Object? inactive = freezed,
    Object? description = freezed,
    Object? publishedAt = freezed,
    Object? crawledAt = freezed,
    Object? commentsCrawledAt = freezed,
    Object? updatedAt = freezed,
    Object? ytUploadsId = freezed,
    Object? topTopics = null,
    Object? ytHandle = null,
    Object? twitch = freezed,
    Object? ytNameHistory = null,
    Object? group = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: freezed == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChannelType?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      videoCount: freezed == videoCount
          ? _value.videoCount
          : videoCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subscriberCount: freezed == subscriberCount
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as String?,
      clipCount: freezed == clipCount
          ? _value.clipCount
          : clipCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subOrganization: freezed == subOrganization
          ? _value.subOrganization
          : subOrganization // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as Language,
      inactive: freezed == inactive
          ? _value.inactive
          : inactive // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      crawledAt: freezed == crawledAt
          ? _value.crawledAt
          : crawledAt // ignore: cast_nullable_to_non_nullable
              as String?,
      commentsCrawledAt: freezed == commentsCrawledAt
          ? _value.commentsCrawledAt
          : commentsCrawledAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      ytUploadsId: freezed == ytUploadsId
          ? _value.ytUploadsId
          : ytUploadsId // ignore: cast_nullable_to_non_nullable
              as String?,
      topTopics: null == topTopics
          ? _value.topTopics
          : topTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ytHandle: null == ytHandle
          ? _value.ytHandle
          : ytHandle // ignore: cast_nullable_to_non_nullable
              as List<String>,
      twitch: freezed == twitch
          ? _value.twitch
          : twitch // ignore: cast_nullable_to_non_nullable
              as String?,
      ytNameHistory: null == ytNameHistory
          ? _value.ytNameHistory
          : ytNameHistory // ignore: cast_nullable_to_non_nullable
              as List<String>,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$$_ChannelCopyWith(
          _$_Channel value, $Res Function(_$_Channel) then) =
      __$$_ChannelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'english_name') String? englishName,
      ChannelType? type,
      String? photo,
      @JsonKey(name: 'org') String? organization,
      @JsonKey(name: 'video_count') int? videoCount,
      @JsonKey(name: 'subscriber_count') int? subscriberCount,
      @JsonKey(name: 'view_count') String? viewCount,
      @JsonKey(name: 'clip_count') int? clipCount,
      @JsonKey(name: 'suborg') String? subOrganization,
      String? banner,
      String? twitter,
      @JsonKey(toJson: Language.toStringStatic, fromJson: Language.fromString)
      Language lang,
      bool? inactive,
      String? description,
      @JsonKey(name: 'published_at') String? publishedAt,
      @JsonKey(name: 'crawled_at') String? crawledAt,
      @JsonKey(name: 'comments_crawled_at') String? commentsCrawledAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'yt_uploads_id') String? ytUploadsId,
      @JsonKey(name: 'top_topics') List<String> topTopics,
      @JsonKey(name: 'yt_handle') List<String> ytHandle,
      String? twitch,
      @JsonKey(name: 'yt_name_history') List<String> ytNameHistory,
      String? group});
}

/// @nodoc
class __$$_ChannelCopyWithImpl<$Res>
    extends _$ChannelCopyWithImpl<$Res, _$_Channel>
    implements _$$_ChannelCopyWith<$Res> {
  __$$_ChannelCopyWithImpl(_$_Channel _value, $Res Function(_$_Channel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? englishName = freezed,
    Object? type = freezed,
    Object? photo = freezed,
    Object? organization = freezed,
    Object? videoCount = freezed,
    Object? subscriberCount = freezed,
    Object? viewCount = freezed,
    Object? clipCount = freezed,
    Object? subOrganization = freezed,
    Object? banner = freezed,
    Object? twitter = freezed,
    Object? lang = null,
    Object? inactive = freezed,
    Object? description = freezed,
    Object? publishedAt = freezed,
    Object? crawledAt = freezed,
    Object? commentsCrawledAt = freezed,
    Object? updatedAt = freezed,
    Object? ytUploadsId = freezed,
    Object? topTopics = null,
    Object? ytHandle = null,
    Object? twitch = freezed,
    Object? ytNameHistory = null,
    Object? group = freezed,
  }) {
    return _then(_$_Channel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: freezed == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChannelType?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      videoCount: freezed == videoCount
          ? _value.videoCount
          : videoCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subscriberCount: freezed == subscriberCount
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as String?,
      clipCount: freezed == clipCount
          ? _value.clipCount
          : clipCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subOrganization: freezed == subOrganization
          ? _value.subOrganization
          : subOrganization // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as Language,
      inactive: freezed == inactive
          ? _value.inactive
          : inactive // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      crawledAt: freezed == crawledAt
          ? _value.crawledAt
          : crawledAt // ignore: cast_nullable_to_non_nullable
              as String?,
      commentsCrawledAt: freezed == commentsCrawledAt
          ? _value.commentsCrawledAt
          : commentsCrawledAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      ytUploadsId: freezed == ytUploadsId
          ? _value.ytUploadsId
          : ytUploadsId // ignore: cast_nullable_to_non_nullable
              as String?,
      topTopics: null == topTopics
          ? _value._topTopics
          : topTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ytHandle: null == ytHandle
          ? _value._ytHandle
          : ytHandle // ignore: cast_nullable_to_non_nullable
              as List<String>,
      twitch: freezed == twitch
          ? _value.twitch
          : twitch // ignore: cast_nullable_to_non_nullable
              as String?,
      ytNameHistory: null == ytNameHistory
          ? _value._ytNameHistory
          : ytNameHistory // ignore: cast_nullable_to_non_nullable
              as List<String>,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Channel extends _Channel {
  const _$_Channel(
      {required this.id,
      required this.name,
      @JsonKey(name: 'english_name') this.englishName,
      this.type,
      this.photo,
      @JsonKey(name: 'org') this.organization,
      @JsonKey(name: 'video_count') this.videoCount,
      @JsonKey(name: 'subscriber_count') this.subscriberCount,
      @JsonKey(name: 'view_count') this.viewCount,
      @JsonKey(name: 'clip_count') this.clipCount,
      @JsonKey(name: 'suborg') this.subOrganization,
      this.banner,
      this.twitter,
      @JsonKey(toJson: Language.toStringStatic, fromJson: Language.fromString)
      required this.lang,
      this.inactive,
      this.description,
      @JsonKey(name: 'published_at') this.publishedAt,
      @JsonKey(name: 'crawled_at') this.crawledAt,
      @JsonKey(name: 'comments_crawled_at') this.commentsCrawledAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'yt_uploads_id') this.ytUploadsId,
      @JsonKey(name: 'top_topics') final List<String> topTopics = const [],
      @JsonKey(name: 'yt_handle') final List<String> ytHandle = const [],
      this.twitch,
      @JsonKey(name: 'yt_name_history')
      final List<String> ytNameHistory = const [],
      this.group})
      : _topTopics = topTopics,
        _ytHandle = ytHandle,
        _ytNameHistory = ytNameHistory,
        super._();

  factory _$_Channel.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'english_name')
  final String? englishName;
  @override
  final ChannelType? type;
  @override
  final String? photo;
  @override
  @JsonKey(name: 'org')
  final String? organization;
  @override
  @JsonKey(name: 'video_count')
  final int? videoCount;
  @override
  @JsonKey(name: 'subscriber_count')
  final int? subscriberCount;
  @override
  @JsonKey(name: 'view_count')
  final String? viewCount;
  @override
  @JsonKey(name: 'clip_count')
  final int? clipCount;
  @override
  @JsonKey(name: 'suborg')
  final String? subOrganization;
  @override
  final String? banner;
  @override
  final String? twitter;
  @override
  @JsonKey(toJson: Language.toStringStatic, fromJson: Language.fromString)
  final Language lang;
  @override
  final bool? inactive;
  @override
  final String? description;
  @override
  @JsonKey(name: 'published_at')
  final String? publishedAt;
  @override
  @JsonKey(name: 'crawled_at')
  final String? crawledAt;
  @override
  @JsonKey(name: 'comments_crawled_at')
  final String? commentsCrawledAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'yt_uploads_id')
  final String? ytUploadsId;
  final List<String> _topTopics;
  @override
  @JsonKey(name: 'top_topics')
  List<String> get topTopics {
    if (_topTopics is EqualUnmodifiableListView) return _topTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topTopics);
  }

  final List<String> _ytHandle;
  @override
  @JsonKey(name: 'yt_handle')
  List<String> get ytHandle {
    if (_ytHandle is EqualUnmodifiableListView) return _ytHandle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ytHandle);
  }

  @override
  final String? twitch;
  final List<String> _ytNameHistory;
  @override
  @JsonKey(name: 'yt_name_history')
  List<String> get ytNameHistory {
    if (_ytNameHistory is EqualUnmodifiableListView) return _ytNameHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ytNameHistory);
  }

  @override
  final String? group;

  @override
  String toString() {
    return 'Channel(id: $id, name: $name, englishName: $englishName, type: $type, photo: $photo, organization: $organization, videoCount: $videoCount, subscriberCount: $subscriberCount, viewCount: $viewCount, clipCount: $clipCount, subOrganization: $subOrganization, banner: $banner, twitter: $twitter, lang: $lang, inactive: $inactive, description: $description, publishedAt: $publishedAt, crawledAt: $crawledAt, commentsCrawledAt: $commentsCrawledAt, updatedAt: $updatedAt, ytUploadsId: $ytUploadsId, topTopics: $topTopics, ytHandle: $ytHandle, twitch: $twitch, ytNameHistory: $ytNameHistory, group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Channel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.videoCount, videoCount) ||
                other.videoCount == videoCount) &&
            (identical(other.subscriberCount, subscriberCount) ||
                other.subscriberCount == subscriberCount) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.clipCount, clipCount) ||
                other.clipCount == clipCount) &&
            (identical(other.subOrganization, subOrganization) ||
                other.subOrganization == subOrganization) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.twitter, twitter) || other.twitter == twitter) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.inactive, inactive) ||
                other.inactive == inactive) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.crawledAt, crawledAt) ||
                other.crawledAt == crawledAt) &&
            (identical(other.commentsCrawledAt, commentsCrawledAt) ||
                other.commentsCrawledAt == commentsCrawledAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.ytUploadsId, ytUploadsId) ||
                other.ytUploadsId == ytUploadsId) &&
            const DeepCollectionEquality()
                .equals(other._topTopics, _topTopics) &&
            const DeepCollectionEquality().equals(other._ytHandle, _ytHandle) &&
            (identical(other.twitch, twitch) || other.twitch == twitch) &&
            const DeepCollectionEquality()
                .equals(other._ytNameHistory, _ytNameHistory) &&
            (identical(other.group, group) || other.group == group));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        englishName,
        type,
        photo,
        organization,
        videoCount,
        subscriberCount,
        viewCount,
        clipCount,
        subOrganization,
        banner,
        twitter,
        lang,
        inactive,
        description,
        publishedAt,
        crawledAt,
        commentsCrawledAt,
        updatedAt,
        ytUploadsId,
        const DeepCollectionEquality().hash(_topTopics),
        const DeepCollectionEquality().hash(_ytHandle),
        twitch,
        const DeepCollectionEquality().hash(_ytNameHistory),
        group
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelCopyWith<_$_Channel> get copyWith =>
      __$$_ChannelCopyWithImpl<_$_Channel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelToJson(
      this,
    );
  }
}

abstract class _Channel extends Channel {
  const factory _Channel(
      {required final String id,
      required final String name,
      @JsonKey(name: 'english_name') final String? englishName,
      final ChannelType? type,
      final String? photo,
      @JsonKey(name: 'org') final String? organization,
      @JsonKey(name: 'video_count') final int? videoCount,
      @JsonKey(name: 'subscriber_count') final int? subscriberCount,
      @JsonKey(name: 'view_count') final String? viewCount,
      @JsonKey(name: 'clip_count') final int? clipCount,
      @JsonKey(name: 'suborg') final String? subOrganization,
      final String? banner,
      final String? twitter,
      @JsonKey(toJson: Language.toStringStatic, fromJson: Language.fromString)
      required final Language lang,
      final bool? inactive,
      final String? description,
      @JsonKey(name: 'published_at') final String? publishedAt,
      @JsonKey(name: 'crawled_at') final String? crawledAt,
      @JsonKey(name: 'comments_crawled_at') final String? commentsCrawledAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'yt_uploads_id') final String? ytUploadsId,
      @JsonKey(name: 'top_topics') final List<String> topTopics,
      @JsonKey(name: 'yt_handle') final List<String> ytHandle,
      final String? twitch,
      @JsonKey(name: 'yt_name_history') final List<String> ytNameHistory,
      final String? group}) = _$_Channel;
  const _Channel._() : super._();

  factory _Channel.fromJson(Map<String, dynamic> json) = _$_Channel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'english_name')
  String? get englishName;
  @override
  ChannelType? get type;
  @override
  String? get photo;
  @override
  @JsonKey(name: 'org')
  String? get organization;
  @override
  @JsonKey(name: 'video_count')
  int? get videoCount;
  @override
  @JsonKey(name: 'subscriber_count')
  int? get subscriberCount;
  @override
  @JsonKey(name: 'view_count')
  String? get viewCount;
  @override
  @JsonKey(name: 'clip_count')
  int? get clipCount;
  @override
  @JsonKey(name: 'suborg')
  String? get subOrganization;
  @override
  String? get banner;
  @override
  String? get twitter;
  @override
  @JsonKey(toJson: Language.toStringStatic, fromJson: Language.fromString)
  Language get lang;
  @override
  bool? get inactive;
  @override
  String? get description;
  @override
  @JsonKey(name: 'published_at')
  String? get publishedAt;
  @override
  @JsonKey(name: 'crawled_at')
  String? get crawledAt;
  @override
  @JsonKey(name: 'comments_crawled_at')
  String? get commentsCrawledAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'yt_uploads_id')
  String? get ytUploadsId;
  @override
  @JsonKey(name: 'top_topics')
  List<String> get topTopics;
  @override
  @JsonKey(name: 'yt_handle')
  List<String> get ytHandle;
  @override
  String? get twitch;
  @override
  @JsonKey(name: 'yt_name_history')
  List<String> get ytNameHistory;
  @override
  String? get group;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelCopyWith<_$_Channel> get copyWith =>
      throw _privateConstructorUsedError;
}
