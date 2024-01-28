import 'package:fcps_pearls/features/home_page.dart';
import 'package:fcps_pearls/main.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'pearls/pages/pearls.dart';
import 'settings/settings.dart';

class App extends StatelessWidget {
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
      home: HomePage(),
    );
  }
}
