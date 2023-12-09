import 'package:flutter/material.dart';
import 'package:fcps_pearls/src/core.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'pearls/pearl.dart';

class AddPearlPage extends ReactiveStatelessWidget {
  static final pearlRM = RM.inject(Pearl.new);
  static Pearl get pearl => pearlRM.state;
  static void setPearl(Pearl _) => pearlRM.state = _;

  const AddPearlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Pearl'.text(),
      ),
      body: ListView(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Statement',
            ),
            onChanged: (statement) {
              setPearl(pearl..statement = statement);
            },
            maxLines: 6,
            minLines: 2,
          ).pad(),
          TextField(
            decoration: InputDecoration(
              labelText: 'Answer',
            ),
            onChanged: (answer) {
              setPearl(pearl..answer = answer);
            },
            maxLines: 6,
            minLines: 2,
          ).pad(),
          TextField(
            decoration: InputDecoration(
              labelText: 'Explaination',
            ),
            onChanged: (explaination) {
              setPearl(pearl..explaination = explaination);
            },
            maxLines: 6,
            minLines: 2,
          ).pad(),
          ElevatedButton(
            onPressed: () {
              // pearlsManager.addPearl(
              //   (_) => pearl..id = pearls.length,
              // );
              // setPearl(Pearl()); // to clear the state to defaults
              navigator.back();
            },
            child: 'Save Pearl'.text(),
          ).pad(),
        ],
      ),
    );
  }
}
