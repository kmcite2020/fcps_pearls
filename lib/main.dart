import 'main.dart';

export 'package:fcps_pearls/features/app.dart';
export 'package:fcps_pearls/features/core.dart';
export 'package:fcps_pearls/features/pearls/pearl.dart';
export 'package:flutter/material.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:states_rebuilder/states_rebuilder.dart';

typedef UI = ReactiveStatelessWidget;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RM.storageInitializer(HiveStorage());
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: PearlsBloc.new),
      ],
      child: const App(),
    ),
  );
}

abstract class Model<T> {
  T call([T? t]);
}

T watch<T>() => RM.context!.watch<T>();
T read<T>() => RM.context!.read<T>();
