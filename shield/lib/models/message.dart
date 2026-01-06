
import 'chat.dart';
import 'user.dart';

class Message {
  int messageId;
  User from;
  Chat chat;
  int date;
  String text;

  Message({
    required this.messageId,
    required this.from,
    required this.chat,
    required this.date,
    required this.text,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      messageId: json['message_id'],
      from: User.fromJson(json['from']),
      chat: Chat.fromJson(json['chat']),
      date: json['date'],
      text: json['text'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message_id': messageId,
      'from': from.toJson(),
      'chat': chat.toJson(),
      'date': date,
      'text': text,
    };
  }
}