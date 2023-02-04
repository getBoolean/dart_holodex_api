import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:test/test.dart';

import '../utils.dart';

void main() {
  late HolodexClient client;
  setUp(() {
    client = setUpHolodexClient();
  });
  tearDown(() => client.close());

  group('HolodexClient.getChannelById', () {
    test('Getting a single channel "UCO_aKKYxn4tvrqPjcTzZ6EQ"', () async {
      // Setup
      final fauna = 'UCO_aKKYxn4tvrqPjcTzZ6EQ';

      // Test
      final channel = await client.getChannelById(fauna);

      // Expect
      expect(channel.type, ChannelType.vtuber);
    });
  });

  group('HolodexClient.getChannels', () {
    test('Getting channels is not empty', () async {
      // Setup
      final filter = ChannelFilter(
        limit: 10,
        offset: 0,
      );

      // Test
      final channels = await client.getChannels(filter);

      // Expect
      expect(channels, isNotEmpty,
          reason: 'The channels list should not be empty');
    });
  });
}
