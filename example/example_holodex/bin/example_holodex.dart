import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:dotenv/dotenv.dart' as dotenv show load, env;


void main(List<String> arguments) async {
  // Load the environment variables into memory
  // I recommend using envify for a production app, this way is just simpler for an example app
  dotenv.load();

  // Create client with API key from a .env file in the `example_holodex` folder
  // See this page on getting an api key https://holodex.stoplight.io/docs/holodex/ZG9jOjQ2Nzk1-getting-started
  // Add the api key to the .env file in the format `API=api_key` with `api_key` being the key you got from the above website
  var holodexClient = HolodexClient(apiKey: dotenv.env['API']);

  // Get one video and print it
  final VideoFull video = await holodexClient.getVideo('Gx_GPwpyLxw', includes: [
    // IncludesData.channelStats,
    // IncludesData.clips,
    // IncludesData.description,
    // IncludesData.liveInfo,
    // IncludesData.mentions,
    // IncludesData.refers,
    // IncludesData.simulcasts,
    // IncludesData.songs,
    // IncludesData.sources,
  ]);
  print(video.toString());

  // Get a bunch of videos and print them
  final List<VideoFull> videos = await holodexClient.getVideos(
    channelId: 'UCsYcCwDqv6Sg8KMIIMF54SA', // Kiriku Translation
    includes: <String>[
      IncludesData.mentions,
    ],
    lang: <String>[Language.all],
    limit: 25,
    maxUpcomingHours: 1000,
    mentionedChannelId: 'UCDqI2jOz0weumE8s7paEk6g', // Roboco
    offset: 0,
    order: SortOrder.descending,
    organization: Organization.Hololive,
    paginated: '<empty>',
    sort: 'available_at',
    status: VideoStatus.past,
    // Videos of type VideoType.clip cannot not have topic. Streams may or may not have topic.
    // topic: 'minecraft',
    type: VideoType.clip
  );
  print(videos.toString());
}
