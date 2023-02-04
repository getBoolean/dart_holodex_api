import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:test/test.dart';

import 'utils.dart';

// Generating code coverage:
// 1. `dart pub global activate coverage`
// 2. `dart test --coverage="coverage"`
// 3. `dart pub global run coverage:format_coverage --lcov --in=coverage --out=coverage.lcov --packages=.packages --report-on=lib`

// Upload code coverage to codecov.io
// `./codecov -t ${CODECOV_TOKEN}`

void main() {
  late HolodexClient client;
  setUp(() {
    client = setUpHolodexClient();
  });

  group('Test API Key', () {
    setUp(() {});

    test('API key should not be empty', () {
      expect(client.apiKey, isNotEmpty);
    });
  });

  tearDown(() => client.close());
}
