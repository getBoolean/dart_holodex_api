import 'package:dart_holodex_api/dart_holodex_api.dart';
import 'package:dotenv/dotenv.dart' as dotenv show load, env;


void main(List<String> arguments) async {
  dotenv.load();
  var client = HolodexClient(apiKey: dotenv.env['API']);
  final video = await client.getVideo('_1OIrkKLMJM');
  print(video.toString());
}
