// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pearl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pearl _$PearlFromJson(Map<String, dynamic> json) {
  return _Pearl.fromJson(json);
}

/// @nodoc
mixin _$Pearl {
  String get id => throw _privateConstructorUsedError;
  String get statement => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  String get explaination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PearlCopyWith<Pearl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PearlCopyWith<$Res> {
  factory $PearlCopyWith(Pearl value, $Res Function(Pearl) then) =
      _$PearlCopyWithImpl<$Res, Pearl>;
  @useResult
  $Res call({String id, String statement, String answer, String explaination});
}

/// @nodoc
class _$PearlCopyWithImpl<$Res, $Val extends Pearl>
    implements $PearlCopyWith<$Res> {
  _$PearlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? statement = null,
    Object? answer = null,
    Object? explaination = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      statement: null == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      explaination: null == explaination
          ? _value.explaination
          : explaination // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PearlImplCopyWith<$Res> implements $PearlCopyWith<$Res> {
  factory _$$PearlImplCopyWith(
          _$PearlImpl value, $Res Function(_$PearlImpl) then) =
      __$$PearlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String statement, String answer, String explaination});
}

/// @nodoc
class __$$PearlImplCopyWithImpl<$Res>
    extends _$PearlCopyWithImpl<$Res, _$PearlImpl>
    implements _$$PearlImplCopyWith<$Res> {
  __$$PearlImplCopyWithImpl(
      _$PearlImpl _value, $Res Function(_$PearlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? statement = null,
    Object? answer = null,
    Object? explaination = null,
  }) {
    return _then(_$PearlImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      statement: null == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      explaination: null == explaination
          ? _value.explaination
          : explaination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PearlImpl implements _Pearl {
  const _$PearlImpl(
      {this.id = '',
      this.statement = '',
      this.answer = '',
      this.explaination = ''});

  factory _$PearlImpl.fromJson(Map<String, dynamic> json) =>
      _$$PearlImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String statement;
  @override
  @JsonKey()
  final String answer;
  @override
  @JsonKey()
  final String explaination;

  @override
  String toString() {
    return 'Pearl(id: $id, statement: $statement, answer: $answer, explaination: $explaination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PearlImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.statement, statement) ||
                other.statement == statement) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.explaination, explaination) ||
                other.explaination == explaination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, statement, answer, explaination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PearlImplCopyWith<_$PearlImpl> get copyWith =>
      __$$PearlImplCopyWithImpl<_$PearlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PearlImplToJson(
      this,
    );
  }
}

abstract class _Pearl implements Pearl {
  const factory _Pearl(
      {final String id,
      final String statement,
      final String answer,
      final String explaination}) = _$PearlImpl;

  factory _Pearl.fromJson(Map<String, dynamic> json) = _$PearlImpl.fromJson;

  @override
  String get id;
  @override
  String get statement;
  @override
  String get answer;
  @override
  String get explaination;
  @override
  @JsonKey(ignore: true)
  _$$PearlImplCopyWith<_$PearlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pearls _$PearlsFromJson(Map<String, dynamic> json) {
  return _Pearls.fromJson(json);
}

/// @nodoc
mixin _$Pearls {
  Map<String, Pearl> get pearlsCache => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PearlsCopyWith<Pearls> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PearlsCopyWith<$Res> {
  factory $PearlsCopyWith(Pearls value, $Res Function(Pearls) then) =
      _$PearlsCopyWithImpl<$Res, Pearls>;
  @useResult
  $Res call({Map<String, Pearl> pearlsCache, bool loading});
}

/// @nodoc
class _$PearlsCopyWithImpl<$Res, $Val extends Pearls>
    implements $PearlsCopyWith<$Res> {
  _$PearlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pearlsCache = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      pearlsCache: null == pearlsCache
          ? _value.pearlsCache
          : pearlsCache // ignore: cast_nullable_to_non_nullable
              as Map<String, Pearl>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PearlsImplCopyWith<$Res> implements $PearlsCopyWith<$Res> {
  factory _$$PearlsImplCopyWith(
          _$PearlsImpl value, $Res Function(_$PearlsImpl) then) =
      __$$PearlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, Pearl> pearlsCache, bool loading});
}

/// @nodoc
class __$$PearlsImplCopyWithImpl<$Res>
    extends _$PearlsCopyWithImpl<$Res, _$PearlsImpl>
    implements _$$PearlsImplCopyWith<$Res> {
  __$$PearlsImplCopyWithImpl(
      _$PearlsImpl _value, $Res Function(_$PearlsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pearlsCache = null,
    Object? loading = null,
  }) {
    return _then(_$PearlsImpl(
      pearlsCache: null == pearlsCache
          ? _value._pearlsCache
          : pearlsCache // ignore: cast_nullable_to_non_nullable
              as Map<String, Pearl>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PearlsImpl extends _Pearls {
  const _$PearlsImpl(
      {final Map<String, Pearl> pearlsCache = const <String, Pearl>{},
      this.loading = false})
      : _pearlsCache = pearlsCache,
        super._();

  factory _$PearlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PearlsImplFromJson(json);

  final Map<String, Pearl> _pearlsCache;
  @override
  @JsonKey()
  Map<String, Pearl> get pearlsCache {
    if (_pearlsCache is EqualUnmodifiableMapView) return _pearlsCache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_pearlsCache);
  }

  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'Pearls(pearlsCache: $pearlsCache, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PearlsImpl &&
            const DeepCollectionEquality()
                .equals(other._pearlsCache, _pearlsCache) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pearlsCache), loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PearlsImplCopyWith<_$PearlsImpl> get copyWith =>
      __$$PearlsImplCopyWithImpl<_$PearlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PearlsImplToJson(
      this,
    );
  }
}

abstract class _Pearls extends Pearls {
  const factory _Pearls(
      {final Map<String, Pearl> pearlsCache,
      final bool loading}) = _$PearlsImpl;
  const _Pearls._() : super._();

  factory _Pearls.fromJson(Map<String, dynamic> json) = _$PearlsImpl.fromJson;

  @override
  Map<String, Pearl> get pearlsCache;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$PearlsImplCopyWith<_$PearlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PearlsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pearl pearl) add,
    required TResult Function(String id) remove,
    required TResult Function() removeAll,
    required TResult Function() loading,
    required TResult Function() importFromFile,
    required TResult Function() exportToFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Pearl pearl)? add,
    TResult? Function(String id)? remove,
    TResult? Function()? removeAll,
    TResult? Function()? loading,
    TResult? Function()? importFromFile,
    TResult? Function()? exportToFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pearl pearl)? add,
    TResult Function(String id)? remove,
    TResult Function()? removeAll,
    TResult Function()? loading,
    TResult Function()? importFromFile,
    TResult Function()? exportToFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PearlsEventAdd value) add,
    required TResult Function(_PearlsEventRemove value) remove,
    required TResult Function(_PearlsEventRemoveAll value) removeAll,
    required TResult Function(_PearlsEventLoading value) loading,
    required TResult Function(_PearlsEventImport value) importFromFile,
    required TResult Function(_PearlsEventExport value) exportToFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PearlsEventAdd value)? add,
    TResult? Function(_PearlsEventRemove value)? remove,
    TResult? Function(_PearlsEventRemoveAll value)? removeAll,
    TResult? Function(_PearlsEventLoading value)? loading,
    TResult? Function(_PearlsEventImport value)? importFromFile,
    TResult? Function(_PearlsEventExport value)? exportToFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PearlsEventAdd value)? add,
    TResult Function(_PearlsEventRemove value)? remove,
    TResult Function(_PearlsEventRemoveAll value)? removeAll,
    TResult Function(_PearlsEventLoading value)? loading,
    TResult Function(_PearlsEventImport value)? importFromFile,
    TResult Function(_PearlsEventExport value)? exportToFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PearlsEventCopyWith<$Res> {
  factory $PearlsEventCopyWith(
          PearlsEvent value, $Res Function(PearlsEvent) then) =
      _$PearlsEventCopyWithImpl<$Res, PearlsEvent>;
}

