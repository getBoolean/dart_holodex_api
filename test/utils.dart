import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:dotenv/dotenv.dart';
import 'package:test/test.dart';

HolodexClient setUpHolodexClient({
  String basePath = 'https://holodex.net/api/v2',
}) {
  // Load the environment variables into memory
  // I recommend using envify for a production app, this way is just simpler for an example app
  final dotenv = DotEnv();
  dotenv.load();

  // Create client with API key from a .env file in the root package directory
  // See this page on getting an api key https://holodex.stoplight.io/docs/holodex/ZG9jOjQ2Nzk1-getting-started
  // Add the api key to the .env file in the format `API=api_key` with `api_key` being the key you got from the above website
  if (!dotenv.isEveryDefined(['API'])) {
    print('API key not provided, can not run tests');
    throw Exception('API key not provided, can not run tests');
  }
  
  final String apiKey = dotenv.getOrElse('API', () {
    print('API key not provided, can not run tests');
    throw Exception('API key not provided, can not run tests');
  });

  return HolodexClient(apiKey: apiKey, basePath: basePath);
}

void expectVideoDetails(VideoFull video) {
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
