import 'main.dart';

//
class _Created<T> extends ReactiveModelImp<T> {
  _Created({
    required super.creator,
    super.initialState,
    super.autoDisposeWhenNotUsed = false,
    super.stateInterceptorGlobal,
    this.onChange,
    this.key,
    this.toJson,
    this.fromJson,
  });
  T call([T? newState]) {
    if (newState != null) state = newState;
    return state;
  }

  @override
  T get state {
    try {
      if (persistable) {
        final rawData = box.get(key);
        if (rawData != null) {
          final decodedData = jsonDecode(rawData);
          if (decodedData != null) {
            final cachedData = fromJson?.call(decodedData);
            if (cachedData != null) {
              super.state = cachedData;
            }
          }
        }
      }
    } catch (e) {
      print(e);
    }
    return super.state;
  }

  @override
  set state(T value) {
    if (persistable) {
      final encodedData = jsonEncode(toJson?.call(value));
      box.put(key, encodedData);
    }
    onChange?.call(value);
    super.state = value;
  }

  final void Function(T state)? onChange;

  bool get persistable => key != null && toJson != null && fromJson != null;
  String? key;
  Map<String, dynamic> Function(T state)? toJson;
  T Function(Map<String, dynamic> json)? fromJson;
}

extension TypeExtensions<T> on T {
  _Created<T> obs({
    Persistor<T>? persistor,

    /// For side effects
    void Function(T state)? onChange,
  }) =>
      _Created<T>(
        creator: () => this,
        autoDisposeWhenNotUsed: false,
        key: persistor?.key,
        toJson: persistor?.toJson,
        fromJson: persistor?.fromJson,
        onChange: onChange,
      );
}

extension CreatedExtensionsBool on _Created<bool> {
  void toggle() {
    state = !state;
  }
}

extension CreatedExtensionsInt on _Created<int> {
  void increment() => state++;
  void decrement() => state--;
}

typedef Persistor<T> = ({
  String key,
  Map<String, dynamic> Function(T state) toJson,
  T Function(Map<String, dynamic> json) fromJson,
});

final get = _Get._;

class _Get {
  _Get.__();
  static final Lock _lock = Lock();
  static _Get? _get;

  final Map<Type, dynamic> _instances = {};
  static _Get get _ {
    if (_get == null) {
      _lock.synchronized(
        () {
          _get ??= _Get.__();
        },
      );
    }
    return _get!;
  }

  void create<T>(T instance) {
    _instances[T] = instance;
  }

  void creator<T>(dynamic Function() instanceCreator) {
    _instances[T] = InstanceCreator(instanceCreator);
  }

  T _find<T>() {
    final dynamic service = _instances[T];
    assert(service != null, '');
    if (service is InstanceCreator<T>) {
      return service.instance;
    }
    return service as T;
  }

  /// With this you can register as well as locate the services.
  T call<T>([T? createInstance]) {
    if (createInstance != null) {
      create(createInstance);
    }
    return _find<T>();
  }
}

class InstanceCreator<T> {
  InstanceCreator(this._serviceFactory);
  final dynamic Function() _serviceFactory;
  T? _instance;
  T get instance {
    _instance ??= _serviceFactory();
    return _instance!;
  }
}
