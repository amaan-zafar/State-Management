import 'package:bloc_state_management/counter_bloc.dart';
import 'package:bloc_state_management/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: MaterialApp(
        title: 'Counter App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: CounterPage(title: 'Bloc Counter'),
      ),
    );
  }
}
