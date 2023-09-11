abstract class TestEvent {}

class InitDataEvent extends TestEvent {}

class ChangeDataEvent extends TestEvent {
  final String data;

  ChangeDataEvent(this.data);
}

class ShowLoadingEvent extends TestEvent {}
