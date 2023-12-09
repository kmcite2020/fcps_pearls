import 'package:colornames/colornames.dart';
import 'package:flutter/material.dart';
import 'package:fcps_pearls/src/add_content_page.dart';
import 'package:fcps_pearls/src/core.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'settings_manager.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class SettingsPage extends ReactiveStatelessWidget {
  const SettingsPage({
    super.key,
  });

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
              items: ThemeMode.values.map(
                (eachThemeMode) {
                  return DropdownMenuItem(
                    value: eachThemeMode,
                    child: eachThemeMode.name.toUpperCase().text(),
                  );
                },
              ).toList(),
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
              onPressed: () {
                navigator.to(AddPearlPage());
              },
              child: 'Add Pearl Page'.text(),
            ).pad(),
          ],
        ),
      ],
    );
  }
}
