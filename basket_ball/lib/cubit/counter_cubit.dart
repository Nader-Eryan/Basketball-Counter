import 'package:basket_ball/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int counter1 = 0;
  int counter2 = 0;
  void incrementCounter1(int val) {
    counter1 += val;
    emit(CounterAIncrementState());
  }

  void incrementCounter2(int val) {
    counter2 += val;
    emit(CounterBIncrementState());
  }
}
