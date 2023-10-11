class OldClass {
  final int code;

  OldClass(this.code);

  int oldMethod() {
    return code;
  }
}

abstract class TargetInterface {
  int newMethod();
}

class Adapter implements TargetInterface {
  final OldClass oldClass;

  Adapter(this.oldClass);

  @override
  int newMethod() {
   return oldClass.oldMethod();
  }
}

void main() {
  final oldInstance = OldClass(1);
  final adapter = Adapter(oldInstance);

}
