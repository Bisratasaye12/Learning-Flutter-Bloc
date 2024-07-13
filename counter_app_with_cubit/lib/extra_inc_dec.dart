import 'package:counter_app_with_cubit/Cubit/counter_cubit.dart';
import 'package:counter_app_with_cubit/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExtraIncDec extends StatelessWidget {
  const ExtraIncDec({super.key});

  @override
  Widget build(BuildContext context) {
    // final counterCubit = BlocProvider.of<CounterCubit>(context);
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterBloc.add(CountIncremented());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.arrow_upward),
          ),
          const SizedBox(
            height: 5,
          ),
          FloatingActionButton(
            onPressed: () {
              counterBloc.add(CountDecremented());
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.arrow_downward),
          ),
        ],
      ),
    );
  }
}