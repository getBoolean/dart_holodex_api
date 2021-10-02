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
final VideoFull video = await holodexClient.getVideo('Gx_GPwpyLxw', includes: [
    IncludesData.channelStats,
    IncludesData.clips,
    IncludesData.description,
    IncludesData.liveInfo,
    IncludesData.mentions,
    IncludesData.refers,
    IncludesData.simulcasts,
    IncludesData.songs,
    IncludesData.sources,
]);
print(video.toString());
```

Query a list of videos and filter them

```dart
// Get a bunch of videos and print them
final List<VideoFull> videos = await holodexClient.listVideos(
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
```

Query a list of live videos and streams

```dart
final List<VideoFull> liveVideos = await holodexClient.listLiveVideos();
print(liveVideos.toString());
```

## Additional information

Read the official API documentation [here](https://holodex.stoplight.io/docs/holodex/ZG9jOjQ2Nzk1-getting-started)

Visit [Holodex.net](https://holodex.net/)

Some of this package was based off of the [C# version](https://github.com/EBro912/Holodex.NET)
