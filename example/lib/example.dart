import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:dotenv/dotenv.dart' as dotenv show load, env;

void main(List<String> arguments) async {
  // Load the environment variables into memory
  // I recommend using envify for a production app, this way is just simpler for an example app
  dotenv.load();

  // Create client with API key from a .env file in the `example` folder
  // See this page on getting an api key https://holodex.stoplight.io/docs/holodex/ZG9jOjQ2Nzk1-getting-started
  // Add the api key to the .env file in the format `API=api_key` with `api_key` being the key you got from the above website
  final String? apiKey = dotenv.env['API'];
  if (apiKey == null) {
    print('API key not found, exiting');
    return;
  }
  final HolodexClient holodexClient = HolodexClient(apiKey: apiKey);

  // Get one video and print it
  final VideoFull video = await holodexClient.getVideoFromId(
    'Gx_GPwpyLxw',
    includes: [
      Includes.channelStats,
      Includes.clips,
      // Includes.description,
      Includes.liveInfo,
      Includes.mentions,
      Includes.refers,
      Includes.simulcasts,
      Includes.songs,
      Includes.sources,
    ],
  );
  print('Requested Video: ${video.toString()}');

  // Get a bunch of videos and print them
  final videoFilter = VideoFilter(
    // channelId: 'UCsYcCwDqv6Sg8KMIIMF54SA', // Kiriku Translation
    includes: <Includes>[
      Includes.channelStats,
      Includes.clips,
      // Includes.description,
      Includes.liveInfo,
      Includes.mentions,
      Includes.refers,
      Includes.simulcasts,
      Includes.songs,
      Includes.sources,
    ],
    languages: <Language>[Language.all],
    limit: 50,
    maxUpcomingHours: 1000,
    // mentionedChannelId: 'UCDqI2jOz0weumE8s7paEk6g', // Roboco
    offset: 50,
    order: Order.descending,
    // organization: Organization.Hololive,
    paginated: true,
    sort: <VideoSort>[VideoSort.availableAt],
    status: <VideoStatus>[VideoStatus.past],
    // Videos of type VideoType.clip cannot not have topic. Streams may or may not have topic.
    // topicId: 'singing',
    type: VideoType.all,
  );

  final PaginatedResult<VideoFull> videoList = await holodexClient.getVideos(videoFilter);
  print('Videos: ${videoList.items.length}\nTotal Videos: ${videoList.total}\n');

  // Get live videos
  final liveVideoFilter = VideoFilter(includes: [Includes.channelStats]);
  final PaginatedResult<VideoFull> liveVideos = await holodexClient.getLiveVideos(liveVideoFilter);
  print('Live videos: ${liveVideos.items.length}\n');

  final ceresFauna = await holodexClient.getChannelFromId('UCO_aKKYxn4tvrqPjcTzZ6EQ');
  print('Requested Channel Name: ${ceresFauna.name}\n');

  final channelFilter = const ChannelFilter(
    limit: 25,
    offset: 0,
    order: Order.ascending,
    organization: Organization.AtelierLive,
    sort: [ChannelSort.organization],
  );
  final List<Channel> channels = await holodexClient.getChannels(channelFilter);
  print('Atelier Live Channels: ${channels.length}\n');

  final List<Video> quickLiveVideos = await holodexClient.getLiveVideosFromChannelsQuickly([
    'UCQ0UDLQCjY0rmuxCDE38FGg', // Matsuri
    'UCZlDXzGoo7d44bwdNObFacg', // Kanata
    'UCqm3BQLlJfvkTsX_hvm0UmA' // Watame
  ]);
  print('Requested Live Videos From Channels: ${quickLiveVideos.length}\n');

  final PaginatedResult<VideoFull> matsuriClips =
      await holodexClient.getVideosRelatedToChannel('UCQ0UDLQCjY0rmuxCDE38FGg', // Matsuri
          type: VideoSearchType.clips);
  print('Clips including Matsuri: ${matsuriClips.total}');
  print('Returned clips including Matsuri: ${matsuriClips.items.length}\n');

  final PaginatedResult<VideoFull> matsuriClips2 = await holodexClient.getVTuberClips(
    'UCQ0UDLQCjY0rmuxCDE38FGg', // Matsuri
  );
  print('Clips including Matsuri: ${matsuriClips2.total}');
  print('Returned clips including Matsuri: ${matsuriClips2.items.length}\n');

  final PaginatedResult<VideoFull> matsuriCollabs =
      await holodexClient.getVTuberCollabs('UCQ0UDLQCjY0rmuxCDE38FGg');
  print('Collabs including Matsuri: ${matsuriCollabs.total}');
  print('Returned collabs including Matsuri: ${matsuriCollabs.items.length}\n');

  final PaginatedResult<VideoFull> matsuriUploads =
      await holodexClient.getChannelVideos('UCQ0UDLQCjY0rmuxCDE38FGg');
  print('Total Matsuri uploads: ${matsuriUploads.total}');
  print('Returned uploads: ${matsuriUploads.items.length}\n');

  final VideoFull shionSingingStream = await holodexClient.getVideoMetadata(
    'eJJuy5rY57w', // Shion's singing stream
    includeTimestampComments: true,
    languages: [Language.all],
  );
  final List<Comment>? timestampComments = shionSingingStream.comments;
  final List<Video>? recommendations = shionSingingStream.recommendations;

  print('Songs: ${shionSingingStream.songcount}');
  print('Video Comments With Timestamps: ${timestampComments?.length}');
  print('Video Recommendations: ${recommendations?.length}\n');

  final PaginatedResult<VideoFull> searchVideos = await holodexClient.searchVideos(
    searchSort: SearchSort.newest,
    languages: [Language.all],
    searchTargets: [SearchTarget.clip, SearchTarget.stream],
    conditions: ['karaoke'],
    topics: ['singing'],
    videoChannels: <String>[],
    organizations: [
      Organization.Hololive,
      Organization.Nijisanji,
    ],
    paginated: true,
    offset: 0,
    limit: 25,
  );
  print('Videos Found: ${searchVideos.items.length}\n');

  final PaginatedResult<VideoFull> searchComments = await holodexClient.searchComments(
    searchSort: SearchSort.newest,
    languages: [Language.all],
    searchTargets: [SearchTarget.clip, SearchTarget.stream],
    comment: 'shion',
    topics: ['singing'],
    // videoChannels: <String>[],
    organizations: [Organization.Hololive],
    paginated: true,
    offset: 0,
    limit: 25,
  );
  print('Videos with Comment: ${searchComments.items.length}\n');

  holodexClient.close();
}
