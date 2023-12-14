import 'package:flutter/material.dart';
import 'package:fcps_pearls/src/core.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../pearl.dart';
import 'pearl_details.dart';

class PearlsPage extends ReactiveStatelessWidget {
  const PearlsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar.large(
          title: Text('Pearls'),
        ),
        SliverList.builder(
          itemCount: pearlsManager.listOfPearls.length,
          itemBuilder: (BuildContext context, int index) {
            final pearl = pearlsManager.listOfPearls[index];
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(child: (index + 1).text()),
                  title: pearl.statement.text(),
                  trailing: IconButton.filled(
                    onPressed: () {
                      navigator.to(
                        PearlDetailsPage(id: pearl.id),
                      );
                    },
                    icon: Icon(Icons.diamond_outlined),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
