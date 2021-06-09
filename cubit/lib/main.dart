import 'package:cubit/counter_cubit.dart';
import 'package:cubit/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Counter App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: CounterPage(title: 'Cubit Counter'),
      ),
    );
  }
}
