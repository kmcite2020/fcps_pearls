import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

part 'settings_manager.freezed.dart';
part 'settings_manager.g.dart';

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
}

final class MaterialColorConverter
    implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();
  @override
  MaterialColor fromJson(int json) => Colors.primaries[json];

  @override
  int toJson(MaterialColor object) => Colors.primaries.indexOf(object);
}

final SettingsManager settingsManager = SettingsManager();

class SettingsManager {
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

  void setThemeMode(_) => settings = settings.copyWith(themeMode: _);

  void setMaterialColor(_) => settings = settings.copyWith(materialColor: _);
}
