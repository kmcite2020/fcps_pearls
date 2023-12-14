import 'dart:convert';
import 'dart:io';

import 'package:colornames/colornames.dart';
import 'package:fcps_pearls/src/pearls/pearl.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../core.dart';
import 'settings_manager.dart';

class SettingsPage extends ReactiveStatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          title: Text('Settings'),
        ),
        SliverList.list(
          children: [
            DropdownButtonFormField(
              value: settingsManager.settings.themeMode,
              items: ThemeMode.values
                  .map(
                    (eachThemeMode) => DropdownMenuItem(
                      value: eachThemeMode,
                      child: eachThemeMode.name.toUpperCase().text(),
                    ),
                  )
                  .toList(),
              onChanged: settingsManager.setThemeMode,
            ).pad(),
            DropdownButtonFormField(
              value: settingsManager.settings.materialColor,
              items: Colors.primaries.map(
                (eachMaterialColor) {
                  return DropdownMenuItem(
                    value: eachMaterialColor,
                    child: eachMaterialColor.colorName.toUpperCase().text(),
                  );
                },
              ).toList(),
              onChanged: settingsManager.setMaterialColor,
            ).pad(),
            ElevatedButton(
              onPressed: () async {
                pearlsToJsonExporter.exportToJson();
              },
              child: 'Export ToJson'.text(),
            ).pad(),
            pearlsToJsonExporter.backupRM.state.text().pad(),
            ElevatedButton(
              onPressed: () => pearlsToJsonExporter.importFromJson(),
              child: 'Import FromJson'.text(),
            ).pad(),
          ],
        ),
      ],
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
    final Pearls pearls = pearlsManager.pearls;
    final json = jsonEncode(pearls);
    final now = DateTime.now();
    final fileToStore = File(directory.path + '\\' + '${now.year}' + '.json');
    fileToStore.writeAsStringSync(json);
    backupRM.state = fileToStore;
  }

  void importFromJson() async {
    final file = backupRM.state;
    final json = await file.readAsString();
    final jsonMap = jsonDecode(json);
    final Pearls pearls = Pearls.fromJson(jsonMap);
    pearlsManager.pearls = pearls;
  }
}
