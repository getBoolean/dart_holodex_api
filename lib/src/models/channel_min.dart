part of dart_holodex_api.models;

class ChannelMin extends Equatable {
  final String id;
  final String name;
  final String englishName;
  final ChannelTypeEnum type;
  final String photo;
  ChannelMin({
    required this.id,
    required this.name,
    required this.englishName,
    required this.type,
    required this.photo,
  });

  ChannelMin copyWith({
    String? id,
    String? name,
    String? englishName,
    ChannelTypeEnum? type,
    String? photo,
  }) {
    return ChannelMin(
      id: id ?? this.id,
      name: name ?? this.name,
      englishName: englishName ?? this.englishName,
      type: type ?? this.type,
      photo: photo ?? this.photo,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'english_name': englishName,
      'type': EnumToString.convertToString(type),
      'photo': photo,
    };
  }

  factory ChannelMin.fromMap(Map<String, dynamic> map) {
    return ChannelMin(
      id: map['id'],
      name: map['name'],
      englishName: map['english_name'],
      type: EnumToString.fromString(ChannelTypeEnum.values, map['type']) ?? ChannelTypeEnum.subber,
      photo: map['photo'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ChannelMin.fromJson(String source) => ChannelMin.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      name,
      englishName,
      type,
      photo,
    ];
  }
}
