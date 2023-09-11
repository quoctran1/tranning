import 'package:flutter/cupertino.dart';

class ContainerInherited extends InheritedWidget{
  final String title,title2;

  const ContainerInherited(this.title,this.title2 ,{super.key,
    required super
      .child});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
   return true;
  }
  static ContainerInherited of(BuildContext context) {
    final ContainerInherited? result =
    context.dependOnInheritedWidgetOfExactType<ContainerInherited>();
    return result!;
  }
}
