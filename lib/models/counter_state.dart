import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  CounterState({
    this.clicks,
    this.value,
  });

  final int clicks;
  final int value;

  CounterState copyWith({
    int clicks,
    int value,
  }) {
    return CounterState(
      clicks: clicks ?? this.clicks,
      value: value ?? this.value,
    );
  }

  @override
  List<Object> get props => [clicks, value];

  @override
  bool get stringify => true;
}
