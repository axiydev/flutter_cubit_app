import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterEvent>(onCounterEvent);
  }

  void onCounterEvent(event, emit) {
    if (event == CounterEvent.increment) {
      emit(state + 1);
    } else if (event == CounterEvent.decrement) {
      emit(state - 1);
    } else {
      emit(state);
    }
  }

  @override
  void onChange(Change<int> change) {
    debugPrint(change.toString());
    super.onChange(change);
  }

  @override
  void onEvent(CounterEvent event) {
    debugPrint(event.toString());
    super.onEvent(event);
  }

  @override
  void onTransition(Transition<CounterEvent, int> transition) {
    debugPrint(transition.toString());
    super.onTransition(transition);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    debugPrint(error.toString());
    super.onError(error, stackTrace);
  }
}
