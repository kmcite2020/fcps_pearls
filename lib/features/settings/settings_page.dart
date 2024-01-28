import 'dart:io';

import 'package:colornames/colornames.dart';
import 'package:fcps_pearls/main.dart';

import 'settings.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          DropdownButtonFormField(
            value: themeModeRM(),
            items: ThemeMode.values
                .map(
                  (eachThemeMode) => DropdownMenuItem(
                    value: eachThemeMode,
                    child: eachThemeMode.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: themeModeRM.call,
          ).pad(),
          DropdownButtonFormField(
            value: materialColorRM(),
            items: Colors.primaries.map(
              (eachMaterialColor) {
                return DropdownMenuItem(
                  value: eachMaterialColor,
                  child: eachMaterialColor.colorName.toUpperCase().text(),
                );
              },
            ).toList(),
            onChanged: materialColorRM.call,
          ).pad(),
          // ElevatedButton(
          //   onPressed: () async {
          //     pearlsToJsonExporter.exportToJson();
          //   },
          //   child: 'Export ToJson'.text(),
          // ).pad(),
          // pearlsToJsonExporter.backupRM.state.text().pad(),

          pearlsRM().loading
              ? CircularProgressIndicator().pad()
              : pearlsRM().length.text().pad(),

          // ElevatedButton(
          //   onPressed: () {
          //     pearlsRM.importFromFile();
          //     backupRM.add(BackupEvent.importFromFile('file'));
          //   },
          //   child: 'Import FromJson'.text(),
          // ).pad(),
          ElevatedButton(
            onPressed: pearlsRM().loading
                ? null
                : () {
                    // pearlsRM.exportToFile();
                  },
            child: 'Export ToJson'.text(),
          ).pad(),
          // ElevatedButton(
          //   onPressed: () => pearlsToJsonExporter.importFromJson(),
          //   child: 'Import FromJson'.text(),
          // ).pad(),
        ],
      ),
    );
  }
}

final pearlsToJsonExporter = PearlsToJsonExporter();

class PearlsToJsonExporter {
  final backupRM = RM.inject(
    () => File(directory.path),
    persist: () => PersistState(
      key: 'b',
      toJson: (s) => s.path,
      fromJson: (json) => File(json),
    ),
  );
  void exportToJson() {
    // final Pearls pearls = pearlsManager.pearls;
    // final json = jsonEncode(pearls);
    // final now = DateTime.now();
    // final fileToStore = File(directory.path + '\\' + '${now.year}' + '.json');
    // fileToStore.writeAsStringSync(json);
    // backupRM.state = fileToStore;
  }

  void importFromJson() async {
    // final file = backupRM.state;
    // final json = await file.readAsString();
    // final jsonMap = jsonDecode(json);
    // final Pearls pearls = Pearls.fromJson(jsonMap);
    // pearlsManager.pearls = pearls;
  }
}
