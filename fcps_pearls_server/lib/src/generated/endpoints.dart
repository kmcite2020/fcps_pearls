/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/pearls_endpoint.dart' as _i2;
import 'package:fcps_pearls_server/src/generated/pearl.dart' as _i3;
import 'package:uuid/uuid_value.dart' as _i4;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'pearls': _i2.PearlsEndpoint()
        ..initialize(
          server,
          'pearls',
          null,
        )
    };
    connectors['pearls'] = _i1.EndpointConnector(
      name: 'pearls',
      endpoint: endpoints['pearls']!,
      methodConnectors: {
        'getPearls': _i1.MethodConnector(
          name: 'getPearls',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['pearls'] as _i2.PearlsEndpoint).getPearls(session),
        ),
        'addOrUpdatePearl': _i1.MethodConnector(
          name: 'addOrUpdatePearl',
          params: {
            'pearl': _i1.ParameterDescription(
              name: 'pearl',
              type: _i1.getType<_i3.Pearl>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['pearls'] as _i2.PearlsEndpoint).addOrUpdatePearl(
            session,
            params['pearl'],
          ),
        ),
        'deletePearl': _i1.MethodConnector(
          name: 'deletePearl',
          params: {
            'pearlId': _i1.ParameterDescription(
              name: 'pearlId',
              type: _i1.getType<_i4.UuidValue>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['pearls'] as _i2.PearlsEndpoint).deletePearl(
            session,
            params['pearlId'],
          ),
        ),
        'getPearl': _i1.MethodConnector(
          name: 'getPearl',
          params: {
            'pearlId': _i1.ParameterDescription(
              name: 'pearlId',
              type: _i1.getType<_i4.UuidValue>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['pearls'] as _i2.PearlsEndpoint).getPearl(
            session,
            params['pearlId'],
          ),
        ),
      },
    );
  }
}
