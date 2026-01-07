
class Chat {
  int id;
  String title;
  String username;
  String type;

  Chat({
    required this.id,
    required this.title,
    required this.username,
    required this.type,
  });

  factory Chat.fromJson(Map<String, dynamic> json) {
    return Chat(
      id: json['id'],
      title: json['title'],
      username: json['username'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'username': username,
      'type': type,
    };
  }
}