// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'pearl.freezed.dart';
part 'pearl.g.dart';

class PearlsBloc extends HydratedBloc<PearlsEvent, Pearls> {
  final BuildContext context;
  PearlsBloc(
    this.context,
  ) : super(Pearls()) {
    on<_PearlsEventAdd>(_pearlEventAdd);
    on<_PearlsEventRemove>(_pearlEventRemove);
    on<_PearlsEventRemoveAll>(_pearlEventRemoveAll);
    on<_PearlsEventLoading>(_pearlEventLoading);
  }

  @override
  Pearls? fromJson(Map<String, dynamic> json) => Pearls.fromJson(json);

  @override
  Map<String, dynamic>? toJson(Pearls state) => state.toJson();

  FutureOr<void> _pearlEventAdd(
    _PearlsEventAdd event,
    Emitter<Pearls> emit,
  ) {
    emit(
      Pearls(loading: true),
    );
    emit(
      state.copyWith(
        pearlsCache: Map.of(state.pearlsCache)..[event.pearl.id] = event.pearl,
      ),
    );
    emit(
      Pearls(loading: false),
    );
  }

  FutureOr<void> _pearlEventRemove(
    _PearlsEventRemove event,
    Emitter<Pearls> emit,
  ) {
    emit(
      Pearls(loading: true),
    );
    emit(
      state.copyWith(
        pearlsCache: Map.of(state.pearlsCache)..remove(event.id),
      ),
    );
    emit(
      Pearls(loading: false),
    );
  }

  FutureOr<void> _pearlEventRemoveAll(
    _PearlsEventRemoveAll event,
    Emitter<Pearls> emit,
  ) {
    emit(
      Pearls(loading: true),
    );
    emit(
      state.copyWith(
        pearlsCache: {},
      ),
    );
    emit(
      Pearls(loading: false),
    );
  }

  FutureOr<void> _pearlEventLoading(
    _PearlsEventLoading event,
    Emitter<Pearls> emit,
  ) {
    emit(state.copyWith(loading: true));
  }
}

@freezed
class Pearl with _$Pearl {
  const factory Pearl({
    @Default('') final String id,
    @Default('') final String statement,
    @Default('') final String answer,
    @Default('') final String explaination,
  }) = _Pearl;

  factory Pearl.fromJson(json) => _$PearlFromJson(json);
  // factory Pearl.pearl(String id) => pearlsManager.pearl(id);
}

@freezed
class Pearls with _$Pearls {
  const factory Pearls({
    @Default(<String, Pearl>{}) final Map<String, Pearl> pearlsCache,
    @Default(false) final bool loading,
  }) = _Pearls;
  const Pearls._();

  factory Pearls.fromJson(json) => _$PearlsFromJson(json);
  int get length => pearlsCache.length;
}

@freezed
class PearlsEvent with _$PearlsEvent {
  const factory PearlsEvent.add(Pearl pearl) = _PearlsEventAdd;
  const factory PearlsEvent.remove(String id) = _PearlsEventRemove;
  const factory PearlsEvent.removeAll() = _PearlsEventRemoveAll;
  const factory PearlsEvent.loading() = _PearlsEventLoading;
}
