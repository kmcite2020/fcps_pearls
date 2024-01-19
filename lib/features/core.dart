import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uuid/uuid.dart';

import 'settings/settings.dart';

String get randomID => Uuid().v8();

final navigator = RM.navigate;

final directoryRM = RM.injectFuture(getApplicationDocumentsDirectory);
Directory get directory => directoryRM.state;

extension ObjectExtensions on Object? {
  Widget text({double? scale}) {
    return Text(
      toString(),
      textScaler: TextScaler.linear(scale ?? 1),
    );
  }
}

extension WidgetExtensions on Widget {
  Widget pad({EdgeInsets? padding}) => Padding(
        padding: padding ?? EdgeInsets.all(settings.padding),
        child: this,
      );
  Widget center() => Center(child: this);
}

class HiveStorage implements IPersistStore {
  late Box box;
  @override
  Future<void> delete(String key) => box.delete(key);

  @override
  Future<void> deleteAll() => box.clear();

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    box = await Hive.openBox('pearls');
  }

  @override
  Object? read(String key) => box.get(key);

  @override
  Future<void> write<T>(String key, T value) => box.put(key, value);
}
