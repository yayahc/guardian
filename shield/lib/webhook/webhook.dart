import 'dart:async';
import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:shield/actions/delete.dart';
import 'package:shield/config/bad_messages.dart';
import 'package:shield/models/models.dart';

// listen for incoming updates via an outgoing webhook
class UpdateWebhook {
  static Future<Response> listen(Request request) async {
    try {
      final String body = await request.readAsString();
      final Update update = Update.fromJson(json.decode(body));
      if (badMessages.contains(update.message.text.toLowerCase())) {
        deleteMessage(update.message.messageId);
      }
    } catch (e) {
      print(e);
    }
    return Response(200);
  }
}
