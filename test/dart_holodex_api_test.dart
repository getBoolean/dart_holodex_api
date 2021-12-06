import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:test/test.dart';

void main() {
  final client = HolodexClient(apiKey: '');
  group('A group of tests', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(client.apiKey, '');
    });
  });

  client.close();
}
