import 'package:flutter/material.dart';
import 'package:provide_state_management/counter_controller.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    CounterController _controller = Provider.of<CounterController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          '${_controller.count}',
          style: TextStyle(fontSize: 28),
        ),
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
    CounterController _controller =
        Provider.of<CounterController>(context, listen: false);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            onPressed: () => _controller.increment(), // Used with Cubit mostly
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            onPressed: () => _controller.decrement(), // Used with Cubit mostly
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
        ),
      ],
    );
  }
}
