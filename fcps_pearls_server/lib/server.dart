import 'dart:io';

import 'package:serverpod/serverpod.dart';

import 'src/generated/protocol.dart';
import 'src/generated/endpoints.dart';

// This is the starting point of your Serverpod server.
void run(List<String> args) async {
  final port = int.parse(
      Platform.environment['PORT'] ?? '8080'); // listen on assigned port
  final config = ServerConfig(
    port: port,
    publicScheme: 'http',
    publicHost: 'localhost',
    publicPort: port,
  );
  // Initialize Serverpod and connect it with your generated code.
  final pod = Serverpod(
    args,
    config: ServerpodConfig(apiServer: config),
    Protocol(),
    Endpoints(),
  );

  // Start the server.
  await pod.start();
}
