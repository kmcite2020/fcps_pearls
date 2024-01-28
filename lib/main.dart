import 'main.dart';

export 'package:fcps_pearls/features/app.dart';
export 'package:fcps_pearls/features/core.dart';
export 'package:fcps_pearls/features/pearls/pearl.dart';
export 'package:flutter/material.dart';
export 'package:states_rebuilder/states_rebuilder.dart';

/// The main function that runs the Flutter app by calling the initialize()
/// function.
///
/// The initialize() function sets up the app by:
/// - Ensuring Flutter widgets are initialized
/// - Initializing the state management and storage
/// - Running the App widget
void main() => initialize();

typedef UI = ReactiveStatelessWidget;

void initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RM.storageInitializer(HiveStorage());
  runApp(
    const App(),
  );
}
