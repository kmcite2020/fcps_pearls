import 'package:flutter/material.dart';
import 'package:fcps_pearls/src/app.dart';
import 'package:fcps_pearls/src/core.dart';
import 'package:fcps_pearls/src/pearls/pearl_details.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'pearl.dart';

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
          itemCount: pearls.length,
          itemBuilder: (BuildContext context, int index) {
            final pearl = pearls[index];
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

class StudyPearls extends ReactiveStatelessWidget {
  const StudyPearls({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList.list(
          children: [
            if (pearls.length == 0)
              Column(
                children: [
                  AppBar(),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: 'No questions'.text(scale: 3).center(),
                  ),
                ],
              )
            else
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  onPageChanged: (index) {},
                  itemCount: pearls.length,
                  itemBuilder: (BuildContext context, int index) {
                    final pearl = pearls[index];
                    return Scaffold(
                      drawer: MyDrawer(),
                      appBar: AppBar(
                        title: pearl.id.text(),
                      ),
                      body: Column(
                        children: [
                          ListView(
                            shrinkWrap: true,
                            children: [
                              pearl.statement.text(scale: 2).pad(),
                              pearl.answer.text(scale: 2).pad(),
                              pearl.explaination.text(scale: 2).pad(),
                            ],
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Spacer(),
                              IconButton(
                                icon: Icon(Icons.arrow_left),
                                onPressed: () {
                                  print(pearl);
                                },
                              ),
                              SizedBox(width: 8),
                              IconButton(
                                icon: Icon(Icons.arrow_right),
                                onPressed: () {
                                  print(pearl);
                                },
                              ),
                              Spacer(),
                            ],
                          ).pad()
                        ],
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ],
    );
  }
}
