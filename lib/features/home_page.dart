import 'package:fcps_pearls/features/pearls/pages/edit_pearls.dart';
import 'package:fcps_pearls/features/pearls/pages/pearls.dart';
import 'package:fcps_pearls/features/pearls/pages/study_pearls.dart';
import 'package:fcps_pearls/features/settings/settings_page.dart';
import 'package:fcps_pearls/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'FCPS Pearls'.text(),
      ),
      body: ListView(
        children: [
          ElevatedButton.icon(
            icon: Icon(
              Icons.subtitles_outlined,
              size: 40,
            ),
            onPressed: () {
              navigator.to(
                PearlsPage(),
              );
            },
            label: Row(
              children: [
                'Pearls'.text(scale: 2).pad(),
              ],
            ),
          ).pad(),
          ElevatedButton.icon(
            icon: Icon(
              Icons.subtitles_outlined,
              size: 40,
            ),
            onPressed: () {
              navigator.to(
                StudyModePage(),
              );
            },
            label: Row(
              children: [
                'Study Mode'.text(scale: 2).pad(),
              ],
            ),
          ).pad(),
          ElevatedButton.icon(
            icon: Icon(
              Icons.mic_external_off,
              size: 40,
            ),
            onPressed: () {
              navigator.to(
                EditPearlsPage(),
              );
            },
            label: Row(
              children: [
                'Exam Mode'.text(scale: 2).pad(),
              ],
            ),
          ).pad(),
          ElevatedButton.icon(
            icon: Icon(
              Icons.settings,
              size: 40,
            ),
            onPressed: () {
              navigator.to(SettingsPage());
            },
            label: Row(
              children: [
                'Settings'.text(scale: 2).pad(),
              ],
            ),
          ).pad(),
        ],
      ),
    );
  }
}
