import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:dotenv/dotenv.dart' as dotenv show load, env;


void main(List<String> arguments) async {
  // Load the environment variables into memory
  // I recommend using envify for a production app, this way is just simpler for an example app
  dotenv.load();

  // Create client with API key from a .env file in the `example_holodex` folder
  // See this page on getting an api key https://holodex.stoplight.io/docs/holodex/ZG9jOjQ2Nzk1-getting-started
  // Add the api key to the .env file in the format `API=api_key` with `api_key` being the key you got from the above website
  var client = HolodexClient(apiKey: dotenv.env['API']);

  // Get one video and print it
  final VideoFull video = await client.getVideo('Gx_GPwpyLxw', includes: [
    IncludesData.description
  ]);
  print(video.toString());

  // Get a bunch of videos and print them
  // final List<Video> videos = await client.getVideos();
  // print(videos.toString());
}
