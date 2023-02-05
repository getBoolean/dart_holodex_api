import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';

/// Options to sort a list of channels from the [HolodexClient.getChannels] endpoint.
enum ChannelSort with EnumWithCode {
  /// Sort by the channel's ID.
  id('id'),

  /// Sort by the channel's name.
  name('name'),

  /// Sort by the channel's English name.
  englishName('enligh_name'),

  /// Sort by the channel's type.
  type('type'),

  /// Sort by the channel's organization.
  organization('org'),

  /// Sort by the channel's suborganization.
  suborg('suborg'),

  /// Sort by the channel's photo.
  photo('photo'),

  /// Sort by the channel's banner.
  banner('banner'),

  /// Sort by the channel's Twitter handle.
  twitter('twitter'),

  /// Sort by the channel's YouTube video count.
  videoCount('video_count'),

  /// Sort by the channel's subscriber count.
  subscriberCount('subscriber_count'),

  /// Sort by the channel's view count.
  viewCount('view_count'),

  /// Sort by the channel's clip count.
  clipCount('clip_count'),

  /// Sort by the channel's language.
  lang('lang'),

  /// Sort by the channel's published date.
  publishedAt('published_at'),

  /// Sort by the channel's inactive status.
  inactive('inactive'),

  /// Sort by the channel's description.
  description('description');

  /// The code used by Holodex
  @override
  final String code;

  /// Creates a new [ChannelSort] with the given [code].
  const ChannelSort(this.code);
}
