import 'package:flutter/material.dart';
import 'package:tranning/models/car.dart';

class ItemChooseWidget extends StatelessWidget {
  final ItemData itemData;

  final Function onTap;
  const ItemChooseWidget({Key? key, required this.itemData ,
    required this.onTap}) : super
      (key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap();
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(8),
        color:    Colors.grey,
        child: Text(itemData.getName()),),
    );
  }
}
