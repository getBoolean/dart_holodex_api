/// Holodex API endpoints.
enum HolodexEndpoint {
  /// Endpoint for getting a list of videos.
  videos('/videos'),

  /// Endpoint for getting a list of live videos.
  live('/live'),

  /// Endpoint for getting a list of channels.
  channels('/channels'),

  /// Endpoint for getting a list of live videos from channels
  userLive('/users/live'),

  /// Endpoint for searching for videos.
  videoSearch('/search/videoSearch'),

  /// Endpoint for searching for videos with certain comments.
  commentSearch('/search/commentSearch');

  /// The path of the endpoint.
  final String path;

  /// Returns a new [HolodexEndpoint] instance.
  const HolodexEndpoint(this.path);

  @override
  String toString() {
    return path;
  }
}
