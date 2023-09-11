import 'package:flutter/material.dart';
import 'package:tranning/container_widget/container_green.dart';

class ContainerRed extends StatelessWidget {
  const ContainerRed({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: const EdgeInsets.all(50),
      child:   ContainerGreen( ),
    );
  }
}
