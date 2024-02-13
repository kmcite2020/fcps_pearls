import '../../../main.dart';
import '../authenticated.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'PEARLS'.text(),
      ),
      body: ListView(
        children: [
          ElevatedButton.icon(
            icon: Icon(
              Icons.diamond,
              size: 40,
            ),
            onPressed: () {
              authenticatedPageRM(AuthenticatedPage.pearls);
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
              authenticatedPageRM(AuthenticatedPage.study);
            },
            label: Row(
              children: [
                'Study Mode'.text(scale: 2).pad(),
              ],
            ),
          ).pad(),
          Tooltip(
            message: 'Unimplemented',
            child: ElevatedButton.icon(
              icon: Icon(
                Icons.mic_external_off,
                size: 40,
              ),
              onPressed: () {
                authenticatedPageRM(AuthenticatedPage.exam);
              },
              label: Row(
                children: [
                  'Exam Mode'.text(scale: 2).pad(),
                ],
              ),
            ).pad(),
          ),
          ElevatedButton.icon(
            icon: Icon(
              Icons.edit_note,
              size: 40,
            ),
            onPressed: () {
              authenticatedPageRM(AuthenticatedPage.studio);
            },
            label: Row(
              children: [
                'Studio Mode'.text(scale: 2).pad(),
              ],
            ),
          ).pad(),
          ElevatedButton.icon(
            icon: Icon(
              Icons.settings,
              size: 40,
            ),
            onPressed: () {
              authenticatedPageRM(AuthenticatedPage.settings);
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
