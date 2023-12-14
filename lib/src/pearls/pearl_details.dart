import 'package:fcps_pearls/src/pearls/pearl.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class PearlManager {
  void call(String id) => pearl = Pearl.pearl(id);
  final pearlRM = RM.inject(
    () => Pearl(),
  );
  Pearl get pearl => pearlRM.state;
  set pearl(_) => pearlRM.state = _;
}
