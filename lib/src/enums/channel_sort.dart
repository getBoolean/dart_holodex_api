import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';

/// Options to sort a list of channels from the [HolodexClient.getChannels] endpoint.
enum ChannelSort with EnumWithCode {
  id('id'),
  name('name'),
  englishName('enligh_name'),
  type('type'),
  organization('org'),
  suborg('suborg'),
  photo('photo'),
  banner('banner'),
  twitter('twitter'),
  videoCount('video_count'),
  subscriberCount('subscriber_count'),
  viewCount('view_count'),
  clipCount('clip_count'),
  lang('lang'),
  publishedAt('published_at'),
  inactive('inactive'),
  description('description');

  /// The code used by Holodex
  @override
  final String code;
  const ChannelSort(this.code);
}
