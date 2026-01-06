import 'dart:async';

import 'package:http/http.dart';
import 'package:shield/config/init.dart';

class KeepAlive {
  static Future<void> run() async {
    Timer.periodic(Duration(minutes: 14), (timer) async {
      await Client().get(Uri.parse(Init.dotEnv['SERVER_URL']));
    });
  }
}
