part of dart_holodex_api.models;

class VideoFullList extends Equatable {
  /// All videos available, only included if paginated is true
  final String? total;

  /// Whether the list is paginated
  final bool paginated;

  /// List of videos
  final List<VideoFull> videos;

  VideoFullList({
    this.total,
    this.paginated = false,
    required this.videos,
  });

  VideoFullList copyWith({
    String? total,
    bool? paginated,
    List<VideoFull>? videos,
  }) {
    return VideoFullList(
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

  factory VideoFullList.fromMap(Map<String, dynamic> map) {
    var total = map['total'];
    if (total is int) {
      total = '$total';
    }
    return VideoFullList(
      total: total,
      paginated: map['paginated'] ?? false,
      videos: List<VideoFull>.from(
        map['items']?.map((x) => VideoFull.fromMap(x)) ?? [],
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory VideoFullList.fromJson(String source) =>
      VideoFullList.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      'total: $total',
      'paginated: $paginated',
      'videos: $videos',
    ];
  }
}
