import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:test/test.dart';

import '../utils.dart';

void main() {
  late HolodexClient client;
  setUp(() {
    // Must test against mock server because the live videos change frequently
    client = setUpHolodexClient(
        basePath: 'https://stoplight.io/mocks/holodex/holodex/11620234');
  });
  tearDown(() => client.close());

  group('HolodexClient.getLiveVideos', () {
    test('Getting live videos from channels', () async {
      // Setup
      final channelIds = <String>['UCXe8hqIk_Yap31y7EOCMdzg'];

      // Test
      final videos = await client.getLiveVideosFromChannelsQuickly(channelIds);

      // Expect
      expect(videos, isNotEmpty,
          reason: 'There should be at least one live video');
    });
  });
}
