import '../../../main.dart';

class StudyPearlsPage extends StatefulWidget {
  const StudyPearlsPage({super.key});

  @override
  State<StudyPearlsPage> createState() => _StudyPearlsPageState();
}

class _StudyPearlsPageState extends State<StudyPearlsPage>
    with SingleTickerProviderStateMixin {
  // late final PageController _tabController = PageController();
  // TabController(
  //     length: context.watch<PearlsBloc>().state.length, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: 'No questions'.text(scale: 3).center(),
          ),
          // SliverList.list(
          //   children: [
          //     if (pearlsManager.listOfPearls.isEmpty)
          //       Column(
          //         children: [

          //         ],
          //       )
          //     else
          //       Container(
          //         decoration: BoxDecoration(
          //           border: Border.all(color: materialColor, width: 3),
          //         ),
          //         height: MediaQuery.of(context).size.height,
          //         width: MediaQuery.of(context).size.width,
          //         child: PageView.builder(
          //           controller: StudyPearlsPage.pageController.pageController,
          //           itemCount: pearlsManager.listOfPearls.length,
          //           itemBuilder: (BuildContext context, int index) {
          //             final pearl = pearlsManager.listOfPearls[index];
          //             return Scaffold(
          //               drawer: MyDrawer(),
          //               appBar: AppBar(
          //                 title: pearl.id.text(),
          //                 actions: [
          //                   IconButton(
          //                     icon: Icon(Icons.arrow_left),
          //                     onPressed: () {
          //                       StudyPearlsPage.pageController.previousView();
          //                     },
          //                   ),
          //                   IconButton(
          //                     icon: Icon(Icons.arrow_right),
          //                     onPressed: () {
          //                       StudyPearlsPage.pageController.nextView();
          //                       // print(pearl);
          //                     },
          //                   ),
          //                   SizedBox(width: 8),
          //                 ],
          //               ),
          //               body: ListView(
          //                 physics: BouncingScrollPhysics(),
          //                 shrinkWrap: true,
          //                 children: [
          //                   'statement'.text().pad(),
          //                   pearl.statement.text(scale: 2).pad(),
          //                   'answer'.text().pad(),
          //                   pearl.answer.text(scale: 2).pad(),
          //                   'explaination'.text().pad(),
          //                   pearl.explaination.text(scale: 2).pad(),
          //                 ],
          //               ),
          //             );
          //           },
          //         ),
          //       ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
