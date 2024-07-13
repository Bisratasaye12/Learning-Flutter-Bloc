import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CountIncremented>(
      (event, emit) => emit(state + 1),
    );
    on<CountDecremented>((event, emit) => emit(state - 1));
  }
}
