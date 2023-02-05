import 'package:dart_holodex_api/src/enums/channel_type.dart';
import 'package:dart_holodex_api/src/enums/language.dart';
import 'package:dart_holodex_api/src/models/api/channel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'channel_min.freezed.dart';
part 'channel_min.g.dart';

/// A [ChannelMin] class with information retrieved from Holodex.
@freezed
class ChannelMin with _$ChannelMin {
  const ChannelMin._();

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

  /// Returns a new [ChannelMin] instance from a JSON object.
  factory ChannelMin.fromJson(Map<String, dynamic> json) =>
      _$ChannelMinFromJson(json);

  /// Convert this [ChannelMin] instance to a [Channel] instance.
  Channel toChannel() => Channel(
        id: id,
        name: name,
        englishName: englishName,
        type: type,
        photo: photo,
        organization: organization,
        videoCount: videoCount,
        subscriberCount: subscriberCount,
        viewCount: viewCount,
        clipCount: clipCount,
        lang: Language.all,
      );
}
