
class User {
  int id;
  bool isBot;
  String firstName;
  String lastName;
  String username;

  User({
    required this.id,
    required this.isBot,
    required this.firstName,
    required this.lastName,
    required this.username,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      isBot: json['is_bot'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      username: json['username'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'is_bot': isBot,
      'first_name': firstName,
      'last_name': lastName,
      'username': username,
    };
  }
}