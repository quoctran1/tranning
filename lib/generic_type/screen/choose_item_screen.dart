import 'package:flutter/material.dart';
import 'package:tranning/generic_type/screen/item_data_widget.dart';
import 'package:tranning/models/car.dart';

class ChooseItemScreen extends StatefulWidget {
  const ChooseItemScreen({Key? key}) : super(key: key);

  @override
  State<ChooseItemScreen> createState() => _ChooseItemScreenState();
}

class _ChooseItemScreenState extends State<ChooseItemScreen> {
  List<ItemData> listCar = ItemData.getListCar();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: listCar.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemChooseWidget(
              itemData: listCar[index], onTap: (){
              onTapItem(  index);
            },
            );
          },
        ),
      ),
    );
  }
  void onTapItem(int index){
    print(listCar[index].getName());
  }
}
