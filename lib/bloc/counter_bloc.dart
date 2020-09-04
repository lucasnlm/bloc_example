import 'package:Counter/models/counter_state.dart';
import 'package:bloc/bloc.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc()
      : super(
          CounterState(
            clicks: 0,
            value: 0,
          ),
        );

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is IncreaseCounterEvent) {
      yield state.copyWith(
        clicks: state.clicks + 1,
        value: state.value + event.value,
      );
    } else if (event is DecreaseCounterEvent) {
      yield state.copyWith(
        clicks: state.clicks + 1,
        value: state.value - event.value,
      );
    }
  }
}
