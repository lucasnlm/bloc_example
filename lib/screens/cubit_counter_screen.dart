import 'package:Counter/bloc/counter_bloc.dart';
import 'package:Counter/cubit/counter_cubit.dart';
import 'package:Counter/models/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitCounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo com Cubit'),
      ),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) => Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: const Text('-1'),
                onPressed: () =>
                    context.bloc<CounterCubit>().decreaseCounterEvent(1),
              ),
              Padding(
                padding: EdgeInsets.all(32),
                child: Text(
                  "Value ${state.value} and ${state.clicks} clicks",
                ),
              ),
              RaisedButton(
                child: const Text('+1'),
                onPressed: () =>
                    context.bloc<CounterCubit>().increaseCounterEvent(1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
