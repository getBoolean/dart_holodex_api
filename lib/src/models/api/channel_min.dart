import 'dart:convert';

import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:equatable/equatable.dart';

class ChannelMin extends Equatable {
  final String id;
  final String name;
  final String? englishName;
  final ChannelType type;
  final String? photo;
  final String? organization;
  final ChannelStats stats;

  /// Returns a new [ChannelMin] instance.
  const ChannelMin({
    required this.id,
    required this.name,
    this.englishName,
    required this.type,
    this.photo,
    this.organization,
    this.stats = const ChannelStats(),
  });

  ChannelMin copyWith({
    String? id,
    String? name,
    String? englishName,
    ChannelType? type,
    String? photo,
    String? organization,
    ChannelStats? stats,
  }) {
    return ChannelMin(
      id: id ?? this.id,
      name: name ?? this.name,
      englishName: englishName ?? this.englishName,
      type: type ?? this.type,
      photo: photo ?? this.photo,
      organization: organization ?? this.organization,
      stats: stats ?? this.stats,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'english_name': englishName,
      'type': type.code,
      'photo': photo,
      'org': organization,
      'video_count': stats.videoCount,
      'subscriber_count': stats.subscriberCount,
      'view_count': stats.viewCount,
      'clip_count': stats.clipCount,
    };
  }

  factory ChannelMin.fromMap(Map<String, dynamic> map) {
    return ChannelMin(
      id: map['id'],
      name: map['name'],
      englishName: map['english_name'],
      type: ChannelType.values.byCode(map['type'] ?? '') ?? ChannelType.subber,
      photo: map['photo'],
      organization: map['org'],
      stats: ChannelStats(
        videoCount: map['video_count'],
        subscriberCount: map['subscriber_count'],
        viewCount: map['view_count'],
        clipCount: map['clip_count'],
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ChannelMin.fromJson(String source) =>
      ChannelMin.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      'id: $id',
      'name" $name',
      'englishName: $englishName',
      'type: $type',
      'photo: $photo',
      'organization: $organization',
      'stats: $stats',
    ];
  }
}
