import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tranning/test_bloc/test_event.dart';
import 'package:tranning/test_bloc/test_state.dart';

class BlocTest extends Bloc<TestEvent, TestState> {
  BlocTest() : super(InitState()) {
    on<ChangeDataEvent>(_onDataChanged);
    on<ShowLoadingEvent>(_onShowLoading);
  }

  FutureOr<void> _onDataChanged(
      ChangeDataEvent event, Emitter<TestState> emit) {
    /// Handle logic (API, search,....)
    String upperCase = event.data.toUpperCase();

    /// got data => show to UI
    emit(LoadedState(upperCase));
  }

  FutureOr<void> _onShowLoading(
      ShowLoadingEvent event, Emitter<TestState> emit) {
    emit(LoadingState());
  }

  void changeText(String text) {
    add(ChangeDataEvent(text));
  }
}
