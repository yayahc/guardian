import 'dart:async';
import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shield/shield.dart';

void main() async {
  final FutureOr<Response> Function(Request) handler = const Pipeline()
      .addMiddleware(logRequests())
      .addHandler(UpdateWebhook.listen);

  HttpServer server = await shelf_io.serve(handler, '0.0.0.0', 8080);
  server.autoCompress = true;

  print('Serving at http://${server.address.host}:${server.port}');
}
