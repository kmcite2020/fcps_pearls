import 'dart:convert';

import 'package:fcps_pearls/main.dart';
import 'package:fcps_pearls/manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    @Default(ThemeMode.system) final ThemeMode themeMode,
    @Default(8) final double borderRadius,
    @Default(8) final double padding,
    @Default(Colors.red)
    @MaterialColorConverter()
    final MaterialColor materialColor,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);

  const Settings._();

  Settings call([Settings? _settings]) =>
      _settings != null ? settings = _settings : settings;
}

final class MaterialColorConverter
    implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();
  @override
  MaterialColor fromJson(int json) => Colors.primaries[json];

  @override
  int toJson(MaterialColor object) => Colors.primaries.indexOf(object);
}

final settingsRM = RM.inject(
  () => const Settings(),
  persist: () => PersistState(
    key: 'settings',
    toJson: (s) => jsonEncode(s),
    fromJson: (json) => Settings.fromJson(jsonDecode(json)),
  ),
);
Settings get settings => settingsRM.state;
set settings(Settings _) => settingsRM.state = _;

final themeModeRM = ThemeMode.system.obs;
final materialColorRM = Colors.amber.obs;
