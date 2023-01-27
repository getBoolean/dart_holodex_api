
import 'dart:convert';

import 'package:dart_holodex_api/src/models/serializable.dart';

class VideoLiveInfo extends Serializable {
  final String? startScheduled;
  final String? startActual;
  final String? endActual;
  final int? liveViewers;

  const VideoLiveInfo({
    this.startScheduled,
    this.startActual,
    this.endActual,
    this.liveViewers,
  });

  VideoLiveInfo copyWith({
    String? startScheduled,
    String? startActual,
    String? endActual,
    int? liveViewers,
  }) {
    return VideoLiveInfo(
      startScheduled: startScheduled ?? this.startScheduled,
      startActual: startActual ?? this.startActual,
      endActual: endActual ?? this.endActual,
      liveViewers: liveViewers ?? this.liveViewers,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'startScheduled': startScheduled,
      'startActual': startActual,
      'endActual': endActual,
      'liveViewers': liveViewers,
    };
  }

  factory VideoLiveInfo.fromMap(Map<String, dynamic> map) {
    return VideoLiveInfo(
      startScheduled: map['startScheduled'],
      startActual: map['startActual'],
      endActual: map['endActual'],
      liveViewers: map['liveViewers']?.toInt(),
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory VideoLiveInfo.fromJson(String source) =>
      VideoLiveInfo.fromMap(json.decode(source));

  @override
  String toString() {
    return 'VideoLiveInfo(startScheduled: $startScheduled, startActual: $startActual, endActual: $endActual, liveViewers: $liveViewers)';
  }

  @override
  List<Object> get props => [
        startScheduled ?? '',
        startActual ?? '',
        endActual ?? '',
        liveViewers ?? ''
      ];
}