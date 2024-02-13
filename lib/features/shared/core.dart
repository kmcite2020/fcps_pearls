import '../../main.dart';

String get randomID => Uuid().v8();

final navigator = RM.navigate;

Map? toJsonAny<T>(dynamic type) => type?.toMap();

abstract class ToJson {
  Map? toMap();
}

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

late Box box;

class HiveStorage implements IPersistStore {
  @override
  Future<void> delete(String key) => box.delete(key);

  @override
  Future<void> deleteAll() => box.clear();

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    box = await Hive.openBox('fcps_pearls');
  }

  @override
  Object? read(String key) => box.get(key);

  @override
  Future<void> write<T>(String key, T value) => box.put(key, value);
}
