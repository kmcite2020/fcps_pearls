import 'package:fcps_pearls_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

Map<UuidValue, Pearl> pearls = {};

class PearlsEndpoint extends Endpoint {
  Future<List<Pearl>> getPearls(Session session) async =>
      pearls.values.toList();

  Future<void> addOrUpdatePearl(Session session, Pearl pearl) async =>
      pearls[pearl.id] = pearl;

  Future<void> deletePearl(Session session, UuidValue pearlId) async =>
      pearls.remove(pearlId);

  Future<Pearl?> getPearl(Session session, UuidValue pearlId) async =>
      pearls[pearlId];
}
