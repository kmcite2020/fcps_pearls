import 'package:flutter/material.dart';
import 'package:fcps_pearls/src/core.dart';
import 'package:fcps_pearls/src/pearls/pearl.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class PearlManager {
  void call(int id) => pearl = Pearl.get(id);
  final pearlRM = RM.inject(
    () => Pearl()..id = 0,
  );
  Pearl get pearl => pearlRM.state;
  set pearl(_) => pearlRM.state = _;
}

class PearlDetailsPage extends ReactiveStatelessWidget {
  final int id;
  const PearlDetailsPage({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final PearlManager pearlManager = PearlManager()..call(id);

    final Pearl pearl = pearlManager.pearl;
    return Material(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
              // title: pearl.id.text(),
              ),
          SliverList.list(
            children: [
              pearl.statement.text(scale: 2).pad(),
              SizedBox(height: 8),
              ElevatedButton.icon(
                onPressed: toggleAnswerShown,
                icon:
                    Icon(answerShown ? Icons.visibility_off : Icons.visibility),
                label:
                    answerShown ? 'Hide Answer'.text() : 'Show Answer'.text(),
              ).pad(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              ),
              if (answerShown) pearl.answer.text(scale: 2).pad(),
              ElevatedButton.icon(
                onPressed: toggleExplainatonShown,
                icon: Icon(
                    explainatonShown ? Icons.visibility_off : Icons.visibility),
                label: explainatonShown
                    ? 'Hide Explaination'.text()
                    : 'Show Explaination'.text(),
              ).pad(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4)),
              if (explainatonShown) pearl.explaination.text(scale: 2).pad(),
            ],
          ),
        ],
      ),
    );
  }

  static final answerRM = false.inj();
  static bool get answerShown => answerRM.state;
  static void toggleAnswerShown() {
    answerRM.toggle();
  }

  static final explainatonRM = false.inj();
  static bool get explainatonShown => explainatonRM.state;
  static void toggleExplainatonShown() {
    explainatonRM.toggle();
  }
}
