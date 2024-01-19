import 'package:fcps_pearls/main.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';
import 'add_content_page.dart';
import 'core.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'pearls/pages/edit_pearls.dart';
import 'pearls/pages/pearls.dart';
import 'pearls/pages/study_pearls.dart';
import 'settings/settings.dart';
import 'settings/settings_page.dart';

class App extends UI {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final _index = _indexRM.watch(context);
    return MaterialApp(
      navigatorKey: RM.navigate.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: materialColor,
        ),
        subThemesData: FlexSubThemesData(
          defaultRadius: settings.borderRadius,
        ),
        lightIsWhite: true,
        appBarStyle: FlexAppBarStyle.primary,
      ),
      darkTheme: FlexThemeData.dark(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: materialColor,
          brightness: Brightness.dark,
        ),
        subThemesData: FlexSubThemesData(
          defaultRadius: settings.borderRadius,
        ),
        useMaterial3: true,
        darkIsTrueBlack: true,
        appBarStyle: FlexAppBarStyle.primary,
      ),
      themeMode: themeMode,
      home: Scaffold(
        drawer: const MyDrawer(),
        body: IndexedStack(
          index: _index,
          children: const [
            PearlsPage(),
            StudyPearlsPage(),
            SettingsPage(),
            AddPearlPage(),
            EditPearlsPage(),
          ],
        ),
      ),
    );
  }
}

class MyDrawer extends ReactiveStatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final _index = _indexRM.watch(context);
    return Drawer(
      child: NavigationDrawer(
        onDestinationSelected: _setIndex,
        selectedIndex: _index,
        children: [
          'FCPS Pearls'.text(scale: 3).pad().pad(),
          SizedBox(height: 8),
          NavigationDrawerDestination(
            icon: const Icon(Icons.diamond_outlined),
            label: 'Pearls - List'.text(),
          ),
          SizedBox(height: 8),
          NavigationDrawerDestination(
            icon: const Icon(Icons.diamond),
            label: 'Pearls - Study Mode'.text(),
          ),
          SizedBox(height: 8),
          NavigationDrawerDestination(
            icon: const Icon(Icons.settings),
            label: 'Settings'.text(),
          ),
          SizedBox(height: 8),
          Divider(),
          SizedBox(height: 8),
          NavigationDrawerDestination(
            icon: const Icon(Icons.assessment),
            label: 'Add Pearl Page'.text(),
          ),
          SizedBox(height: 8),
          NavigationDrawerDestination(
            icon: const Icon(Icons.edit_document),
            label: 'Edit Pearls'.text(),
          ),
        ],
      ),
    );
  }
}

final _indexRM = signal(0);
void _setIndex(int i) {
  _indexRM.set(i);
  navigator.back();
}
