import 'main.dart';

export 'package:fcps_pearls/features/app.dart';
export 'package:fcps_pearls/features/core.dart';
export 'package:fcps_pearls/features/pearls/pearl.dart';
export 'package:flutter/material.dart' hide StatelessWidget;
export 'package:states_rebuilder/states_rebuilder.dart';

void main() => initialize();

typedef StatelessWidget = ReactiveStatelessWidget;

void initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RM.storageInitializer(HiveStorage());
  runApp(const App());
}
