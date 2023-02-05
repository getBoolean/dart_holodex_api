import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:test/test.dart';

import '../utils.dart';

void main() {
  late HolodexClient client;
  setUp(() {
    client = setUpHolodexClient();
  });
  tearDown(() => client.close());

  group('HolodexClient.getVideoMetadata', () {
    test(
        'Getting video metadata for "eJJuy5rY57w" with no timestamps or recommendations',
        () async {
      // Setup
      final shionSingingStream = 'eJJuy5rY57w';

      // Test
      final video = await client.getVideoMetadata(shionSingingStream);

      // Expect
      expect(video.type, VideoType.stream, reason: 'Video type is stream');
      expect(video.comments, isEmpty, reason: 'Timestamp comments are not included');
      expect(video.recommendations, isEmpty, reason: 'Recommendations are not included');
    });

    test('Getting video metadata for "eJJuy5rY57w" with timestamps', () async {
      // Setup
      final shionSingingStream = 'eJJuy5rY57w';

      // Test
      final video = await client.getVideoMetadata(
        shionSingingStream,
        includeTimestampComments: true,
      );

      // Expect
      expect(video.type, VideoType.stream, reason: 'Video type is stream');
      expect(video.comments, isNotEmpty, reason: 'Timestamp comments are included');
      expect(video.recommendations, isEmpty, reason: 'Recommendations are not included');
    });

    test(skip: true, 'Getting video metadata for "eJJuy5rY57w" with recommendations',
        () async {
      // Setup
      final shionSingingStream = 'eJJuy5rY57w';

      // Test
      final video = await client.getVideoMetadata(
        shionSingingStream,
        filterRecommendationLanguages: [Language.english],
      );

      // Expect
      expect(video.type, VideoType.stream, reason: 'Video type is stream');
      expect(video.comments, isEmpty, reason: 'Timestamp comments are not included');
      expect(video.recommendations, isNotEmpty, reason: 'Recommendations are included');
    });

    test(skip: true, 'Getting video metadata for "eJJuy5rY57w" with recommendations and timestamps',
        () async {
      // Setup
      final shionSingingStream = 'eJJuy5rY57w';

      // Test
      final video = await client.getVideoMetadata(
        shionSingingStream,
        includeTimestampComments: true,
        filterRecommendationLanguages: [Language.all],
      );

      // Expect
      expect(video.type, VideoType.stream, reason: 'Video type is stream');
      expect(video.comments, isNotEmpty, reason: 'Timestamp comments are included');
      expect(video.recommendations, isNotEmpty, reason: 'Recommendations are included');
    });
  });
}
