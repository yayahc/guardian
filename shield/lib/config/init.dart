import 'dart:io';
// import 'package:dotenv/dotenv.dart';

class Init {
  // static DotEnv get dotEnv => DotEnv(includePlatformEnvironment: true)..load();
  static Map<String, dynamic> get dotEnv => Platform.environment;
}
