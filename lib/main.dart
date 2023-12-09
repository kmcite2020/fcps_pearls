import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'src/app.dart';
import 'src/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RM.storageInitializer(HiveStorage());
  runApp(const MyApp());
}