/// @nodoc
class _$PearlsEventCopyWithImpl<$Res, $Val extends PearlsEvent>
    implements $PearlsEventCopyWith<$Res> {
  _$PearlsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PearlsEventAddImplCopyWith<$Res> {
  factory _$$PearlsEventAddImplCopyWith(_$PearlsEventAddImpl value,
          $Res Function(_$PearlsEventAddImpl) then) =
      __$$PearlsEventAddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Pearl pearl});

  $PearlCopyWith<$Res> get pearl;
}

/// @nodoc
class __$$PearlsEventAddImplCopyWithImpl<$Res>
    extends _$PearlsEventCopyWithImpl<$Res, _$PearlsEventAddImpl>
    implements _$$PearlsEventAddImplCopyWith<$Res> {
  __$$PearlsEventAddImplCopyWithImpl(
      _$PearlsEventAddImpl _value, $Res Function(_$PearlsEventAddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pearl = null,
  }) {
    return _then(_$PearlsEventAddImpl(
      null == pearl
          ? _value.pearl
          : pearl // ignore: cast_nullable_to_non_nullable
              as Pearl,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PearlCopyWith<$Res> get pearl {
    return $PearlCopyWith<$Res>(_value.pearl, (value) {
      return _then(_value.copyWith(pearl: value));
    });
  }
}

/// @nodoc

class _$PearlsEventAddImpl implements _PearlsEventAdd {
  const _$PearlsEventAddImpl(this.pearl);

  @override
  final Pearl pearl;

  @override
  String toString() {
    return 'PearlsEvent.add(pearl: $pearl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PearlsEventAddImpl &&
            (identical(other.pearl, pearl) || other.pearl == pearl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pearl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PearlsEventAddImplCopyWith<_$PearlsEventAddImpl> get copyWith =>
      __$$PearlsEventAddImplCopyWithImpl<_$PearlsEventAddImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pearl pearl) add,
    required TResult Function(String id) remove,
    required TResult Function() removeAll,
    required TResult Function() loading,
    required TResult Function() importFromFile,
    required TResult Function() exportToFile,
  }) {
    return add(pearl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Pearl pearl)? add,
    TResult? Function(String id)? remove,
    TResult? Function()? removeAll,
    TResult? Function()? loading,
    TResult? Function()? importFromFile,
    TResult? Function()? exportToFile,
  }) {
    return add?.call(pearl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pearl pearl)? add,
    TResult Function(String id)? remove,
    TResult Function()? removeAll,
    TResult Function()? loading,
    TResult Function()? importFromFile,
    TResult Function()? exportToFile,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(pearl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PearlsEventAdd value) add,
    required TResult Function(_PearlsEventRemove value) remove,
    required TResult Function(_PearlsEventRemoveAll value) removeAll,
    required TResult Function(_PearlsEventLoading value) loading,
    required TResult Function(_PearlsEventImport value) importFromFile,
    required TResult Function(_PearlsEventExport value) exportToFile,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PearlsEventAdd value)? add,
    TResult? Function(_PearlsEventRemove value)? remove,
    TResult? Function(_PearlsEventRemoveAll value)? removeAll,
    TResult? Function(_PearlsEventLoading value)? loading,
    TResult? Function(_PearlsEventImport value)? importFromFile,
    TResult? Function(_PearlsEventExport value)? exportToFile,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PearlsEventAdd value)? add,
    TResult Function(_PearlsEventRemove value)? remove,
    TResult Function(_PearlsEventRemoveAll value)? removeAll,
    TResult Function(_PearlsEventLoading value)? loading,
    TResult Function(_PearlsEventImport value)? importFromFile,
    TResult Function(_PearlsEventExport value)? exportToFile,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _PearlsEventAdd implements PearlsEvent {
  const factory _PearlsEventAdd(final Pearl pearl) = _$PearlsEventAddImpl;

  Pearl get pearl;
  @JsonKey(ignore: true)
  _$$PearlsEventAddImplCopyWith<_$PearlsEventAddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PearlsEventRemoveImplCopyWith<$Res> {
  factory _$$PearlsEventRemoveImplCopyWith(_$PearlsEventRemoveImpl value,
          $Res Function(_$PearlsEventRemoveImpl) then) =
      __$$PearlsEventRemoveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$PearlsEventRemoveImplCopyWithImpl<$Res>
    extends _$PearlsEventCopyWithImpl<$Res, _$PearlsEventRemoveImpl>
    implements _$$PearlsEventRemoveImplCopyWith<$Res> {
  __$$PearlsEventRemoveImplCopyWithImpl(_$PearlsEventRemoveImpl _value,
      $Res Function(_$PearlsEventRemoveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$PearlsEventRemoveImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PearlsEventRemoveImpl implements _PearlsEventRemove {
  const _$PearlsEventRemoveImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'PearlsEvent.remove(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PearlsEventRemoveImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PearlsEventRemoveImplCopyWith<_$PearlsEventRemoveImpl> get copyWith =>
      __$$PearlsEventRemoveImplCopyWithImpl<_$PearlsEventRemoveImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pearl pearl) add,
    required TResult Function(String id) remove,
    required TResult Function() removeAll,
    required TResult Function() loading,
    required TResult Function() importFromFile,
    required TResult Function() exportToFile,
  }) {
    return remove(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Pearl pearl)? add,
    TResult? Function(String id)? remove,
    TResult? Function()? removeAll,
    TResult? Function()? loading,
    TResult? Function()? importFromFile,
    TResult? Function()? exportToFile,
  }) {
    return remove?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pearl pearl)? add,
    TResult Function(String id)? remove,
    TResult Function()? removeAll,
    TResult Function()? loading,
    TResult Function()? importFromFile,
    TResult Function()? exportToFile,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PearlsEventAdd value) add,
    required TResult Function(_PearlsEventRemove value) remove,
    required TResult Function(_PearlsEventRemoveAll value) removeAll,
    required TResult Function(_PearlsEventLoading value) loading,
    required TResult Function(_PearlsEventImport value) importFromFile,
    required TResult Function(_PearlsEventExport value) exportToFile,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PearlsEventAdd value)? add,
    TResult? Function(_PearlsEventRemove value)? remove,
    TResult? Function(_PearlsEventRemoveAll value)? removeAll,
    TResult? Function(_PearlsEventLoading value)? loading,
    TResult? Function(_PearlsEventImport value)? importFromFile,
    TResult? Function(_PearlsEventExport value)? exportToFile,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PearlsEventAdd value)? add,
    TResult Function(_PearlsEventRemove value)? remove,
    TResult Function(_PearlsEventRemoveAll value)? removeAll,
    TResult Function(_PearlsEventLoading value)? loading,
    TResult Function(_PearlsEventImport value)? importFromFile,
    TResult Function(_PearlsEventExport value)? exportToFile,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _PearlsEventRemove implements PearlsEvent {
  const factory _PearlsEventRemove(final String id) = _$PearlsEventRemoveImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$PearlsEventRemoveImplCopyWith<_$PearlsEventRemoveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PearlsEventRemoveAllImplCopyWith<$Res> {
  factory _$$PearlsEventRemoveAllImplCopyWith(_$PearlsEventRemoveAllImpl value,
          $Res Function(_$PearlsEventRemoveAllImpl) then) =
      __$$PearlsEventRemoveAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PearlsEventRemoveAllImplCopyWithImpl<$Res>
    extends _$PearlsEventCopyWithImpl<$Res, _$PearlsEventRemoveAllImpl>
    implements _$$PearlsEventRemoveAllImplCopyWith<$Res> {
  __$$PearlsEventRemoveAllImplCopyWithImpl(_$PearlsEventRemoveAllImpl _value,
      $Res Function(_$PearlsEventRemoveAllImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PearlsEventRemoveAllImpl implements _PearlsEventRemoveAll {
  const _$PearlsEventRemoveAllImpl();

  @override
  String toString() {
    return 'PearlsEvent.removeAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PearlsEventRemoveAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pearl pearl) add,
    required TResult Function(String id) remove,
    required TResult Function() removeAll,
    required TResult Function() loading,
    required TResult Function() importFromFile,
    required TResult Function() exportToFile,
  }) {
    return removeAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Pearl pearl)? add,
    TResult? Function(String id)? remove,
    TResult? Function()? removeAll,
    TResult? Function()? loading,
    TResult? Function()? importFromFile,
    TResult? Function()? exportToFile,
  }) {
    return removeAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pearl pearl)? add,
    TResult Function(String id)? remove,
    TResult Function()? removeAll,
    TResult Function()? loading,
    TResult Function()? importFromFile,
    TResult Function()? exportToFile,
    required TResult orElse(),
  }) {
    if (removeAll != null) {
      return removeAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PearlsEventAdd value) add,
    required TResult Function(_PearlsEventRemove value) remove,
    required TResult Function(_PearlsEventRemoveAll value) removeAll,
    required TResult Function(_PearlsEventLoading value) loading,
    required TResult Function(_PearlsEventImport value) importFromFile,
    required TResult Function(_PearlsEventExport value) exportToFile,
  }) {
    return removeAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PearlsEventAdd value)? add,
    TResult? Function(_PearlsEventRemove value)? remove,
    TResult? Function(_PearlsEventRemoveAll value)? removeAll,
    TResult? Function(_PearlsEventLoading value)? loading,
    TResult? Function(_PearlsEventImport value)? importFromFile,
    TResult? Function(_PearlsEventExport value)? exportToFile,
  }) {
    return removeAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PearlsEventAdd value)? add,
    TResult Function(_PearlsEventRemove value)? remove,
    TResult Function(_PearlsEventRemoveAll value)? removeAll,
    TResult Function(_PearlsEventLoading value)? loading,
    TResult Function(_PearlsEventImport value)? importFromFile,
    TResult Function(_PearlsEventExport value)? exportToFile,
    required TResult orElse(),
  }) {
    if (removeAll != null) {
      return removeAll(this);
    }
    return orElse();
  }
}

