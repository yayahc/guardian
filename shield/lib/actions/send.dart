import 'package:http/http.dart';
import '../config/init.dart';

// send chat message
Future<void> sendMessage(String text) async {
  final String baseUrl = Init.dotEnv['TELEGRAM_BOT_API_BAS_URL'] ?? '';
  final String botToken = Init.dotEnv['BOT_TOKEN'] ?? '';
  final String chatId = Init.dotEnv['CHAT_ID'] ?? '';
  final String compose =
      "$baseUrl$botToken/sendMessage?chat_id=$chatId&text=$text&protect_content=true";
  final Response response = await Client().post(Uri.parse(compose));
  if (response.statusCode != 200) {
    print('message nto sent');
  }
}
