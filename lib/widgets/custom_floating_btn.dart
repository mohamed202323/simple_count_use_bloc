import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simble_counter_use_bloc/bloc/counter_bloc.dart';

class CustomFloatingBTN extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FloatingActionButton(onPressed: (){
           BlocProvider.of<CounterBloc>(context).add(IncrementEvent());
        },
          backgroundColor: Colors.teal,
          child: const Icon(Icons.add,color: Colors.white,),),

        const SizedBox(height:10,),

        FloatingActionButton(onPressed: (){
          BlocProvider.of<CounterBloc>(context).add(ResetEvent());

        },
          backgroundColor: Colors.grey,
          child: const Icon(Icons.delete_outline,color: Colors.red,),),

        const SizedBox(height:10,),


        FloatingActionButton(onPressed: (){
          BlocProvider.of<CounterBloc>(context).add(DcrementEvent());
        },
          backgroundColor: Colors.teal,
          child: const Icon(Icons.remove,color: Colors.white,),)
      ],
    );
  }




}