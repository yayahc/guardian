import 'dart:async';

import 'package:http/http.dart';
import 'package:guardian/config/init.dart';

class KeepAlive {
  static void run() {
    Timer.periodic(Duration(minutes: 10), (timer) async {
      Client().get(Uri.parse(Init.dotEnv['SERVER_URL']));
    });
  }
}
