import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:fcps_pearls/src/core.dart';
import 'package:isar/isar.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

part 'pearl.g.dart';

final pearlsRepository = PearlsRepository();

class PearlsRepository {
  Stream<List<Pearl>> watchPearls() => isar.txnSync(
        () => isar.pearls.where().watch(fireImmediately: true),
      );
}

List<Pearl> get pearls => pearlsRM.state;

final pearlsRM = RM.injectStream(
  pearlsRepository.watchPearls,
  initialState: <Pearl>[],
);

@Collection()
class Pearl {
  Pearl();
  Id id = Isar.autoIncrement;
  String statement = '';
  String answer = '';
  String explaination = '';

  factory Pearl.get(int id) => pearls.firstWhere((element) => element.id == id);
}

Map<int, Pearl> generatePearlMap([int count = 20]) => {
      for (final eachPearl in List.generate(
        count,
        (i) {
          String statement = 'Statement $i';
          String answer = 'Answer $i';
          String explaination = 'Explaination $i';

          return Pearl()
            ..id = i
            ..statement = statement
            ..answer = answer
            ..explaination = explaination;
        },
      ))
        eachPearl.id: eachPearl,
    };
