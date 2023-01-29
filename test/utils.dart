import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:dotenv/dotenv.dart';

HolodexClient setUpHolodexClient() {
  // Load the environment variables into memory
  // I recommend using envify for a production app, this way is just simpler for an example app
  load();

  // Create client with API key from a .env file in the root package directory
  // See this page on getting an api key https://holodex.stoplight.io/docs/holodex/ZG9jOjQ2Nzk1-getting-started
  // Add the api key to the .env file in the format `API=api_key` with `api_key` being the key you got from the above website
  if (!isEveryDefined(['API'])) {
    print('API key not provided, can not run tests');
    throw Exception('API key not provided, can not run tests');
  }

  final String? apiKey = env['API'];
  if (apiKey == null) {
    print('API key not provided, can not run tests');
    throw Exception('API key not provided, can not run tests');
  }

  return HolodexClient(apiKey: apiKey);
}
