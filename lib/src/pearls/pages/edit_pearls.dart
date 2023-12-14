import 'package:fcps_pearls/src/app.dart';
import 'package:fcps_pearls/src/core.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../pearl.dart';
import 'pearl_details.dart';

class EditPearlsPage extends ReactiveStatelessWidget {
  const EditPearlsPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: pearlsManager.listOfPearls.length,
        itemBuilder: (BuildContext context, int index) {
          final pearl = pearlsManager.listOfPearls[index];
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(child: (index + 1).text()),
                title: pearl.statement.text(),
                trailing: IconButton.filled(
                  onPressed: () => navigator.to(
                    PearlDetailsPage(id: pearl.id),
                  ),
                  icon: Icon(Icons.diamond_outlined),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
