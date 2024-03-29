import 'package:manager/manager.dart';

import '../../../main.dart';
import '../../auth_state.dart';
import '../authenticated.dart';

class SettingsPage extends UI {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            authenticatedPageRM(AuthenticatedPage.home);
          },
          icon: Icon(Icons.home),
        ),
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          DropdownButtonFormField(
            value: settingsRM().themeMode,
            items: ThemeMode.values
                .map(
                  (eachThemeMode) => DropdownMenuItem(
                    value: eachThemeMode,
                    child: eachThemeMode.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (_) => settingsRM(
              settingsRM().copyWith(
                themeMode: _!,
              ),
            ),
          ).pad(),
          DropdownButtonFormField(
            value: settingsRM().materialColor,
            items: Colors.primaries.map(
              (eachMaterialColor) {
                return DropdownMenuItem(
                  value: eachMaterialColor,
                  child: eachMaterialColor.colorName.toUpperCase().text(),
                );
              },
            ).toList(),
            onChanged: (_) => settingsRM(
              settingsRM().copyWith(
                materialColor: _!,
              ),
            ),
          ).pad(),
          ElevatedButton(
            onPressed: () => logout(),
            child: 'Log Out'.text(textScaleFactor: 2).pad(),
          ).pad(),
        ],
      ),
    );
  }
}
