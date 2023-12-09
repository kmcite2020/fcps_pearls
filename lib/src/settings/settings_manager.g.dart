// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_manager.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SettingsCWProxy {
  Settings themeMode(ThemeMode themeMode);

  Settings materialColor(MaterialColor materialColor);

  Settings borderRadius(double borderRadius);

  Settings padding(double padding);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Settings(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Settings(...).copyWith(id: 12, name: "My name")
  /// ````
  Settings call({
    ThemeMode? themeMode,
    MaterialColor? materialColor,
    double? borderRadius,
    double? padding,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSettings.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSettings.copyWith.fieldName(...)`
class _$SettingsCWProxyImpl implements _$SettingsCWProxy {
  const _$SettingsCWProxyImpl(this._value);

  final Settings _value;

  @override
  Settings themeMode(ThemeMode themeMode) => this(themeMode: themeMode);

  @override
  Settings materialColor(MaterialColor materialColor) =>
      this(materialColor: materialColor);

  @override
  Settings borderRadius(double borderRadius) =>
      this(borderRadius: borderRadius);

  @override
  Settings padding(double padding) => this(padding: padding);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Settings(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Settings(...).copyWith(id: 12, name: "My name")
  /// ````
  Settings call({
    Object? themeMode = const $CopyWithPlaceholder(),
    Object? materialColor = const $CopyWithPlaceholder(),
    Object? borderRadius = const $CopyWithPlaceholder(),
    Object? padding = const $CopyWithPlaceholder(),
  }) {
    return Settings(
      themeMode: themeMode == const $CopyWithPlaceholder() || themeMode == null
          ? _value.themeMode
          // ignore: cast_nullable_to_non_nullable
          : themeMode as ThemeMode,
      materialColor:
          materialColor == const $CopyWithPlaceholder() || materialColor == null
              ? _value.materialColor
              // ignore: cast_nullable_to_non_nullable
              : materialColor as MaterialColor,
      borderRadius:
          borderRadius == const $CopyWithPlaceholder() || borderRadius == null
              ? _value.borderRadius
              // ignore: cast_nullable_to_non_nullable
              : borderRadius as double,
      padding: padding == const $CopyWithPlaceholder() || padding == null
          ? _value.padding
          // ignore: cast_nullable_to_non_nullable
          : padding as double,
    );
  }
}

extension $SettingsCopyWith on Settings {
  /// Returns a callable class that can be used as follows: `instanceOfSettings.copyWith(...)` or like so:`instanceOfSettings.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SettingsCWProxy get copyWith => _$SettingsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Settings _$SettingsFromJson(Map<String, dynamic> json) => Settings(
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      materialColor: json['materialColor'] == null
          ? Colors.blueGrey
          : const MaterialColorConverter()
              .fromJson(json['materialColor'] as int),
      borderRadius: (json['borderRadius'] as num?)?.toDouble() ?? 8,
      padding: (json['padding'] as num?)?.toDouble() ?? 6,
    );

Map<String, dynamic> _$SettingsToJson(Settings instance) => <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'borderRadius': instance.borderRadius,
      'padding': instance.padding,
      'materialColor':
          const MaterialColorConverter().toJson(instance.materialColor),
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
