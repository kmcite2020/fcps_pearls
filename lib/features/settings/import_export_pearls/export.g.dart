// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BackupImpl _$$BackupImplFromJson(Map<String, dynamic> json) => _$BackupImpl(
      pearls:
          (json['pearls'] as List<dynamic>?)?.map(Pearl.fromJson).toList() ??
              const <Pearl>[],
    );

Map<String, dynamic> _$$BackupImplToJson(_$BackupImpl instance) =>
    <String, dynamic>{
      'pearls': instance.pearls,
    };
