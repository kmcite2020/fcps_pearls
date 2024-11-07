import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

String get randomId => Uuid().v8();

extension Many on BuildContext {
  T of<T extends StateStreamableSource>() {
    try {
      return BlocProvider.of<T>(this, listen: true);
    } catch (e) {
      return BlocProvider.of<T>(this, listen: false);
    }
  }

  Future<T?> push<T extends Object?>(Route<T> route) =>
      Navigator.of(this).push(route);

  Future<T?> pushReplacement<T extends Object?>(Route<T> route) =>
      Navigator.of(this).pushReplacement(route);

  Future<T?> pushNamed<T extends Object?, TO extends Object?>(
    String routeName, [
    TO? arguments,
  ]) =>
      Navigator.of(this).pushNamed(routeName, arguments: arguments);
  Future<T?> dialog<T>({
    required Widget Function(BuildContext context) builder,
    bool barrierDismissible = true,
    Color? barrierColor,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
    TraversalEdgeBehavior? traversalEdgeBehavior,
  }) =>
      showDialog(
        context: this,
        barrierDismissible: barrierDismissible,
        barrierColor: barrierColor,
        barrierLabel: barrierLabel,
        useSafeArea: useSafeArea,
        useRootNavigator: useRootNavigator,
        routeSettings: routeSettings,
        anchorPoint: anchorPoint,
        traversalEdgeBehavior: traversalEdgeBehavior,
        builder: (context) => builder(context),
      );

  Future<void> pop<T extends Object?>([T? result]) async {
    Navigator.of(this).pop(result);
  }

  Future<void> back<T extends Object?>([T? result]) async {
    Navigator.of(this).pop(result);
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackbar(
    SnackBar snackBar, {
    AnimationStyle? snackBarAnimationStyle,
  }) {
    final messenger = ScaffoldMessenger.of(this);
    messenger.hideCurrentSnackBar();
    return messenger.showSnackBar(
      snackBar,
      snackBarAnimationStyle: snackBarAnimationStyle,
    );
  }

  Future<T?> to<T extends Object?>(Widget page) => push(
        MaterialPageRoute(
          builder: (context) => page,
        ),
      );
}
