import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';
import 'package:dotenv/dotenv.dart' show load, isEveryDefined, env;

// Generating code coverage:
// 1. `dart pub global activate coverage`
// 2. `dart test --coverage="coverage"`
// 3. `dart pub global run coverage:format_coverage --lcov --in=coverage --out=coverage.lcov --packages=.packages --report-on=lib`

// Upload code coverage to codecov.io
// `./codecov -t ${CODECOV_TOKEN}`

void main() {
  // Load the environment variables into memory
  // I recommend using envify for a production app, this way is just simpler for an example app
  load();

  late String apiKey;
  late HolodexClient client;
  setUp(() {
    // Create client with API key from a .env file in the root package directory
    // See this page on getting an api key https://holodex.stoplight.io/docs/holodex/ZG9jOjQ2Nzk1-getting-started
    // Add the api key to the .env file in the format `API=api_key` with `api_key` being the key you got from the above website
    if (!isEveryDefined(['API'])) {
      print('API key not provided, can not run tests');
      return;
    }

    final String? _apiKey = env['API'];
    if (_apiKey == null) {
      print('API key not provided, can not run tests');
      return;
    }
    apiKey = _apiKey;

    client = HolodexClient(apiKey: apiKey);

    final tempClient = HolodexClient(apiKey: apiKey, httpClient: http.Client());
    tempClient.close();
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
    });

    test('Getting a single video with included description', () async {
      final video = await client.getVideoFromId(
        'Gx_GPwpyLxw',
        includes: [
          Includes.description,
        ],
      );

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

      // Test included data

      expect(
        video.description,
        isNotNull,
        reason: 'Video description should be included',
      );
    });
  });

  tearDown(() => client.close());
}
