import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:test/test.dart';

import 'utils.dart';

// Generating code coverage:
// 1. `dart pub global activate coverage`
// 2. `dart test --coverage="coverage"`
// 3. `dart pub global run coverage:format_coverage --lcov --in=coverage --out=coverage.lcov --packages=.packages --report-on=lib`

// Upload code coverage to codecov.io
// `./codecov -t ${CODECOV_TOKEN}`

void main() {
  late HolodexClient client;
  setUp(() {
    client = setUpHolodexClient();
  });
  tearDown(() {
    client.close();
  });

  group('Test API Key', () {
    setUp(() {});

    test('API key should not be empty', () {
      expect(client.apiKey, isNotEmpty);
    });
  });

  group('Test HolodexClient.getVideoFromId()', () {
    setUp(() {});

    test('Getting a single video', () async {
      final video = await client.getVideoFromId('Gx_GPwpyLxw');

      _expectVideoDetails(video);
    });

    test('Getting a single video with included description', () async {
      final video = await client.getVideoFromId(
        'Gx_GPwpyLxw',
        includes: [
          Includes.description,
        ],
      );

      _expectVideoDetails(video);

      // Test included data

      expect(
        video.description,
        isNotNull,
        reason: 'Video description should be included',
      );
    });

    test('Getting a single video with included channel states', () async {
      final video = await client.getVideoFromId(
        'Gx_GPwpyLxw',
        includes: [
          Includes.channelStats,
        ],
      );

      _expectVideoDetails(video);

      // Test included data

      expect(
        video.channel,
        isNotNull,
        reason: 'Channel should be included',
      );

      expect(
        video.channel?.subscriberCount,
        isNotNull,
        reason: 'Channel Stats subscriber count should be included',
      );

      expect(
        video.channel?.viewCount,
        isNotNull,
        reason: 'Channel Stats view count should be included',
      );

      expect(
        video.channel?.videoCount,
        isNotNull,
        reason: 'Channel Stats video count should be included',
      );
    });

    test('Getting a single clip video with included clips', () async {
      // Clip video
      final video = await client.getVideoFromId(
        'Gx_GPwpyLxw',
        includes: [
          Includes.clips,
        ],
      );

      _expectVideoDetails(video);

      // Test included data

      expect(
        video.clips,
        isEmpty,
        reason: 'Stream clips should be empty if it is not a stream',
      );
    });

    test('Getting a single stream video with included clips', () async {
      // Clip video
      final video = await client.getVideoFromId(
        'Vocmgc93sEg',
        includes: [
          Includes.clips,
        ],
      );

      expect(
        video.type,
        VideoType.stream,
        reason: 'Expected video to be a clip',
      );

      // Test included data

      expect(
        video.clips,
        isNotEmpty,
        reason: 'Stream clips should not be empty if it is not a stream',
      );
    });
  });

  tearDown(() => client.close());
}

void _expectVideoDetails(VideoFull video) {
  expect(
    video.type,
    VideoType.clip,
    reason: 'Expected video to be a clip',
  );

  expect(
    video.duration,
    205,
    reason: 'Expected video duration to be 205 seconds',
  );

  expect(
    video.status,
    VideoStatus.past,
    reason: 'Expected video status to be in the past',
  );

  expect(
    video.startScheduled,
    isNull,
    reason: 'Video is not a premier or a live stream',
  );

  expect(
    video.startActual,
    isNull,
    reason: 'Video is not a premier or a live stream',
  );

  expect(
    video.endActual,
    isNull,
    reason: 'Video is not a premier or a live stream',
  );

  expect(
    video.liveViewers,
    isNull,
    reason: 'Video is not a premier or a live stream',
  );

  expect(
    video.songcount,
    isNull,
    reason: 'Video has no songs',
  );

  expect(
    video.songs,
    isEmpty,
    reason: 'Video has no songs',
  );

  expect(
    video.language,
    'en',
    reason: 'Video language is english',
  );
}
