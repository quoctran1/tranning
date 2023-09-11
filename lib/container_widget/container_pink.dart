import 'package:flutter/material.dart';
import 'package:tranning/inherited_widget/inheritied_widget.dart';

class ContainerPink extends StatelessWidget {

  const ContainerPink({Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data=ContainerInherited.of(context).title;
    final data2=ContainerInherited.of(context).title2;
    return Container(
      color: Colors.pink,
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Text(data+ ' $data2'),
      ),
    );
  }
}
