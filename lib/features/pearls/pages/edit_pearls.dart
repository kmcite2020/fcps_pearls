import '../../../main.dart';
import 'pearl_details.dart';

class EditPearlsPage extends UI {
  const EditPearlsPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: pearlsRM.listOfPearls.length,
        itemBuilder: (BuildContext context, int index) {
          final pearl = pearlsRM.listOfPearls[index];
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
