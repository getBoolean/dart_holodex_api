import 'dart:convert';

class HolodexResponse<T> {
  HolodexResponse({this.data});

  T? data;

  @override
  String toString() {
    if (data is Map) {
      return json.encode(data);
    }
    return data.toString();
  }
}