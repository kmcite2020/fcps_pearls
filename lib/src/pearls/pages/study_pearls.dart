import 'package:fcps_pearls/src/app.dart';
import 'package:fcps_pearls/src/core.dart';
import 'package:fcps_pearls/src/pearls/pearl.dart';
import 'package:fcps_pearls/src/settings/settings_manager.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class StudyPearlsPage extends ReactiveStatelessWidget {
  const StudyPearlsPage({super.key});
  static final pageController =
      RM.injectTabPageView(length: pearlsManager.listOfPearls.length);
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList.list(
          children: [
            if (pearlsManager.listOfPearls.isEmpty)
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
                  border: Border.all(
                      color: settingsManager.settings.materialColor, width: 3),
                ),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  controller: pageController.pageController,
                  itemCount: pearlsManager.listOfPearls.length,
                  itemBuilder: (BuildContext context, int index) {
                    final pearl = pearlsManager.listOfPearls[index];
                    return Scaffold(
                      drawer: MyDrawer(),
                      appBar: AppBar(
                        title: pearl.id.text(),
                        actions: [
                          IconButton(
                            icon: Icon(Icons.arrow_left),
                            onPressed: () {
                              pageController.previousView();
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.arrow_right),
                            onPressed: () {
                              pageController.nextView();
                              // print(pearl);
                            },
                          ),
                          SizedBox(width: 8),
                        ],
                      ),
                      body: ListView(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          'statement'.text().pad(),
                          pearl.statement.text(scale: 2).pad(),
                          'answer'.text().pad(),
                          pearl.answer.text(scale: 2).pad(),
                          'explaination'.text().pad(),
                          pearl.explaination.text(scale: 2).pad(),
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
