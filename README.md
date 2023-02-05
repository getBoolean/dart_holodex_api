<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

<!-- markdownlint-disable MD041 -->

[![pub package](https://img.shields.io/pub/v/dart_holodex_api)](https://pub.dev/packages/dart_holodex_api)
[![codecov](https://codecov.io/gh/getBoolean/dart_holodex_api/branch/main/graph/badge.svg?token=MDG6GG8RCE)](https://codecov.io/gh/getBoolean/dart_holodex_api)
[![License](https://img.shields.io/github/license/getBoolean/dart_holodex_api)](https://github.com/getBoolean/dart_holodex_api/blob/main/LICENSE)

A thin unofficial Dart client for Holodex API v2.

<!-- markdownlint-enable MD041 -->

## Table of Contents

- [Getting started](#getting-started)
- [Usage](#usage)
  - [Get a video by its ID](#get-a-video-by-its-id)
  - [Get a list of videos](#get-a-list-of-videos)
  - [Get a list of live videos](#get-a-list-of-live-videos)
  - [Get a channel by its ID](#get-a-channel-by-its-id)
  - [Get a list of channels](#get-a-list-of-channels)
  - [Quickly Access Live / Upcoming for a set of Channels](#quickly-access-live--upcoming-for-a-set-of-channels)
  - [Get Videos Related To Channel](#get-videos-related-to-channel)
  - [Get Clips of a VTuber](#get-clips-of-a-vtuber)
  - [Get Collabs that mention a VTuber](#get-collabs-that-mention-a-vtuber)
  - [Get Videos From Channel](#get-videos-from-channel)
  - [Get a single Video's metadata](#get-a-single-videos-metadata)
  - [Search For Videos](#search-for-videos)
  - [Search For Videos With a Comment](#search-for-videos-with-a-comment)
- [Testing with Coverage](#testing-with-coverage)
- [Additional information](#additional-information)

## Getting started

1. Get an API key at [holodex.net](https://holodex.net/), [instructions here](https://holodex.stoplight.io/docs/holodex/ZG9jOjQ2Nzk1-getting-started)
2. Add this package your `pubspec.yaml` file
3. Run `dart pub get` or `flutter pub get`.

## Usage

[Full example](https://github.com/getBoolean/dart_holodex_api/blob/main/example/lib/example.dart).

Get an instance of HolodexClient with your API key

```dart
final holodexClient = HolodexClient(apiKey: apiKey);
```

Remember to close the client when you are done with it, this closes the internal http client.
Failing to close it can cause the Dart process to hang.

```dart
holodexClient.close();
```

### Get a video by its ID

Get a video by its video ID, alias of `getVideos`

Arguments:

- `videoId` The video ID as a string
- `includes` Request extra data be included in the results. They are not guarenteed to be returned.

```dart
// Get one video and print it
final VideoFull video = await holodexClient.getVideoById(
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
```

### Get a list of videos

Arguments:

- `filter` Filter the results returns by the Holodex API `/videos` endpoint

```dart
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
  // type: VideoType.stream,
);

final PaginatedVideos videoList = await holodexClient.getVideos(videoFilter);
print('Videos: ${videoList.items.length}');
print('Total Videos: ${videoList.total}');
```

### Get a list of live videos

This is somewhat similar to calling `getVideos`, except this endpoint imposes default values on the query parameters. You can choose to override them by providing your own values.

```dart
final liveVideoFilter = VideoFilter(includes: [Includes.channelStats]);
final PaginatedVideos liveVideos = await holodexClient.getLiveVideos(liveVideoFilter);
print('Live videos: ${liveVideos.items.length}\n');
```

### Get a channel by its ID

Returns `Channel`

Arguments:

- `filter` Filter the results returns by the API

```dart
final Channel ceresFauna = await holodexClient.getChannelById('UCO_aKKYxn4tvrqPjcTzZ6EQ');
print('Requested Channel Name: ${ceresFauna.name}\n');
```

### Get a list of channels

Arguments:

- `filter` Filter the results returns by the API

```dart
final channelFilter = const ChannelFilter(
  limit: 25,
  offset: 0,
  order: Order.ascending,
  organization: Organization.AtelierLive,
  sort: [ChannelSort.organization],
);
final List<Channel> channels = await holodexClient.getChannels(channelFilter);
print('Atelier Live Channels: ${channels.length}\n');
```

### Quickly Access Live / Upcoming for a set of Channels

This endpoint is similar to the `getLiveVideos` method and usually replies much faster. It is more friendly in general. The cost to execute a lookup is significantly cheaper. It's unfortunately less customizable as a result.

Holodex recommends using this if you have a fixed set of channel IDs to look up status for.

Arguments:

- `channelIds` List of channel IDs to get the live videos from.

```dart
final List<Video> quickLiveVideos = await holodexClient.getLiveVideosFromChannelsQuickly([
    'UCQ0UDLQCjY0rmuxCDE38FGg', // Matsuri
    'UCZlDXzGoo7d44bwdNObFacg', // Kanata
    'UCqm3BQLlJfvkTsX_hvm0UmA' // Watame
]);
print('Requested Live Videos From Channels: ${quickLiveVideos.length}\n');
```

### Get Videos Related To Channel

A simplified method for access channel specific data. If you want more customization, the same result can be obtained by calling the [getVideos] method.

Arguments

- `channelId` ID of the Youtube Channel that is being queried
- `type` The type of video resource to fetch. Clips finds clip videos of a vtuber channel, Video finds the `channelId` channel's uploads, and collabs finds videos uploaded by other channels that mention the `channelId`
- `filter` Filter the results returns by the API

```dart
final PaginatedResult<VideoFull> matsuriClips = await holodexClient.getVideosRelatedToChannel(
    'UCQ0UDLQCjY0rmuxCDE38FGg', // Matsuri
    type: VideoSearchType.clips
);
print('Clips including Matsuri: ${matsuriClips.total}');
print('Returned clips including Matsuri: ${matsuriClips.videos.length}');
```

### Get Clips of a VTuber

Alias of `getChannelRelatedVideos`

Arguments:

- `channelId` ID of the Youtube Channel that is being queried
- `filter` Filter the results returns by the API

```dart
final PaginatedVideos matsuriClips2 = await holodexClient.getVTuberClips(
    'UCQ0UDLQCjY0rmuxCDE38FGg', // Matsuri
);
print('Clips including Matsuri: ${matsuriClips2.total}');
print('Returned clips including Matsuri: ${matsuriClips2.items.length}\n');
```

### Get Collabs that mention a VTuber

Alias of `getChannelRelatedVideos`

Arguments:

- `channelId` ID of the Youtube Channel that is being queried
- `filter` Filter the results returns by the API

```dart
final PaginatedVideos matsuriCollabs = await holodexClient.getVTuberCollabs('UCQ0UDLQCjY0rmuxCDE38FGg');
print('Collabs including Matsuri: ${matsuriCollabs.total}');
print('Returned collabs including Matsuri: ${matsuriCollabs.items.length}\n');
```

### Get Videos From Channel

Alias of `getChannelRelatedVideos`

Arguments:

- `channelId` ID of the Youtube Channel that is being queried
- `filter` Filter the results returns by the API

```dart
final PaginatedVideos matsuriUploads = await holodexClient.getChannelVideos('UCQ0UDLQCjY0rmuxCDE38FGg');
print('Total Matsuri uploads: ${matsuriUploads.total}');
print('Returned uploads: ${matsuriUploads.items.length}\n');
```

### Get a single Video's metadata

Retrieves a video, optionally with comments and recommended videos.

Arguments:

- `videoId` ID of the video
- `includeTimestampComments` If set to `true`, comments with timestamps will be returned
- `filterRecommendationLanguages` Retrieves recommended videos if not empty. This is a list of language codes to filter channels/clips, official streams do not follow this parameter.

```dart
final VideoFull shionSingingStream = await holodexClient.getVideoMetadata(
  'eJJuy5rY57w', // Shion's singing stream
  includeTimestampComments: true,
  filterRecommendationLanguages: [Language.all],
);
final List<Comment> timestampComments = shionSingingStream.comments;
final List<Video> recommendations = shionSingingStream.recommendations;

print('Songs: ${shionSingingStream.songcount}');
print('Video Comments With Timestamps: ${timestampComments.length}');
print('Video Recommendations: ${recommendations.length}\n');
```

### Search For Videos

Flexible endpoint to search for videos fulfilling multiple conditions.
Descriptions with "any" implies an `OR` condition, and "all" implies an `AND` condition. Note that searching for topics and clips is not supported, because clips do not contain topics.

Arguments:

- `conditions` Match all of the items. -> For each item: look for the text in video title or description
- `filter` Filter video results from the API

```dart
final singingSearchFilter = SearchFilter(
  sort: SearchSort.newest,
  languages: [Language.all],
  targets: [SearchTarget.clip, SearchTarget.stream],
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

final PaginatedVideos searchVideos = await holodexClient.searchVideos(
  conditions: ['karaoke'],
  filter: singingSearchFilter,
);
print('Videos Found: ${searchVideos.items.length}\n');
```

### Search For Videos With a Comment

Flexible endpoint to search for comments in videos fulfilling multiple conditions. Descriptions with "any" implies an `OR` condition, and "all" implies an `AND` condition. Note that searching for topics and clips is not supported, because clips do not contain topics.

Arguments:

- `comment` Find videos with comments containing specified string (case insensitive)
- `filter` Filter video results from the API

```dart
final singingSearchFilter = SearchFilter(
  sort: SearchSort.newest,
  languages: [Language.all],
  targets: [SearchTarget.clip, SearchTarget.stream],
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

final PaginatedVideos searchComments = await holodexClient.searchComments(
  comment: 'shion',
  filter: singingSearchFilter,
);
print('Videos with Comment: ${searchComments.items.length}\n');
```

## Testing with Coverage

Generating code coverage:

1. Activate the coverage package

```bash
dart pub global activate coverage
```

1. Run the tests with coverage

```bash
dart pub global run coverage:test_with_coverage --branch-coverage --function-coverage
```

1. Visualize the coverage with an extension such as
[Coverage Gutters](https://marketplace.visualstudio.com/items?itemName=ryanluker.vscode-coverage-gutters)

## Additional information

Read the official API documentation [here](https://holodex.stoplight.io/docs/holodex/ZG9jOjQ2Nzk1-getting-started)

Visit [Holodex.net](https://holodex.net/)

Some of this package was based off of the [C# version](https://github.com/EBro912/Holodex.NET)
