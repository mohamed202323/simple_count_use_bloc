
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simble_counter_use_bloc/bloc/counter_bloc.dart';
import 'package:simble_counter_use_bloc/widgets/custom_floating_btn.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade200,
        title: const Text("Counter"),
        centerTitle: true,
        titleTextStyle:
            const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      floatingActionButton: CustomFloatingBTN(),
      body: Container(
        color: Colors.white24,
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        child: Column(
          mainAxisSize:MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("This is value counter : ",style:
              TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            const SizedBox(height: 10,),
            BlocBuilder<CounterBloc,CounterState>(
                builder: (context,state){
                  if(state is CounterInitial){
                    return const Text("0",style:
                    TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize:16,
                    color: Colors.teal),);
                  }
                  else if(state is CounterValueChange){
                    return Text(
                      state.counter.toString(),
                      style:
                      const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize:16,
                          color: Colors.teal),
                    );
                  }
                  else {
                    return
                      const Placeholder();
                  }
                }
            )
          ],
        ),
      ),
    );
  }
}
