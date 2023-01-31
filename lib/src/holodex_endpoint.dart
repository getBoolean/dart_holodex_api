enum HolodexEndpoint {
  videos('/videos'),
  live('/live'),
  channels('/channels'),
  userLive('/users/live'),
  videoSearch('/search/videoSearch'),
  commentSearch('/search/commentSearch');

  final String path;

  const HolodexEndpoint(this.path);
  
  @override
  String toString() {
    return path;
  }
}
