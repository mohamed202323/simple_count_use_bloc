part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

class IncrementEvent extends CounterEvent{

}

class DcrementEvent extends CounterEvent{

}

class ResetEvent extends CounterEvent{

}


