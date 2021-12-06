import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:test/test.dart';
import 'package:dotenv/dotenv.dart' show load, isEveryDefined, env;

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
  });

  group('Test API Key', () {
    setUp(() {});

    test('API key should not be empty', () {
      expect(client.apiKey, isNotEmpty);
    });
  });

  group('Test HolodexClient.getVideoFromId()', () {
    setUp(() {});

    test('API key should not be empty', () async {
      final video = await client.getVideoFromId('Gx_GPwpyLxw');
      print(video);
      expect(video.title, isNotEmpty);
    });
  });

  tearDown(() => client.close());
}
