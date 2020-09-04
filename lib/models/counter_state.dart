class CounterState {
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
}
