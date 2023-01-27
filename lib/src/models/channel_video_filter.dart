import 'package:dart_holodex_api/dart_holodex_api.dart';

/// Filter the results returns by the Holodex API channel videos endpoints
class ChannelVideoFilter {
  /// Request extra data be included in the results. They are not guarenteed to be returned.
  final List<Includes> includes;

  /// List of Language enum to filter channels/clips. Official streams do not follow this parameter
  final List<Language> languages;

  /// Result limit. Max of 50.
  final int limit;

  /// Offset results
  final int offset;

  /// If paginated is set to true, returns [VideoFullList] with total, otherwise returns [VideoFullList] without the total.
  final bool paginated;

  /// Arguments
  /// - `includes` Request extra data be included in the results. They are not guarenteed to be returned.
  /// - `languages` List of Language enum to filter channels/clips. Official streams do not follow this parameter
  /// - `limit` Result limit. Max of 50.
  /// - `offset` Offset results
  /// - `paginated` If paginated is set to true, returns [VideoFullList] with total, otherwise returns [VideoFullList] without the total.
  const ChannelVideoFilter({
    this.includes = const [],
    this.languages = const [],
    this.limit = 25,
    this.offset = 0,
    this.paginated = true,
  }) : assert(limit <= 50, 'The limit cannot be greater than 50');
}
