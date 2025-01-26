import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {

  int count =  0 ;

  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
       if(event is IncrementEvent){
         count++;
         emit(CounterValueChange(counter: count));
       }
       else if (event is DcrementEvent){
         count--;
         emit(CounterValueChange(counter: count));
       }
       else {
         count = 0 ;
         emit(CounterValueChange(counter: count));
       }

    });
  }
}