abstract class _PearlsEventRemoveAll implements PearlsEvent {
  const factory _PearlsEventRemoveAll() = _$PearlsEventRemoveAllImpl;
}

/// @nodoc
abstract class _$$PearlsEventLoadingImplCopyWith<$Res> {
  factory _$$PearlsEventLoadingImplCopyWith(_$PearlsEventLoadingImpl value,
          $Res Function(_$PearlsEventLoadingImpl) then) =
      __$$PearlsEventLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PearlsEventLoadingImplCopyWithImpl<$Res>
    extends _$PearlsEventCopyWithImpl<$Res, _$PearlsEventLoadingImpl>
    implements _$$PearlsEventLoadingImplCopyWith<$Res> {
  __$$PearlsEventLoadingImplCopyWithImpl(_$PearlsEventLoadingImpl _value,
      $Res Function(_$PearlsEventLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PearlsEventLoadingImpl implements _PearlsEventLoading {
  const _$PearlsEventLoadingImpl();

  @override
  String toString() {
    return 'PearlsEvent.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PearlsEventLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pearl pearl) add,
    required TResult Function(String id) remove,
    required TResult Function() removeAll,
    required TResult Function() loading,
    required TResult Function() importFromFile,
    required TResult Function() exportToFile,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Pearl pearl)? add,
    TResult? Function(String id)? remove,
    TResult? Function()? removeAll,
    TResult? Function()? loading,
    TResult? Function()? importFromFile,
    TResult? Function()? exportToFile,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pearl pearl)? add,
    TResult Function(String id)? remove,
    TResult Function()? removeAll,
    TResult Function()? loading,
    TResult Function()? importFromFile,
    TResult Function()? exportToFile,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PearlsEventAdd value) add,
    required TResult Function(_PearlsEventRemove value) remove,
    required TResult Function(_PearlsEventRemoveAll value) removeAll,
    required TResult Function(_PearlsEventLoading value) loading,
    required TResult Function(_PearlsEventImport value) importFromFile,
    required TResult Function(_PearlsEventExport value) exportToFile,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PearlsEventAdd value)? add,
    TResult? Function(_PearlsEventRemove value)? remove,
    TResult? Function(_PearlsEventRemoveAll value)? removeAll,
    TResult? Function(_PearlsEventLoading value)? loading,
    TResult? Function(_PearlsEventImport value)? importFromFile,
    TResult? Function(_PearlsEventExport value)? exportToFile,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PearlsEventAdd value)? add,
    TResult Function(_PearlsEventRemove value)? remove,
    TResult Function(_PearlsEventRemoveAll value)? removeAll,
    TResult Function(_PearlsEventLoading value)? loading,
    TResult Function(_PearlsEventImport value)? importFromFile,
    TResult Function(_PearlsEventExport value)? exportToFile,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PearlsEventLoading implements PearlsEvent {
  const factory _PearlsEventLoading() = _$PearlsEventLoadingImpl;
}

/// @nodoc
abstract class _$$PearlsEventImportImplCopyWith<$Res> {
  factory _$$PearlsEventImportImplCopyWith(_$PearlsEventImportImpl value,
          $Res Function(_$PearlsEventImportImpl) then) =
      __$$PearlsEventImportImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PearlsEventImportImplCopyWithImpl<$Res>
    extends _$PearlsEventCopyWithImpl<$Res, _$PearlsEventImportImpl>
    implements _$$PearlsEventImportImplCopyWith<$Res> {
  __$$PearlsEventImportImplCopyWithImpl(_$PearlsEventImportImpl _value,
      $Res Function(_$PearlsEventImportImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PearlsEventImportImpl implements _PearlsEventImport {
  const _$PearlsEventImportImpl();

  @override
  String toString() {
    return 'PearlsEvent.importFromFile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PearlsEventImportImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pearl pearl) add,
    required TResult Function(String id) remove,
    required TResult Function() removeAll,
    required TResult Function() loading,
    required TResult Function() importFromFile,
    required TResult Function() exportToFile,
  }) {
    return importFromFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Pearl pearl)? add,
    TResult? Function(String id)? remove,
    TResult? Function()? removeAll,
    TResult? Function()? loading,
    TResult? Function()? importFromFile,
    TResult? Function()? exportToFile,
  }) {
    return importFromFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pearl pearl)? add,
    TResult Function(String id)? remove,
    TResult Function()? removeAll,
    TResult Function()? loading,
    TResult Function()? importFromFile,
    TResult Function()? exportToFile,
    required TResult orElse(),
  }) {
    if (importFromFile != null) {
      return importFromFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PearlsEventAdd value) add,
    required TResult Function(_PearlsEventRemove value) remove,
    required TResult Function(_PearlsEventRemoveAll value) removeAll,
    required TResult Function(_PearlsEventLoading value) loading,
    required TResult Function(_PearlsEventImport value) importFromFile,
    required TResult Function(_PearlsEventExport value) exportToFile,
  }) {
    return importFromFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PearlsEventAdd value)? add,
    TResult? Function(_PearlsEventRemove value)? remove,
    TResult? Function(_PearlsEventRemoveAll value)? removeAll,
    TResult? Function(_PearlsEventLoading value)? loading,
    TResult? Function(_PearlsEventImport value)? importFromFile,
    TResult? Function(_PearlsEventExport value)? exportToFile,
  }) {
    return importFromFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PearlsEventAdd value)? add,
    TResult Function(_PearlsEventRemove value)? remove,
    TResult Function(_PearlsEventRemoveAll value)? removeAll,
    TResult Function(_PearlsEventLoading value)? loading,
    TResult Function(_PearlsEventImport value)? importFromFile,
    TResult Function(_PearlsEventExport value)? exportToFile,
    required TResult orElse(),
  }) {
    if (importFromFile != null) {
      return importFromFile(this);
    }
    return orElse();
  }
}

