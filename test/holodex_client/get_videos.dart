import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:test/test.dart';

import '../utils.dart';

void main() {
  late HolodexClient client;
  setUp(() {
    client = setUpHolodexClient();
  });
  tearDown(() => client.close());

  group('HolodexClient.getVideoFromId', () {
    test('Getting a single video "Gx_GPwpyLxw"', () async {
      // Setup

      // Test
      final video = await client.getVideoFromId('Gx_GPwpyLxw');

      // Expect
      expectVideoDetails(video);
    });
  });

  group('HolodexClient.getVideos', () {
    test('Getting videos paginated', () async {
      // Setup
      final filter = VideoFilter(
        limit: 10,
        offset: 0,
        paginated: true,
      );

      // Test
      final video = await client.getVideos(filter);

      // Expect
      expect(video.total, isNotNull,
          reason: 'Total should be included if paginated');
    });
    
    test('Getting videos not paginated', () async {
      // Setup
      final filter = VideoFilter(
        limit: 10,
        offset: 0,
        paginated: false,
      );

      // Test
      final video = await client.getVideos(filter);

      // Expect
      expect(video.total, isNull,
          reason: 'Total should not be included if not paginated');
    });
  });
}
