<!-- markdownlint-disable MD041 -->

## 0.4.0

- **Breaking**: `HolodexClient` no longer implements `BaseHolodexClient`
- **Breaking**: Removed `BaseHolodexClient`
- **Breaking**: Renamed `HolodexClient` constructor parameter `httpClient` to `client`
- **Breaking**: All uses of `startScheduled`, `startActual`, `endActual`, and `liveViewers`
- **Breaking**: Changed `HolodexClient::searchComments` return type to `PaginatedResult<VideoWithComments>`
- **Breaking**: Changed `HolodexClient::getVideos` parameters to an optional `VideoFilter`
- **Breaking**: Changed `HolodexClient::getLiveVideos` parameters to an optional `VideoFilter`
- **Breaking**: Changed `HolodexClient::getChannels` parameters to an optional `ChannelFilter`
- **Breaking**: Changed `HolodexClient::getVideosRelatedToChannel` parameters to an optional `ChannelVideoFilter`
- **Breaking**: Changed `HolodexClient::getVTuberClips` parameters to an optional `ChannelVideoFilter`
- **Breaking**: Changed `HolodexClient::getChannelVideos` parameters to an optional `ChannelVideoFilter`
- **Breaking**: Changed `HolodexClient::getVTuberCollabs` parameters to an optional `ChannelVideoFilter`
- **Breaking**: Removed `VideoWithCommentsList`
- **Breaking**: Removed `VideoWithComments`, use `VideoFull` instead
- **Breaking**: Removed `VideoMetadata`, use `VideoFull` instead
- **Breaking**: Renamed `client.dart` to `holodex_client.dart`. Technically a breaking change, but only if
implementation was imported.
- **Breaking**: Replace usage of package `EnumToString` with Dart 2.17 enhanced enums.
- **Breaking**: Removed `VideoFullList`. Use `PaginatedResult<VideoFull>` instead.
- **Breaking**: Changed `Organization` to an enum, added new organizations added by Holodex,
and added `String` field `code`
- **Breaking**: Renamed `Organization.VirtualWitchPhenomenon` to `Organization.KAMITSUBAKI`
- **Breaking**: `EnumUtil` is no longer exported.
- **Breaking**: Changed `Language` to a class to support the `BCP47` standard.
- Changed `Video` constructor parameter `duration` to optional
have been replaced with `VideoLiveInfo`
- Added `Serializable`
- Changed `Video` to extend `Serializable`
- All models are now const
- Add String field `code` to enum `Language`, `Includes`, `Order`, `ChannelSort`, `VideoStatus`, `VideoSort`, `VideoType`,
`ChannelType`, `SearchSort`, `SearchTarget`, `VideoSearchType`

## 0.3.1

- Fix formatting

## 0.3.0

- **BREAKING**: Convert Organization enum to class with static strings
- **BREAKING** Rename Includes.descripiton to Includes.description
- Fix possible exception when returned items is null when searching
- Fix description not being returned even when included in includes list
- Fix search returning no videos when organizations are included
- Updated props for toString() of all models

## 0.2.1

- Update pubspec description
- Fix example folder layout
- Fix compatibility with dart runtime js
- Fix formatting with `dart format .`

## 0.2.0

- Variables have been renamed to be consistent across all methods
- **BREAKING:** getVideos() and getLiveVideos()
  - renamed `lang` to `languages`
  - renamed `sort` to `videoSort`
  - renamed `status` to `videoStatus`
  - renamed `type` to `videoType`
- **BREAKING:** getVideos() renamed `topicId` to `topic`
- **BREAKING:** getChannels()
  - renamed `sort` to `channelSort`
  - renamed `lang` to `languages`
- **BREAKING:** getChannelVideos(), getVTuberClips(), and getVideosRelatedToChannel() renamed `lang` to `languages`
- **BREAKING:** searchVideos() and searchComments() renamed `vch` to `videoChannels`

## 0.1.2+1

- Initial release
- Update changelog

## 0.1.2 (Unreleased)

- Improve documentation

## 0.1.1 (Unreleased)

- Add generated documentation

## 0.1.0 (Unreleased)

- Initial version.
