/// Method to convert enums that have a code to string
String enumWithCodeToString<T extends EnumWithCode>(T item) {
  return item.code;
}

/// Concatenates the codes of the given [items] with a comma.
String concatEnumWithCodeList<T extends EnumWithCode>(List<T> items) {
  return items.map((e) => e.code).join(',');
}

/// Mixin for enums that have a code.
mixin EnumWithCode {
  /// The code of this enum value.
  String get code;
}

/// Extension methods for enums that have a code.
extension EnumByCode<T extends EnumWithCode> on List<T> {
  /// Finds the enum value in this list with code [code].
  ///
  /// Goes through this collection looking for an enum with
  /// code [code], as reported by [EnumName.code].
  /// Returns the first value with the given code. Such a value must be found.
  T? byCode(String code) {
    for (var value in this) {
      if (value.code == code) return value;
    }
    return null;
  }

  /// Returns a string with the codes of the given [items] separated by a comma.
  String get concat => concatEnumWithCodeList(this);
}
