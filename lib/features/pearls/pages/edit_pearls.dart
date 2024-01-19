import '../../../main.dart';

class EditPearlsPage extends ReactiveStatelessWidget {
  const EditPearlsPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(),
      // body: ListView.builder(
      //   itemCount: pearlsManager.listOfPearls.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     final pearl = pearlsManager.listOfPearls[index];
      //     return Column(
      //       children: [
      //         ListTile(
      //           leading: CircleAvatar(child: (index + 1).text()),
      //           title: pearl.statement.text(),
      //           trailing: IconButton.filled(
      //             onPressed: () => navigator.to(
      //               PearlDetailsPage(id: pearl.id),
      //             ),
      //             icon: Icon(Icons.diamond_outlined),
      //           ),
      //         ),
      //       ],
      //     );
      //   },
      // ),
    );
  }
}
