import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:test/test.dart';

import '../utils.dart';

void main() {
  late HolodexClient client;
  setUp(() {
    client = setUpHolodexClient();
  });
  tearDown(() => client.close());

  group('HolodexClient.getChannelRelatedVideos', () {
    test('Getting channel videos paginated', () async {
      // Setup
      final fauna = 'UCO_aKKYxn4tvrqPjcTzZ6EQ';
      final filter = ChannelVideoFilter(
        limit: 10,
        offset: 0,
        paginated: true,
      );

      // Test
      final video = await client.getChannelRelatedVideos(
        fauna,
        filter: filter,
        type: VideoSearchType.clips,
      );

      // Expect
      expect(video.total, isNotNull,
          reason: 'Total should be included if paginated');
    });

    test('Getting channel videos not paginated', () async {
      // Setup
      final fauna = 'UCO_aKKYxn4tvrqPjcTzZ6EQ';
      final filter = ChannelVideoFilter(
        limit: 10,
        offset: 0,
        paginated: false,
      );

      // Test
      final videos = await client.getChannelRelatedVideos(
        fauna,
        filter: filter,
        type: VideoSearchType.clips,
      );

      // Expect
      expect(videos.total, isNull,
          reason: 'Total should not be included if not paginated');
    });
  });

  group('HolodexClient.getVTuberClips', () {
    test('Getting channel clips paginated', () async {
      // Setup
      final fauna = 'UCO_aKKYxn4tvrqPjcTzZ6EQ';
      final filter = ChannelVideoFilter(
        limit: 10,
        offset: 0,
        paginated: true,
      );

      // Test
      final video = await client.getVTuberClips(
        fauna,
        filter: filter,
      );

      // Expect
      expect(video.total, isNotNull,
          reason: 'Total should be included if paginated');
    });

    test('Getting channel clips not paginated', () async {
      // Setup
      final fauna = 'UCO_aKKYxn4tvrqPjcTzZ6EQ';
      final filter = ChannelVideoFilter(
        limit: 10,
        offset: 0,
        paginated: false,
      );

      // Test
      final videos = await client.getVTuberClips(
        fauna,
        filter: filter,
      );

      // Expect
      expect(videos.total, isNull,
          reason: 'Total should not be included if not paginated');
    });
  });

  group('HolodexClient.getChannelVideos', () {
    test('Getting channel videos paginated', () async {
      // Setup
      final fauna = 'UCO_aKKYxn4tvrqPjcTzZ6EQ';
      final filter = ChannelVideoFilter(
        limit: 10,
        offset: 0,
        paginated: true,
      );

      // Test
      final video = await client.getChannelVideos(
        fauna,
        filter: filter,
      );

      // Expect
      expect(video.total, isNotNull,
          reason: 'Total should be included if paginated');
    });

    test('Getting channel videos not paginated', () async {
      // Setup
      final fauna = 'UCO_aKKYxn4tvrqPjcTzZ6EQ';
      final filter = ChannelVideoFilter(
        limit: 10,
        offset: 0,
        paginated: false,
      );

      // Test
      final videos = await client.getChannelVideos(
        fauna,
        filter: filter,
      );

      // Expect
      expect(videos.total, isNull,
          reason: 'Total should not be included if not paginated');
    });
  });

  group('HolodexClient.getVTuberCollabs', () {
    test('Getting channel collabs paginated', () async {
      // Setup
      final fauna = 'UCO_aKKYxn4tvrqPjcTzZ6EQ';
      final filter = ChannelVideoFilter(
        limit: 10,
        offset: 0,
        paginated: true,
      );

      // Test
      final video = await client.getVTuberCollabs(
        fauna,
        filter: filter,
      );

      // Expect
      expect(video.total, isNotNull,
          reason: 'Total should be included if paginated');
    });

    test('Getting channel collabs not paginated', () async {
      // Setup
      final fauna = 'UCO_aKKYxn4tvrqPjcTzZ6EQ';
      final filter = ChannelVideoFilter(
        limit: 10,
        offset: 0,
        paginated: false,
      );

      // Test
      final videos = await client.getVTuberCollabs(
        fauna,
        filter: filter,
      );

      // Expect
      expect(videos.total, isNull,
          reason: 'Total should not be included if not paginated');
    });
  });
}
