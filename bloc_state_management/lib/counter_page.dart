import 'package:bloc_state_management/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: BlocBuilder<CounterBloc, int>(
        builder: (_, count) {
          return Center(
            child: Text(
              '$count',
              style: TextStyle(fontSize: 28),
            ),
          );
        },
      ),
      floatingActionButton: Fab(),
    );
  }
}

class Fab extends StatelessWidget {
  const Fab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            onPressed: () => context
                .read<CounterBloc>()
                .add(CounterEvent.Increment), // Used with Cubit mostly
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            onPressed: () => context
                .read<CounterBloc>()
                .add(CounterEvent.Decrement), // Used with Cubit mostly
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
        ),
      ],
    );
  }
}
