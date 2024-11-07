/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:fcps_pearls_client/src/protocol/pearl.dart' as _i3;
import 'package:uuid/uuid_value.dart' as _i4;
import 'protocol.dart' as _i5;

/// {@category Endpoint}
class EndpointPearls extends _i1.EndpointRef {
  EndpointPearls(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'pearls';

  _i2.Future<List<_i3.Pearl>> getPearls() =>
      caller.callServerEndpoint<List<_i3.Pearl>>(
        'pearls',
        'getPearls',
        {},
      );

  _i2.Future<void> addOrUpdatePearl(_i3.Pearl pearl) =>
      caller.callServerEndpoint<void>(
        'pearls',
        'addOrUpdatePearl',
        {'pearl': pearl},
      );

  _i2.Future<void> deletePearl(_i4.UuidValue pearlId) =>
      caller.callServerEndpoint<void>(
        'pearls',
        'deletePearl',
        {'pearlId': pearlId},
      );

  _i2.Future<_i3.Pearl?> getPearl(_i4.UuidValue pearlId) =>
      caller.callServerEndpoint<_i3.Pearl?>(
        'pearls',
        'getPearl',
        {'pearlId': pearlId},
      );
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i5.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    pearls = EndpointPearls(this);
  }

  late final EndpointPearls pearls;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {'pearls': pearls};

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
