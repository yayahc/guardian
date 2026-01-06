
import 'message.dart';

class Update {
  int updateId;
  Message message;

  Update({required this.updateId, required this.message});

  factory Update.fromJson(Map<String, dynamic> json) {
    return Update(
      updateId: json['update_id'],
      message: Message.fromJson(json['message']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'update_id': updateId,
      'message': message.toJson(),
    };
  }
}



