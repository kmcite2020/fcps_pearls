import 'package:fcps_pearls/features/add_content_page.dart';
import 'package:fcps_pearls/features/pearls/pages/study_pearls.dart';
import 'package:fcps_pearls/features/settings/settings_page.dart';
import 'package:fcps_pearls/main.dart';

import 'pearl_details.dart';

class PearlsPage extends UI {
  const PearlsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pearls'),
        actions: [
          IconButton(
            onPressed: () {
              navigator.to(SettingsPage());
            },
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              navigator.to(StudyPearlsPage());
            },
            icon: Icon(Icons.stadium_sharp),
          ),
        ],
      ),
      body: pearlsRM().loading
          ? CircularProgressIndicator().pad()
          : ListView.builder(
              itemCount: pearlsRM().pearlsCache.length,
              itemBuilder: (context, index) {
                final pearl = pearlsRM().pearlsCache.values.toList()[index];
                return ListTile(
                  leading: CircleAvatar(child: (index + 1).text()),
                  title: pearl.statement.text(),
                  trailing: IconButton.filled(
                    onPressed: () => navigator.to(
                      PearlDetailsPage(id: pearl.id),
                    ),
                    icon: Icon(Icons.diamond_outlined),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigator.to(
            AddPearlPage(),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
