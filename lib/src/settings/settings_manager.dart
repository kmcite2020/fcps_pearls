import 'dart:convert';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

// part 'settings_manager.freezed.dart';
part 'settings_manager.g.dart';

@JsonSerializable()
@CopyWith()
class Settings {
  final ThemeMode themeMode;
  final double borderRadius;
  final double padding;
  @MaterialColorConverter()
  final MaterialColor materialColor;
  const Settings({
    this.themeMode = ThemeMode.system,
    this.materialColor = Colors.blueGrey,
    this.borderRadius = 8,
    this.padding = 6,
  });

  factory Settings.fromJson(json) => _$SettingsFromJson(json);
  toJson() => _$SettingsToJson(this);
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

  void setThemeMode(_) {
    settings = settings.copyWith(themeMode: _);
  }

  void setMaterialColor(_) {
    settings = settings.copyWith(materialColor: _);
  }
}
