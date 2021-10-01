import 'package:dart_holodex_api/dart_holodex_api.dart';

void main() async {
  var client = HolodexClient(apiKey: '');
  final video = await client.getVideo(videoId: '64f654dsf3sd5f');
  print(video.toString());
}
