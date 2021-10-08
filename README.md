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

A Dart wrapper for Holodex API v2

<!-- markdownlint-enable MD041 -->

## Features

Use this plugin in your Flutter app to:

- Get a video's details
- Get a list of videos and filter them
- Support for more Holodex API calls is coming

## Getting started

- Get an API key at [holodex.net](holodex.net), [instructions here](https://holodex.stoplight.io/docs/holodex/ZG9jOjQ2Nzk1-getting-started)
- Add this to your `pubspec.yaml` file

```yaml
dependencies:
    dart_holodex_api:
        git: https://github.com/getBoolean/dart_holodex_api
```

- Then run `dart pub get` or `flutter pub get`.

## Usage

[Full example](https://github.com/getBoolean/dart_holodex_api/blob/main/example/example_holodex/bin/example_holodex.dart).

Get an instance of HolodexClient with your API key

```dart
var holodexClient = HolodexClient(apiKey: apiKey);
```

### Get a video by its video ID

Returns [VideoFull]

Arguments:

- `videoId` The video ID as a string
- `includes` Request extra data be included in the results. They are not guarenteed to be returned.

```dart
// Get one video and print it
final VideoFull video = await holodexClient.getVideoFromId(
    'Gx_GPwpyLxw',
    includes: <Includes>[
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
);
print(video.toString());
```

### Get a list of videos

Returns `VideoList`

Arguments:

- `channelId` Filter by video uploader channel ID
- `includes` Request extra data be included in the results. They are not guarenteed to be returned.
- `lang` Filter by the `Language`
- `limit` Limit the number of results returned. Maximum value of 50
- `maxUpcomingHours` Number of maximum hours upcoming to get upcoming videos by (for rejecting waiting rooms that are two years out)
- `mentionedChannelId` Filter by mentioned channel id, excludes itself. Generally used to find collabs/clips that include the requested channel
- `offset` Receive results starting at this number in the array from the Holodex API
- `order` Order results by ascending or descending
- `organization` Filter by clips that feature the org's talent or videos posted by the org's talent.
- `paginated` If paginated is set to true, returns [VideoList] with total, otherwise returns [VideoList] without the total.
- `sort` Sort the returned data by this field
- `status` Filter by the video status
- `topic` Filter by video topic ID
- `type` Filter by type of video, either clips or streams

```dart
// Get a bunch of videos and print them
final VideoList videoList = await holodexClient.getVideos(
    channelId: 'UCsYcCwDqv6Sg8KMIIMF54SA', // Kiriku Translation
    includes: <Includes>[
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
    lang: <Language>[Language.all],
    limit: 25,
    maxUpcomingHours: 1000,
    mentionedChannelId: 'UCDqI2jOz0weumE8s7paEk6g', // Roboco
    offset: 0,
    order: Order.descending,
    organization: Organization.Hololive,
    paginated: true,
    sort: <VideoSort>[VideoSort.availableAt],
    status: <VideoStatus>[VideoStatus.past],
    // Videos of type VideoType.clip cannot not have topic. Streams may or may not have topic.
    // topic: 'minecraft',
    type: VideoType.clip
);
print(videoList.toString());
```

### Get a list of live videos

Returns `VideoList`

This is somewhat similar to calling listVideos().

However, this endpoint imposes these default values on the query parameters: You can choose to override them by providing your own values.

- status: [VideoStatus.live, VideoStatus.upcoming],
- type: VideoType.stream,
- sort: [VideoSort.availableAt],
- order: Order.ascending,
- max_upcoming_hours: 48,
- limit: 9999,
- include: [Includes.liveInfo] + query's include

Arguments:

- `channelId` Filter by video uploader channel ID
- `includes` Request extra data be included in the results. They are not guarenteed to be returned.
- `lang` Filter by the `Language`
- `limit` Limit the number of results returned.
- `maxUpcomingHours` Number of maximum hours upcoming to get upcoming videos by (for rejecting waiting rooms that are two years out)
- `mentionedChannelId` Filter by mentioned channel id, excludes itself. Generally used to find collabs/clips that include the requested channel
- `offset` Receive results starting at this number in the array from the Holodex API
- `order` Order by ascending or descending
- `organization` Filter by clips that feature the org's talent or videos posted by the org's talent.
- `paginated` If paginated is set to true, returns [VideoList] with total, otherwise returns [VideoList] without the total.
- `sort` Sort the returned data by this field
- `status` Filter by the video status
- `topic` Filter by video topic ID
- `type` Filter by type of video, either clips or streams

```dart
final VideoList liveVideos = await holodexClient.getLiveVideos(
    includes: [
      Includes.channelStats
    ]
);
print(liveVideos.toString());
```

### Get a channel by its ID

Returns [Channel]

Arguments:

- `channelId` ID of the Youtube Channel that is being queried

```dart
final Channel ceresFauna = await holodexClient.getChannelFromId('UCO_aKKYxn4tvrqPjcTzZ6EQ');
print(ceresFauna.toString());
```

### Get channels

Arguments:

- `lang` List of languages. Language is a property of Channel, so only Channels satisfying the language will be returned. Leave empty to search for Vtubers and/or all clippers.
- `limit` Results limit
- `offset` Offset results
- `order` Order.ascending or Order.descending order, default ascending.
- `organization` If set, filter for Vtubers belonging to a specific org
- `sort` Column to sort on, leave default to use [ChannelSort.organization] as sort. Theoretically any value in ChannelSort should work

```dart
final channels = await holodexClient.getChannels(
    limit: 25,
    offset: 0,
    order: Order.ascending,
    organization: Organization.AtelierLive,
    sort: [ChannelSort.organization]
);
print(channels.toString());
```

### Quickly Access Live / Upcoming for a set of Channels

This endpoint is similar to the getLiveVideos() method and usually replies much faster.
It is more friendly in general. The cost to execute a lookup is significantly cheaper.
It's unfortunately less customizable as a result.

We recommend using this if you have a fixed set of channel IDs to look up status for.

Arguments:

- `channelIds` List of channel IDs to get the live videos from.

```dart
final quickLiveVideos = await holodexClient.getLiveVideosFromChannelsQuickly([
    'UCQ0UDLQCjY0rmuxCDE38FGg', // Matsuri
    'UCZlDXzGoo7d44bwdNObFacg', // Kanata
    'UCqm3BQLlJfvkTsX_hvm0UmA' // Watame
]);
print('Requested Live Videos From Channels: ${quickLiveVideos.length}');
```

### Get Videos Related To Channel

A simplified method for access channel specific data.
If you want more customization, the same result can be obtained by calling the queryVideos() method.

Arguments

- `channelId` ID of the Youtube Channel that is being queried
- `type` The type of video resource to fetch. Clips finds clip videos of a vtuber channel, Video finds the `channelId` channel's uploads, and collabs finds videos uploaded by other channels that mention this `channelId`
- `includes` Request extra data be included in the results. They are not guarenteed to be returned.
- `lang` List of Language enum to filter channels/clips. Official streams do not follow this parameter
- `limit` Result limit. Max of 50.
- `offset` Offset results
- `paginated` If paginated is set to true, returns [VideoList] with total, otherwise returns [VideoList] without the total.

```dart
final matsuriClips = await holodexClient.getVideosRelatedToChannel(
    'UCQ0UDLQCjY0rmuxCDE38FGg', // Matsuri
    type: VideoSearchType.clips
);
print('Clips including Matsuri: ${matsuriClips.total}');
print('Returned clips including Matsuri: ${matsuriClips.videos.length}');
```

### Get Clips of a VTuber

Alias of getVideosRelatedToChannel()

Returns [VideoList]

Arguments

- `channelId` ID of the Youtube Channel that is being queried
- `includes` Request extra data be included in the results. They are not guarenteed to be returned.
- `lang` List of Language enum to filter channels/clips. Official streams do not follow this parameter
- `limit` Result limit. Max of 50.
- `offset` Offset results
- `paginated` If paginated is set to true, returns [VideoList] with total, otherwise returns [VideoList] without the total.

```dart
final matsuriClips = await holodexClient.getVTuberClips('UCQ0UDLQCjY0rmuxCDE38FGg');
print('Clips including Matsuri: ${matsuriClips.total}');
print('Returned clips including Matsuri: ${matsuriClips.videos.length}\n');
```

### Get Collabs that mention a VTuber

Alias of getVideosRelatedToChannel()

Arguments

- `channelId` ID of the Youtube Channel that is being queried
- `includes` Request extra data be included in the results. They are not guarenteed to be returned.
- `lang` List of Language enum to filter channels/clips. Official streams do not follow this parameter
- `limit` Result limit. Max of 50.
- `offset` Offset results
- `paginated` If paginated is set to any non-empty value, returns [VideoList] with total, otherwise returns [VideoList] without the total.

```dart
final matsuriCollabs = await holodexClient.getVTuberCollabs('UCQ0UDLQCjY0rmuxCDE38FGg');
print('Collabs including Matsuri: ${matsuriCollabs.total}');
print('Returned collabs including Matsuri: ${matsuriCollabs.videos.length}\n');
```

### Get Videos From Channel

Alias of getVideosRelatedToChannel()

Returns [VideoList]

Arguments

- `channelId` ID of the Youtube Channel that is being queried
- `includes` Request extra data be included in the results. They are not guarenteed to be returned.
- `lang` List of Language enum to filter channels/clips. Official streams do not follow this parameter
- `limit` Result limit. Max of 50.
- `offset` Offset results
- `paginated` If paginated is set to true, returns [VideoList] with total, otherwise returns [VideoList] without the total.

```dart
final matsuriUploads = await holodexClient.getChannelVideos('UCQ0UDLQCjY0rmuxCDE38FGg');
print('Total Matsuri uploads: ${matsuriUploads.total}');
print('Returned uploads: ${matsuriUploads.videos.length}\n');
```

### Get a single Video's metadata

Retrieves Comments if `timestampComments` is set to true

Retrieves Recommendations if query parameter `recommendationLanguages` is set

```dart
final videoMetadata = await holodexClient.getVideoMetadata(
    'eJJuy5rY57w', // Shion's singing stream
    timestampComments: true,
    recommendationLanguages: [Language.all],
);
final VideoFull shionSingingStream = videoMetadata.video;
final List<Comment>? timestampComments = videoMetadata.comments;
final List<VideoWithChannel>? recommendations = videoMetadata.recommendations;

print('Songs: ${shionSingingStream.songcount}');
print('Video Comments With Timestamps: ${timestampComments?.length}');
print('Video Recommendations: ${recommendations?.length}');
```

## Additional information

Read the official API documentation [here](https://holodex.stoplight.io/docs/holodex/ZG9jOjQ2Nzk1-getting-started)

Visit [Holodex.net](https://holodex.net/)

Some of this package was based off of the [C# version](https://github.com/EBro912/Holodex.NET)
