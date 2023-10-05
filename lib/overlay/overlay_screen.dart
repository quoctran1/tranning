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
  ValueNotifier<Offset> dragValue = ValueNotifier(Offset(20, 20));
  LayerLink layerLink = LayerLink();

  GlobalKey buttonKey = GlobalKey();
  ValueNotifier<Offset> offsetValue =
      ValueNotifier(const Offset(30, 30));

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onPanUpdate: (DragUpdateDetails detail) {
        print(detail.delta);
        final offset= offsetValue.value+detail.delta;
        offsetValue.value=offset;
      },
      child: ValueListenableBuilder(
        builder: (BuildContext context, value, Widget? child) {
          return Stack(
            children: [
              Positioned(
                top: offsetValue.value.dy,
                left: offsetValue.value.dx,
                child: CompositedTransformTarget(
                  link: layerLink,
                  child: ButtonClick(
                    key: buttonKey,
                    title: 'show',
                    onTap: () {
                      showOverlay();
                    },
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
          );
        },
        valueListenable: offsetValue,
      ),
    ));
  }

  void showOverlay() {
    final offset = getWidgetInfo();
    overlayEntry = OverlayEntry(builder: (BuildContext context) {
      return Positioned(
        left: offset.dx,
        top: offset.dy,

        child: CompositedTransformFollower(
          link: layerLink,
          targetAnchor:Alignment.bottomRight,
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 100,
              maxHeight: 30,
            ),
            color: Colors.pink.withOpacity(0.3),
            child: const Material(
              color: Colors.pink,
              child: Text('showOverlay',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
        ),
      );
    });
    overlayState = Overlay.of(context);
    overlayState!.insert(overlayEntry!);
  }

  void destroy() {
    overlayEntry!.remove();
  }

  Offset getWidgetInfo() {
    final result =
        buttonKey.currentContext!.findRenderObject() as RenderBox;
    final offset =
        result.localToGlobal(result.size.bottomRight((Offset.zero)));
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
