import 'package:cubit/counter_cubit.dart';
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
      body: BlocBuilder<CounterCubit, int>(
          builder: (_, count) => Center(
                child: Text(
                  '$count',
                  style: TextStyle(fontSize: 28),
                ),
              )),
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
                .read<CounterCubit>()
                .increment(), // Used with Cubit mostly
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            onPressed: () => BlocProvider.of<CounterCubit>(context)
                .decrement(), //This also works
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
        ),
      ],
    );
  }
}
