import 'package:flutter/material.dart';

class FocusScreen extends StatefulWidget {
  const FocusScreen({Key? key}) : super(key: key);

  @override
  State<FocusScreen> createState() => _FocusScreenState();
}

class _FocusScreenState extends State<FocusScreen> {
  TextEditingController textEditing1= TextEditingController();
  TextEditingController textEditing2= TextEditingController();
  TextEditingController textEditing3= TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(controller: textEditing1,),
          TextField(controller: textEditing2,),
          TextField(controller: textEditing3,),
        ],
      ),
    );
  }
}
