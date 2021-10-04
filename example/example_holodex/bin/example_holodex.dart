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
  print(video.title);

  // Get a bunch of videos and print them
  final VideoList videoList = await holodexClient.listVideos(
    // channelId: 'UCsYcCwDqv6Sg8KMIIMF54SA', // Kiriku Translation
    includes: <String>[
      Includes.channelStats,
      Includes.clips,
      Includes.description,
      Includes.liveInfo,
      Includes.mentions,
      Includes.refers,
      Includes.simulcasts,
      Includes.songs,
      Includes.sources,
    ],
    lang: <String>[Language.all],
    limit: 50,
    maxUpcomingHours: 1000,
    // mentionedChannelId: 'UCDqI2jOz0weumE8s7paEk6g', // Roboco
    offset: 0,
    order: Order.ascending,
    // organization: Organization.Hololive,
    paginated: true,
    sort: 'available_at',
    status: [VideoStatus.live],
    // Videos of type VideoType.clip cannot not have topic. Streams may or may not have topic.
    // topic: 'minecraft',
    type: VideoType.stream
  );
  print(videoList.videos.length);

  // Get live videos
  final VideoList liveVideos = await holodexClient.listLiveVideos();
  print(liveVideos.videos.length);

}
