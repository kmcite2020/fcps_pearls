/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'pearl.dart' as _i2;
import 'package:fcps_pearls_client/src/protocol/pearl.dart' as _i3;
export 'pearl.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Pearl) {
      return _i2.Pearl.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Pearl?>()) {
      return (data != null ? _i2.Pearl.fromJson(data) : null) as T;
    }
    if (t == List<_i3.Pearl>) {
      return (data as List).map((e) => deserialize<_i3.Pearl>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.Pearl) {
      return 'Pearl';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Pearl') {
      return deserialize<_i2.Pearl>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
