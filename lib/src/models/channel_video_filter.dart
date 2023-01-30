import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';
import 'package:dart_holodex_api/src/enums/includes.dart';
import 'package:dart_holodex_api/src/enums/language.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_video_filter.freezed.dart';
part 'channel_video_filter.g.dart';

/// Filter the results returns by the Holodex API channel videos endpoints
@Freezed(fromJson: false, toJson: true)
class ChannelVideoFilter with _$ChannelVideoFilter {
  const ChannelVideoFilter._();

  /// Arguments
  /// - `includes` Request extra data be included in the results. They are not guarenteed to be returned.
  /// - `languages` List of Language enum to filter channels/clips. Official streams do not follow this parameter
  /// - `limit` Result limit. Max of 50.
  /// - `offset` Offset results
  /// - `paginated` If paginated is set to true, returns [VideoFullList] with total, otherwise returns [VideoFullList] without the total.
  @Assert('limit <= 50', 'The limit cannot be greater than 50')
  const factory ChannelVideoFilter({
    /// Request extra data be included in the results. They are not guarenteed to be returned.
    @JsonKey(toJson: concatIncludesList, name: 'include')
    @Default([])
        List<Includes> includes,

    /// List of Language enum to filter channels/clips. Official streams do not follow this parameter
    @JsonKey(toJson: concatLanguageList, name: 'lang')
    @Default([])
        List<Language> languages,

    /// Result limit. Max of 50.
    @Default(25) int limit,

    /// Offset results
    @Default(0) int offset,

    /// If paginated is set to true, returns [VideoFullList] with total, otherwise returns [VideoFullList] without the total.
    @Default(true) bool paginated,
  }) = _ChannelVideoFilter;
}
