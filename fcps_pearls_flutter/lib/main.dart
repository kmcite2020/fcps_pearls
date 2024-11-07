import 'package:fcps_pearls_client/fcps_pearls_client.dart';
import 'package:fcps_pearls_flutter/pearls_bloc.dart';
import 'package:fcps_pearls_flutter/pearls_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

var client = Client('http://192.168.228.104:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void getName(String _) {}

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PearlsBloc()
            ..add(
              PearlsEventLoad(),
            ),
        ),
      ],
      child: const PearlsApp(),
    ),
  );
}

class PearlsApp extends StatelessWidget {
  const PearlsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PearlsPage(),
    );
  }
}
