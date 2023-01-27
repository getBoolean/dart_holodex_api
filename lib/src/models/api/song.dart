import 'dart:convert';

import 'package:equatable/equatable.dart';

class Song extends Equatable {
  final String name;
  final String? art;
  final int? end;
  final int? start;
  final int? itunesid;
  final String? originalArtist;

  const Song({
    required this.name,
    this.art,
    this.end,
    this.start,
    this.itunesid,
    this.originalArtist,
  });

  Song copyWith({
    String? name,
    String? art,
    int? end,
    int? start,
    int? itunesid,
    String? originalArtist,
  }) {
    return Song(
      name: name ?? this.name,
      art: art ?? this.art,
      end: end ?? this.end,
      start: start ?? this.start,
      itunesid: itunesid ?? this.itunesid,
      originalArtist: originalArtist ?? this.originalArtist,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'art': art,
      'end': end,
      'start': start,
      'itunesid': itunesid,
      'originalArtist': originalArtist,
    };
  }

  factory Song.fromMap(Map<String, dynamic> map) {
    return Song(
      name: map['name'],
      art: map['art'],
      end: map['end'],
      start: map['start'],
      itunesid: map['itunesid'],
      originalArtist: map['originalArtist'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Song.fromJson(String source) => Song.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      'name: $name',
      'art: $art',
      'end: $end',
      'start: $start',
      'itunesid: $itunesid',
      'originalArtist: $originalArtist',
    ];
  }
}
