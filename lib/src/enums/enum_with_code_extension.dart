String enumWithCodeToString<T extends EnumWithCode>(T item) {
  return item.code;
}

String concatEnumWithCodeList<T extends EnumWithCode>(List<T> items) {
  return items.map((e) => e.code).join(',');
}

mixin EnumWithCode {
  String get code;
}

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

  String get concat => concatEnumWithCodeList(this);
}