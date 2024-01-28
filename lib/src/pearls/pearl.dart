import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

part 'pearl.freezed.dart';
part 'pearl.g.dart';

final pearlsManager = PearlsManager();

class PearlsManager {
  final pearlsRM = RM.inject(
    Pearls.new,
    persist: () => PersistState(
      key: 'pearls',
      fromJson: (json) => Pearls.fromJson(jsonDecode(json)),
      toJson: (s) => jsonEncode(s),
    ),
  );
  Pearls get pearls => pearlsRM.state;
  set pearls(Pearls _) => pearlsRM.state = _;
  List<Pearl> get listOfPearls => pearls.pearlsCache;
  set listOfPearls(List<Pearl> _) => pearls = pearls.copyWith(pearlsCache: _);

  void addPearl(Pearl pearl) {
    listOfPearls = List.of(listOfPearls)..add(pearl);
  }

  void removePearl(Pearl pearl) {
    listOfPearls = List.of(listOfPearls)..remove(pearl);
  }

  Pearl pearl(String id) =>
      listOfPearls.firstWhere((element) => element.id == id);
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
  factory Pearl.pearl(String id) => pearlsManager.pearl(id);
}

@freezed
class Pearls with _$Pearls {
  const factory Pearls({
    @Default(<Pearl>[]) final List<Pearl> pearlsCache,
  }) = _Pearls;

  factory Pearls.fromJson(json) => _$PearlsFromJson(json);
}
