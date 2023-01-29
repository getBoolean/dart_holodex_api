import 'package:dart_holodex_api/src/enums/enum_with_code_extension.dart';

/// An enum that allows a list to be sorted alphabetically
enum Order with EnumWithCode {
  /// Sorts the list in ascending order (A-Z)
  ascending('asc'),

  /// Sorts the list in descending order (Z-A)
  descending('desc');

  /// The order code used by Holodex
  @override
  final String code;
  const Order(this.code);

  @override
  String toString() => code;
}