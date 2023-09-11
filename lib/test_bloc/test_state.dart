abstract class TestState {}

class InitState extends TestState {}

class LoadingState extends TestState {}

class LoadedState extends TestState {
  final String data;

  LoadedState(this.data);
}

class ErrorState extends TestState {}
