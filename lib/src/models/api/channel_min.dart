import 'package:dart_holodex_api/src/enums/channel_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'channel_min.freezed.dart';
part 'channel_min.g.dart';

@freezed
class ChannelMin with _$ChannelMin {
  /// Returns a new [ChannelMin] instance.
  const factory ChannelMin({
    required String id,
    required String name,
    @JsonKey(name: 'english_name') String? englishName,
    ChannelType? type,
    String? photo,
    @JsonKey(name: 'org') String? organization,
    @JsonKey(name: 'video_count') String? videoCount,
    @JsonKey(name: 'subscriber_count') String? subscriberCount,
    @JsonKey(name: 'view_count') String? viewCount,
    @JsonKey(name: 'clip_count') int? clipCount,
  }) = _ChannelMin;

  factory ChannelMin.fromJson(Map<String, dynamic> json) => _$ChannelMinFromJson(json);
}
