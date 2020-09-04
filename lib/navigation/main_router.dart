import 'package:Counter/bloc/counter_bloc.dart';
import 'package:Counter/cubit/counter_cubit.dart';
import 'package:Counter/screens/bloc_counter_screen.dart';
import 'package:Counter/screens/cubit_counter_screen.dart';
import 'package:Counter/screens/main_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuvigator/nuvigator.dart';

part 'main_router.g.dart';

@NuRouter()
class MainRouter extends Router {
  @NuRoute()
  ScreenRoute initialScreen() => ScreenRoute(
        builder: (_) => MainScreen(),
      );

  @NuRoute()
  ScreenRoute blocCounterScreen() => ScreenRoute(
        builder: (_) => BlocCounterScreen(),
        wrapper: (context, child) => BlocProvider(
          create: (_) => CounterBloc(),
          child: child,
        ),
      );

  @NuRoute()
  ScreenRoute cubitCounterScreen() => ScreenRoute(
        builder: (_) => CubitCounterScreen(),
        wrapper: (context, child) => BlocProvider(
          create: (_) => CounterCubit(),
          child: child,
        ),
      );

  @override
  Map<RouteDef, ScreenRouteBuilder> get screensMap => _$screensMap;
}
