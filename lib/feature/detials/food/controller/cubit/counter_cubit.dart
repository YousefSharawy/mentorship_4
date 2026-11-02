import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(1);
  void itemCountIncrease() {
    emit(state + 1);
  }

  void itemCountDecrease() {
    if (state == 1) return;
    emit(state - 1);
  }
}
