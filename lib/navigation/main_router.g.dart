// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_router.dart';

// **************************************************************************
// NuvigatorGenerator
// **************************************************************************

class MainRoutes {
  static const initialScreen = 'main/initialScreen';

  static const blocCounterScreen = 'main/blocCounterScreen';

  static const cubitCounterScreen = 'main/cubitCounterScreen';
}

extension MainRouterNavigation on MainRouter {
  Future<Object> toInitialScreen() {
    return nuvigator.pushNamed<Object>(
      MainRoutes.initialScreen,
    );
  }

  Future<Object> pushReplacementToInitialScreen<TO extends Object>(
      {TO result}) {
    return nuvigator.pushReplacementNamed<Object, TO>(
      MainRoutes.initialScreen,
      result: result,
    );
  }

  Future<Object> pushAndRemoveUntilToInitialScreen<TO extends Object>(
      {@required RoutePredicate predicate}) {
    return nuvigator.pushNamedAndRemoveUntil<Object>(
      MainRoutes.initialScreen,
      predicate,
    );
  }

  Future<Object> popAndPushToInitialScreen<TO extends Object>({TO result}) {
    return nuvigator.popAndPushNamed<Object, TO>(
      MainRoutes.initialScreen,
      result: result,
    );
  }

  Future<Object> toBlocCounterScreen() {
    return nuvigator.pushNamed<Object>(
      MainRoutes.blocCounterScreen,
    );
  }

  Future<Object> pushReplacementToBlocCounterScreen<TO extends Object>(
      {TO result}) {
    return nuvigator.pushReplacementNamed<Object, TO>(
      MainRoutes.blocCounterScreen,
      result: result,
    );
  }

  Future<Object> pushAndRemoveUntilToBlocCounterScreen<TO extends Object>(
      {@required RoutePredicate predicate}) {
    return nuvigator.pushNamedAndRemoveUntil<Object>(
      MainRoutes.blocCounterScreen,
      predicate,
    );
  }

  Future<Object> popAndPushToBlocCounterScreen<TO extends Object>({TO result}) {
    return nuvigator.popAndPushNamed<Object, TO>(
      MainRoutes.blocCounterScreen,
      result: result,
    );
  }

  Future<Object> toCubitCounterScreen() {
    return nuvigator.pushNamed<Object>(
      MainRoutes.cubitCounterScreen,
    );
  }

  Future<Object> pushReplacementToCubitCounterScreen<TO extends Object>(
      {TO result}) {
    return nuvigator.pushReplacementNamed<Object, TO>(
      MainRoutes.cubitCounterScreen,
      result: result,
    );
  }

  Future<Object> pushAndRemoveUntilToCubitCounterScreen<TO extends Object>(
      {@required RoutePredicate predicate}) {
    return nuvigator.pushNamedAndRemoveUntil<Object>(
      MainRoutes.cubitCounterScreen,
      predicate,
    );
  }

  Future<Object> popAndPushToCubitCounterScreen<TO extends Object>(
      {TO result}) {
    return nuvigator.popAndPushNamed<Object, TO>(
      MainRoutes.cubitCounterScreen,
      result: result,
    );
  }
}

extension MainRouterScreensAndRouters on MainRouter {
  Map<RouteDef, ScreenRouteBuilder> get _$screensMap {
    return {
      RouteDef(MainRoutes.initialScreen): (RouteSettings settings) {
        return initialScreen();
      },
      RouteDef(MainRoutes.blocCounterScreen): (RouteSettings settings) {
        return blocCounterScreen();
      },
      RouteDef(MainRoutes.cubitCounterScreen): (RouteSettings settings) {
        return cubitCounterScreen();
      },
    };
  }
}
