
part of 'counter_bloc.dart';

sealed class CounterEvent{}

class CountIncremented extends CounterEvent {}
class CountDecremented extends CounterEvent {}
