import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:fcps_pearls_client/fcps_pearls_client.dart';
import 'package:fcps_pearls_flutter/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PearlsBloc extends Bloc<PearlsEvent, PearlsState> {
  PearlsBloc() : super(PearlsState()) {
    on<PearlsEventLoad>(_pearlsEventLoad);
    on<AddPearlsEvent>(_addPearlsEvent);
    on<RemovePearlsEvent>(_removePearlsEvent);
  }

  FutureOr<void> _pearlsEventLoad(
    PearlsEventLoad event,
    Emitter<PearlsState> emit,
  ) async {
    emit(state.copyWith(loading: true));
    try {
      final pearls = await client.pearls.getPearls();
      emit(
        state.copyWith(
          pearls: pearls,
          loading: false,
        ),
      );
    } catch (e) {
      print(e);
    }
  }

  FutureOr<void> _addPearlsEvent(
    AddPearlsEvent event,
    Emitter<PearlsState> emit,
  ) async {
    emit(state.copyWith(loading: true));
    await client.pearls.addOrUpdatePearl(event.pearl);
    add(PearlsEventLoad());
  }

  FutureOr<void> _removePearlsEvent(
    RemovePearlsEvent event,
    Emitter<PearlsState> emit,
  ) async {
    emit(state.copyWith(loading: true));
    await client.pearls.deletePearl(event.pearl.id);
    add(PearlsEventLoad());
  }
}

class PearlsState extends Equatable {
  final List<Pearl> pearls;
  final bool loading;

  const PearlsState({
    this.pearls = const [],
    this.loading = false,
  });
  PearlsState copyWith({
    List<Pearl>? pearls,
    bool? loading,
  }) {
    return PearlsState(
      pearls: pearls ?? this.pearls,
      loading: loading ?? this.loading,
    );
  }

  @override
  List<Object> get props => [pearls, loading];
}

class PearlsEvent {}

class PearlsEventLoad extends PearlsEvent {}

class AddPearlsEvent extends PearlsEvent {
  final Pearl pearl;
  AddPearlsEvent(this.pearl);
}

class RemovePearlsEvent extends PearlsEvent {
  final Pearl pearl;
  RemovePearlsEvent(this.pearl);
}
