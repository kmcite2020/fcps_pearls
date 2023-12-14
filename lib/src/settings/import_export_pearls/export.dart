import 'package:freezed_annotation/freezed_annotation.dart';

import '../../pearls/pearl.dart';

part 'export.g.dart';
part 'export.freezed.dart';

@freezed
class Backup with _$Backup {
  const factory Backup({
    @Default(<Pearl>[]) final List<Pearl> pearls,
  }) = _Backup;
  factory Backup.fromJson(Map<String, dynamic> json) => _$BackupFromJson(json);
}
