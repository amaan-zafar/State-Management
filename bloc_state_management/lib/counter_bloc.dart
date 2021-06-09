import 'package:flutter_bloc/flutter_bloc.dart';

enum CounterEvent { Increment, Decrement }

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(event) async* {
    switch (event) {
      case CounterEvent.Increment:
        yield state + 1;
        break;
      case CounterEvent.Decrement:
        yield state - 1;
        break;
    }
  }
}
