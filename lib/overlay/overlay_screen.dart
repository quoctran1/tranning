import 'package:flutter/material.dart';
import 'package:tranning/main.dart';

class OverlayScreen extends StatefulWidget {
  const OverlayScreen({Key? key}) : super(key: key);

  @override
  State<OverlayScreen> createState() => _OverlayScreenState();
}

class _OverlayScreenState extends State<OverlayScreen> {
  OverlayEntry? overlayEntry;
  OverlayState? overlayState;
  GlobalKey buttonKey = GlobalKey();
  ValueNotifier<Offset> dragValue = ValueNotifier(Offset(20, 20));
  LayerLink layerLink = LayerLink();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonClick(
              key: buttonKey,
              title: 'show',
              onTap: () {
                showOverlay();
              },
            ),
            Row(
              children: [
                ButtonClick(
                  title: 'destroy',
                  onTap: () {
                    destroy();
                  },
                ),
              ],
            ),
            ButtonClick(
              title: 'getWidgetInfo',
              onTap: () {
                getWidgetInfo();
              },
            ),
          ],
        ),
        // Positioned(top: 420, left:50.5, child: draw()),
      ],
    ));
  }

  void showOverlay() {}

  void destroy() {}

  Offset getWidgetInfo() {
    final result =
        buttonKey.currentContext!.findRenderObject() as RenderBox;
    final offset = result.localToGlobal((Offset.zero));
    return offset;
  }

  Container draw() {
    return Container(
      height: 44,
      width: 84,
      color: Colors.red,
    );
  }
}
