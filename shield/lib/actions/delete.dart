import 'package:shield/actions/send.dart';
import 'package:shield/config/init.dart';
import 'package:http/http.dart';

// delete inapropriate message
void deleteMessage(int messageId) async {
  final String baseUrl = Init.dotEnv['TELEGRAM_BOT_API_BAS_URL'] ?? '';
  final String botToken = Init.dotEnv['BOT_TOKEN'] ?? '';
  final String chatId = Init.dotEnv['CHAT_ID'] ?? '';
  final String compose =
      "$baseUrl$botToken/deleteMessage?chat_id=$chatId&message_id=$messageId";
  final Response response = await Client().post(Uri.parse(compose));
  if (response.statusCode == 200) {
    sendMessage("Can't delete a message\nID: $messageId");
  }
}
