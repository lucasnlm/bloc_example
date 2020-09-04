import 'package:bloc_test/bloc_test.dart';

import '../lib/bloc/counter_bloc.dart';
import '../lib/cubit/counter_cubit.dart';
import '../lib/models/counter_state.dart';

void main() {
  blocTest(
    'test bloc',
    build: () => CounterBloc(),
    act: (cubit) {
      cubit.add(IncreaseCounterEvent(1));
      cubit.add(DecreaseCounterEvent(2));
    },
    expect: [
      CounterState(clicks: 1, value: 1),
      CounterState(clicks: 2, value: -1),
    ],
  );

  blocTest(
    'test cubit',
    build: () => CounterCubit(),
    act: (cubit) {
      cubit.increaseCounterEvent(1);
      cubit.decreaseCounterEvent(2);
    },
    expect: [
      CounterState(clicks: 1, value: 1),
      CounterState(clicks: 2, value: -1),
    ],
  );
}
