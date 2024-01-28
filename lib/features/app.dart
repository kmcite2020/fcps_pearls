import 'package:fcps_pearls/main.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'pearls/pages/pearls.dart';
import 'settings/settings.dart';

class App extends UI {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: RM.navigate.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: materialColorRM(),
        ),
        subThemesData: FlexSubThemesData(
          defaultRadius: settings.borderRadius,
        ),
        lightIsWhite: true,
        appBarStyle: FlexAppBarStyle.primary,
      ),
      darkTheme: FlexThemeData.dark(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: materialColorRM(),
          brightness: Brightness.dark,
        ),
        subThemesData: FlexSubThemesData(
          defaultRadius: settings.borderRadius,
        ),
        useMaterial3: true,
        darkIsTrueBlack: true,
        appBarStyle: FlexAppBarStyle.primary,
      ),
      themeMode: themeModeRM(),
      home: PearlsPage(),
    );
  }
}

class MyDrawer extends UI {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: NavigationDrawer(
        onDestinationSelected: _setIndex,
        selectedIndex: _indexRM.state,
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

final _indexRM = RM.inject(() => 0);
void _setIndex(int i) {
  _indexRM.state = i;
  navigator.back();
}
