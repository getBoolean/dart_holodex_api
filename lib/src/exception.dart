class HolodexException implements Exception {
  final String? message;
  final int? code;
  final dynamic response;

  const HolodexException([this.message = "", this.code, this.response]);

  @override
  String toString() {
    if (message == null) return "HolodexException";
    return "HolodexException: $message (${code ?? 0})";
  }
}
