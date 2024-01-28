import 'package:fcps_pearls/features/settings/settings.dart';

import '../../../main.dart';

final pageTabs = RM.injectTabPageView(length: pearlsRM().length);

class StudyModePage extends StatelessWidget {
  const StudyModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          (pearlsRM.listOfPearls.isEmpty)
              ? Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      child: 'No questions'.text(scale: 3).center(),
                    ),
                  ],
                )
              : Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: materialColorRM(),
                      width: 3,
                    ),
                  ),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: PageView.builder(
                    controller: pageTabs.pageController,
                    itemCount: pearlsRM.listOfPearls.length,
                    itemBuilder: (BuildContext context, int index) {
                      final pearl = pearlsRM.listOfPearls[index];
                      return Scaffold(
                        appBar: AppBar(
                          title: pearl.id.text(),
                          actions: [
                            IconButton(
                              icon: Icon(Icons.arrow_left),
                              onPressed: () {
                                pageTabs.previousView();
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_right),
                              onPressed: () {
                                pageTabs.nextView();
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
                            'explanation'.text().pad(),
                            pearl.explanation.text(scale: 2).pad(),
                          ],
                        ),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
