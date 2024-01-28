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
    // exportToFile();
  }

  void removePearl(Pearl pearl) {
    call(pearls.copyWith(pearlsCache: Map.of(mapOfPearls)..remove(pearl.id)));
  }

  void removeAllPearls() {
    call(pearls.copyWith(pearlsCache: {}));
  }

  void loading() {
    call(pearls.copyWith(loading: true));
  }

  void success() {
    call(pearls.copyWith(loading: false));
  }

  // void exportToFile() async {
  //   loading();
  //   final json = call().toJson();
  //   final str = jsonEncode(json);
  //   final string = File('path');
  //   await Future.delayed(20.milliseconds);
  //   success();
  //   string.writeAsStringSync(str);
  // }

  // Pearls importFromFile() {
  //   loading();
  //   final string = File('path');
  //   final json = jsonDecode(string.readAsStringSync());
  //   final pearls = Pearls.fromJson(json);
  //   print(pearls);
  //   success();
  //   return pearls;
  // }
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
  const factory PearlsEvent.importFromFile() = _PearlsEventImport;
  const factory PearlsEvent.exportToFile() = _PearlsEventExport;
}
