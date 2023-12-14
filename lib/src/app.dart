import 'package:fcps_pearls/src/add_content_page.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:fcps_pearls/src/pearls/pages/pearls.dart';
import 'package:fcps_pearls/src/settings/settings_page.dart';
import 'core.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'pearls/pages/edit_pearls.dart';
import 'pearls/pages/study_pearls.dart';
import 'settings/settings_manager.dart';

class MyApp extends ReactiveStatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: RM.navigate.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: settingsManager.settings.materialColor,
        ),
        subThemesData: FlexSubThemesData(
          defaultRadius: settingsManager.settings.borderRadius,
        ),
        lightIsWhite: true,
        appBarStyle: FlexAppBarStyle.primary,
      ),
      darkTheme: FlexThemeData.dark(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: settingsManager.settings.materialColor,
          brightness: Brightness.dark,
        ),
        subThemesData: FlexSubThemesData(
          defaultRadius: settingsManager.settings.borderRadius,
        ),
        useMaterial3: true,
        darkIsTrueBlack: true,
        appBarStyle: FlexAppBarStyle.primary,
      ),
      themeMode: settingsManager.settings.themeMode,
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

final _indexRM = RM.inject<int>(
  () => 0,
  sideEffects: SideEffects(onSetState: (_) => navigator.back()),
);
int get _index => _indexRM.state;
void _setIndex(int i) => _indexRM.state = i;
