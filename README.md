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

Query a single video by its video id and optionally include other data

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

Query a list of videos and filter them

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

Query a list of live videos and streams, can also filter them

```dart
final VideoList liveVideos = await holodexClient.getLiveVideos(
    includes: [
      Includes.channelStats
    ]
);
print(liveVideos.toString());
```

Query a channel by its channel ID

```dart
final Channel ceresFauna = await holodexClient.getChannelFromId('UCO_aKKYxn4tvrqPjcTzZ6EQ');
print(ceresFauna.toString());
```

Query a list of channels and filter it

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

## Additional information

Read the official API documentation [here](https://holodex.stoplight.io/docs/holodex/ZG9jOjQ2Nzk1-getting-started)

Visit [Holodex.net](https://holodex.net/)

Some of this package was based off of the [C# version](https://github.com/EBro912/Holodex.NET)
