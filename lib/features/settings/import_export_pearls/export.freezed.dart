// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'export.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Backup _$BackupFromJson(Map<String, dynamic> json) {
  return _Backup.fromJson(json);
}

/// @nodoc
mixin _$Backup {
  List<Pearl> get pearls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BackupCopyWith<Backup> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackupCopyWith<$Res> {
  factory $BackupCopyWith(Backup value, $Res Function(Backup) then) =
      _$BackupCopyWithImpl<$Res, Backup>;
  @useResult
  $Res call({List<Pearl> pearls});
}

/// @nodoc
class _$BackupCopyWithImpl<$Res, $Val extends Backup>
    implements $BackupCopyWith<$Res> {
  _$BackupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pearls = null,
  }) {
    return _then(_value.copyWith(
      pearls: null == pearls
          ? _value.pearls
          : pearls // ignore: cast_nullable_to_non_nullable
              as List<Pearl>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BackupImplCopyWith<$Res> implements $BackupCopyWith<$Res> {
  factory _$$BackupImplCopyWith(
          _$BackupImpl value, $Res Function(_$BackupImpl) then) =
      __$$BackupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pearl> pearls});
}

/// @nodoc
class __$$BackupImplCopyWithImpl<$Res>
    extends _$BackupCopyWithImpl<$Res, _$BackupImpl>
    implements _$$BackupImplCopyWith<$Res> {
  __$$BackupImplCopyWithImpl(
      _$BackupImpl _value, $Res Function(_$BackupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pearls = null,
  }) {
    return _then(_$BackupImpl(
      pearls: null == pearls
          ? _value._pearls
          : pearls // ignore: cast_nullable_to_non_nullable
              as List<Pearl>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackupImpl implements _Backup {
  const _$BackupImpl({final List<Pearl> pearls = const <Pearl>[]})
      : _pearls = pearls;

  factory _$BackupImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackupImplFromJson(json);

  final List<Pearl> _pearls;
  @override
  @JsonKey()
  List<Pearl> get pearls {
    if (_pearls is EqualUnmodifiableListView) return _pearls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pearls);
  }

  @override
  String toString() {
    return 'Backup(pearls: $pearls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackupImpl &&
            const DeepCollectionEquality().equals(other._pearls, _pearls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pearls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BackupImplCopyWith<_$BackupImpl> get copyWith =>
      __$$BackupImplCopyWithImpl<_$BackupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BackupImplToJson(
      this,
    );
  }
}

abstract class _Backup implements Backup {
  const factory _Backup({final List<Pearl> pearls}) = _$BackupImpl;

  factory _Backup.fromJson(Map<String, dynamic> json) = _$BackupImpl.fromJson;

  @override
  List<Pearl> get pearls;
  @override
  @JsonKey(ignore: true)
  _$$BackupImplCopyWith<_$BackupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