abstract class _PearlsEventImport implements PearlsEvent {
  const factory _PearlsEventImport() = _$PearlsEventImportImpl;
}

/// @nodoc
abstract class _$$PearlsEventExportImplCopyWith<$Res> {
  factory _$$PearlsEventExportImplCopyWith(_$PearlsEventExportImpl value,
          $Res Function(_$PearlsEventExportImpl) then) =
      __$$PearlsEventExportImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PearlsEventExportImplCopyWithImpl<$Res>
    extends _$PearlsEventCopyWithImpl<$Res, _$PearlsEventExportImpl>
    implements _$$PearlsEventExportImplCopyWith<$Res> {
  __$$PearlsEventExportImplCopyWithImpl(_$PearlsEventExportImpl _value,
      $Res Function(_$PearlsEventExportImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PearlsEventExportImpl implements _PearlsEventExport {
  const _$PearlsEventExportImpl();

  @override
  String toString() {
    return 'PearlsEvent.exportToFile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PearlsEventExportImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Pearl pearl) add,
    required TResult Function(String id) remove,
    required TResult Function() removeAll,
    required TResult Function() loading,
    required TResult Function() importFromFile,
    required TResult Function() exportToFile,
  }) {
    return exportToFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Pearl pearl)? add,
    TResult? Function(String id)? remove,
    TResult? Function()? removeAll,
    TResult? Function()? loading,
    TResult? Function()? importFromFile,
    TResult? Function()? exportToFile,
  }) {
    return exportToFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Pearl pearl)? add,
    TResult Function(String id)? remove,
    TResult Function()? removeAll,
    TResult Function()? loading,
    TResult Function()? importFromFile,
    TResult Function()? exportToFile,
    required TResult orElse(),
  }) {
    if (exportToFile != null) {
      return exportToFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PearlsEventAdd value) add,
    required TResult Function(_PearlsEventRemove value) remove,
    required TResult Function(_PearlsEventRemoveAll value) removeAll,
    required TResult Function(_PearlsEventLoading value) loading,
    required TResult Function(_PearlsEventImport value) importFromFile,
    required TResult Function(_PearlsEventExport value) exportToFile,
  }) {
    return exportToFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PearlsEventAdd value)? add,
    TResult? Function(_PearlsEventRemove value)? remove,
    TResult? Function(_PearlsEventRemoveAll value)? removeAll,
    TResult? Function(_PearlsEventLoading value)? loading,
    TResult? Function(_PearlsEventImport value)? importFromFile,
    TResult? Function(_PearlsEventExport value)? exportToFile,
  }) {
    return exportToFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PearlsEventAdd value)? add,
    TResult Function(_PearlsEventRemove value)? remove,
    TResult Function(_PearlsEventRemoveAll value)? removeAll,
    TResult Function(_PearlsEventLoading value)? loading,
    TResult Function(_PearlsEventImport value)? importFromFile,
    TResult Function(_PearlsEventExport value)? exportToFile,
    required TResult orElse(),
  }) {
    if (exportToFile != null) {
      return exportToFile(this);
    }
    return orElse();
  }
}

abstract class _PearlsEventExport implements PearlsEvent {
  const factory _PearlsEventExport() = _$PearlsEventExportImpl;
}
