import 'package:flutter_bloc/flutter_bloc.dart';

// Events
abstract class CounterEvent {}
class IncrementCounter extends CounterEvent {}
class DecrementCounter extends CounterEvent {}

// State
class CounterState {
  final int counterValue;
  CounterState(this.counterValue);
}

// BLoC
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {  // Initial state
    on<IncrementCounter>((event, emit) => emit(CounterState(state.counterValue + 1)));
    on<DecrementCounter>((event, emit) {
      if (state.counterValue > 0) {
        emit(CounterState(state.counterValue - 1));
      }
    });
  }
}
