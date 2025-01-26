part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}


class CounterValueChange extends CounterState{
  final int counter ;
  CounterValueChange({required this.counter}) ;
}