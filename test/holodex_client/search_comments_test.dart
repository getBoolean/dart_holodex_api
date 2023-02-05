import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:test/test.dart';

import '../utils.dart';

void main() {
  late HolodexClient client;
  setUp(() {
    client = setUpHolodexClient();
  });
  tearDown(() => client.close());

  group('HolodexClient.searchComments', () {
    test('Getting live videos paginated', () async {
      // Setup
      final filter = const SearchFilter(
        sort: SearchSort.newest,
        paginated: true,
        offset: 0,
        limit: 5,
      );

      // Test
      final videos = await client.searchComments(filter: filter, comment: 'shion');

      // Expect
      expect(videos.total, isNotNull,
          reason: 'Total should be included if paginated');
    });

    test('Getting live videos not paginated', () async {
      // Setup
      final filter = const SearchFilter(
        sort: SearchSort.newest,
        paginated: false,
        offset: 0,
        limit: 5,
      );

      // Test
      final videos = await client.searchComments(filter: filter, comment: 'shion');

      // Expect
      expect(videos.total, isNull,
          reason: 'Total should not be included if not paginated');
    });
  });
}
