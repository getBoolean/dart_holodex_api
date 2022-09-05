<!-- markdownlint-disable MD041 -->

## 0.4.0

- **Breaking**: `HolodexClient` no longer implements `BaseHolodexClient`
- **Breaking**: Removed `BaseHolodexClient`
- **Breaking**: Renamed `HolodexClient` constructor parameter `httpClient` to `client`
- **Breaking**: All uses of `startScheduled`, `startActual`, `endActual`, and `liveViewers`
- **Breaking**: Changed `HolodexClient::searchComments` return type to `PaginatedResult<VideoWithComments>`
- **Breaking**: Removed `VideoWithCommentsList`
- **Breaking**: Renamed `client.dart` to `holodex_client.dart`. Technically a breaking change, but only if
- **Breaking**: Replace usage of package `EnumToString` with Dart 2.17 enhanced enums.
implementation was imported.
- Changed `Video` constructor parameter `duration` to optional
have been replaced with `VideoLiveInfo`
- Added `Serializable`
- Changed `Video` to extend `Serializable`

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
