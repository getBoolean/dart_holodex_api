import 'dart:convert';

import 'serializable.dart';

class PaginatedResult<T extends Serializable> extends Serializable {
  final int? total;
  final List<T> items;
  final bool paginated;

  /// Returns the first element.
  ///
  /// Throws a [StateError] if this is empty. Otherwise returns the first element in the iteration order, equivalent to this.elementAt(0)
  T get first => items.first;

  const PaginatedResult({
    this.total,
    required this.items,
    this.paginated = false,
  });

  PaginatedResult<T> copyWith({
    int? total,
    List<T>? items,
    bool? paginated,
  }) {
    return PaginatedResult<T>(
      total: total ?? this.total,
      items: items ?? this.items,
      paginated: paginated ?? this.paginated,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'total': total,
      'items': items.map((x) => x.toMap()).toList(),
      'paginated': paginated,
    };
  }

  factory PaginatedResult.fromMap(Map<String, dynamic> map) {
    var total = map['total'];
    if (total is int) {
      total = '$total';
    }
    return PaginatedResult<T>(
      total: total,
      items: List<T>.from(map['items']?.map((x) => Serializable.fromMap<T>(x)) ?? []),
      paginated: map['paginated'] ?? false,
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory PaginatedResult.fromJson(String source) => PaginatedResult.fromMap(json.decode(source));

  @override
  String toString() => 'PaginatedResult(total: $total, items: $items, paginated: $paginated)';

  @override
  List<Object> get props => [total ?? '', items, paginated];
}
