part of dart_holodex_api.models;

class VideoWithCommentsList extends Equatable {
  /// All videos available, only included if paginated is true
  final String? total;

  /// Whether the list is paginated
  final bool paginated;

  /// List of videos
  final List<VideoWithComments> videos;

  VideoWithCommentsList({
    this.total,
    this.paginated = false,
    required this.videos,
  });

  VideoWithCommentsList copyWith({
    String? total,
    bool? paginated,
    List<VideoWithComments>? videos,
  }) {
    return VideoWithCommentsList(
      total: total ?? this.total,
      paginated: paginated ?? this.paginated,
      videos: videos ?? this.videos,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'total': total,
      'paginated': paginated,
      'items': videos.map((x) => x.toMap()).toList(),
    };
  }

  factory VideoWithCommentsList.fromMap(Map<String, dynamic> map) {
    var total = map['total'];
    if (total is int) {
      total = '$total';
    }
    return VideoWithCommentsList(
      total: total,
      paginated: map['paginated'] ?? false,
      videos: List<VideoWithComments>.from(map['items']?.map((x) => VideoWithComments.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory VideoWithCommentsList.fromJson(String source) => VideoWithCommentsList.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [total ?? '', paginated, videos];
}
