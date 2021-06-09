import 'package:flutter/material.dart';
import 'package:provide_state_management/counter_controller.dart';
import 'package:provide_state_management/counter_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterController(),
      child: MaterialApp(
        title: 'Counter App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: CounterPage(title: 'Provider Counter'),
      ),
    );
  }
}
