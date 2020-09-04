import 'package:Counter/models/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit()
      : super(CounterState(
          clicks: 0,
          value: 0,
        ));

  void increaseCounterEvent(int value) {
    emit(
      state.copyWith(
        clicks: state.clicks + 1,
        value: state.value + value,
      ),
    );
  }

  void decreaseCounterEvent(int value) {
    emit(
      state.copyWith(
        clicks: state.clicks + 1,
        value: state.value + value,
      ),
    );
  }
}
