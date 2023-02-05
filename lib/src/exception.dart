/// Exception thrown when an error occurs while making a request to the Holodex API.
class HolodexException implements Exception {
  /// The error message.
  final String? message;

  /// The error code.
  final int? code;

  /// Response body of the request.
  final dynamic response;

  /// Returns a new [HolodexException] instance.
  const HolodexException([this.message = '', this.code, this.response]);

  @override
  String toString() {
    if (message == null) return 'HolodexException';
    return 'HolodexException: $message (${code ?? 0})';
  }
}
