import 'dart:convert';

import 'package:fcps_pearls/main.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings implements Model<Settings> {
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
  @override
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
ThemeMode get themeMode => settings.themeMode;
MaterialColor get materialColor => settings.materialColor;
set themeMode(_) => settings(settings.copyWith(themeMode: _));
set materialColor(_) => settings(settings.copyWith(materialColor: _));
