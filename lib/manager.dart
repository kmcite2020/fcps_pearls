// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:states_rebuilder/scr/state_management/rm.dart';

// Created<T> create<T>(
//   T Function() creator, {
//   T? initialState,
// }) =>
//     Created(
//       creator: creator,
//       initialState: initialState,
//       autoDisposeWhenNotUsed: false,
//       stateInterceptorGlobal: null,
//     );

class Created<T> extends ReactiveModelImp<T> {
  Created({
    required super.creator,
    super.initialState,
    required super.autoDisposeWhenNotUsed,
    super.stateInterceptorGlobal,
  });
  T call([T? newState]) {
    if (newState != null) state = newState;
    return state;
  }
}

extension CreatedExtensions<T> on T {
  Created<T> get obs => Created<T>(
        creator: () => this,
        autoDisposeWhenNotUsed: false,
      );
}
