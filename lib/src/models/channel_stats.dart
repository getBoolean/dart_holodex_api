/// Stats for a channel given by Holodex API
class ChannelStats {
  final String? videoCount;
  final String? subscriberCount;
  final String? viewCount;
  final int? clipCount;

  const ChannelStats({
    this.videoCount,
    this.subscriberCount,
    this.viewCount,
    this.clipCount,
  });
}