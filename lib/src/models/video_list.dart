part of dart_holodex_api.models;

class VideoList extends Equatable {
  /// All videos available, only included if paginated is true
  final String? total;

  /// Whether the list is paginated
  final bool paginated;

  /// List of videos
  final List<VideoFull> videos;

  VideoList({
    this.total,
    this.paginated = false,
    required this.videos,
  });

  VideoList copyWith({
    String? total,
    bool? paginated,
    List<VideoFull>? videos,
  }) {
    return VideoList(
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

  factory VideoList.fromMap(Map<String, dynamic> map) {
    return VideoList(
      total: map['total'],
      paginated: map['paginated'] ?? false,
      videos: List<VideoFull>.from(map['items']?.map((x) => VideoFull.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory VideoList.fromJson(String source) => VideoList.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [total ?? '', paginated, videos];
}
