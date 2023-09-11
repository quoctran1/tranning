import 'package:flutter/material.dart';
import 'package:tranning/container_widget/container_pink.dart';

class ContainerGreen extends StatelessWidget {

  const ContainerGreen({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      padding: const EdgeInsets.all(30),
      child:   ContainerPink( ),
    );
  }
}
