import 'package:dart_holodex_api/src/enums.dart';

/// Filter the results returns by the Holodex API channel endpoints
class ChannelFilter {
  /// Type of Channel, whether it's a vtuber or a subber. Leave unset to query all.
  final ChannelType? type;

  /// List of Language enum to filter channels/clips. Official streams do not follow this parameter
  final List<Language> languages;

  /// Result limit. Max of 50.
  final int limit;

  /// Offset results
  final int offset;

  /// ASC or DESC order, default asc.
  final Order order;

  /// Column to sort on
  final List<ChannelSort> sort;

  final Organization? organization;

  /// Arguments
  /// - `includes` Request extra data be included in the results. They are not guarenteed to be returned.
  /// - `languages` List of Language enum to filter channels/clips. Official streams do not follow this parameter
  /// - `limit` Result limit. Max of 50.
  /// - `offset` Offset results
  /// - `paginated` If paginated is set to true, returns [VideoFullList] with total, otherwise returns [VideoFullList] without the total.
  const ChannelFilter({
    this.languages = const [],
    this.limit = 25,
    this.offset = 0,
    this.type,
    this.sort = const <ChannelSort>[ChannelSort.organization],
    this.order = Order.ascending,
    this.organization,
  });
}
