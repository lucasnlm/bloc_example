part of 'counter_bloc.dart';

abstract class CounterEvent {}

class IncreaseCounterEvent extends CounterEvent {
  IncreaseCounterEvent(this.value);

  final int value;
}

class DecreaseCounterEvent extends CounterEvent {
  DecreaseCounterEvent(this.value);

  final int value;
}
