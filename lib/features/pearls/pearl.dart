import 'dart:convert';

import 'package:fcps_pearls/main.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pearl.freezed.dart';
part 'pearl.g.dart';

final pearlsRM = PearlsRM();

class PearlsRM {
  final pearlsRM = RM.inject(
    () => Pearls(),
    persist: () => PersistState(
      key: 'pearls',
      toJson: (s) => jsonEncode(
        s.toJson(),
      ),
      fromJson: (json) => Pearls.fromJson(
        jsonDecode(json),
      ),
    ),
  );
  Pearls call([Pearls? _pearls]) {
    if (_pearls != null) pearls = _pearls;
    return pearls;
  }

  Pearls get pearls => pearlsRM.state;
  set pearls(Pearls _pearls) => pearlsRM.state = _pearls;

  List<Pearl> get listOfPearls => pearls.pearlsCache.values.toList();
  Map<String, Pearl> get mapOfPearls => pearls.pearlsCache;

  void addPearl(Pearl pearl) {
    loading();
    call(pearls.copyWith(pearlsCache: Map.of(mapOfPearls)..[pearl.id] = pearl));
    success();
  }

  void removePearl(Pearl pearl) {
    loading();
    call(pearls.copyWith(pearlsCache: Map.of(mapOfPearls)..remove(pearl.id)));
    success();
  }

  void removeAllPearls() {
    loading();
    call(pearls.copyWith(pearlsCache: {}));
    success();
  }

  void loading() {
    call(pearls.copyWith(loading: true));
  }

  void success() {
    call(pearls.copyWith(loading: false));
  }
}

@freezed
class Pearl with _$Pearl {
  const factory Pearl({
    @Default('') final String id,
    @Default('') final String statement,
    @Default('') final String answer,
    @Default('') final String explanation,
  }) = _Pearl;

  factory Pearl.fromJson(json) => _$PearlFromJson(json);
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
