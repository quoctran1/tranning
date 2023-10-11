import 'package:flutter/material.dart';

class DrawPlane extends StatefulWidget {
  const DrawPlane({Key? key}) : super(key: key);

  @override
  State<DrawPlane> createState() => _DrawPlaneState();
}

class _DrawPlaneState extends State<DrawPlane> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomPaint(
              size: Size(
                  MediaQuery.of(context).size.width,
                  MediaQuery.of(context).size.height -
                      kBottomNavigationBarHeight -
                      kToolbarHeight),
              painter: Plane(),
              child: const ChairWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class ChairWidget extends StatefulWidget {
  const ChairWidget({Key? key}) : super(key: key);

  @override
  State<ChairWidget> createState() => _ChairWidgetState();
}

class _ChairWidgetState extends State<ChairWidget> {
  List<String> list = List.generate(10, (index) => index.toString());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 600,maxWidth: 400),
      child: ListView.builder(

        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(list[index]);
        },
      ),
    );
  }
}

class Plane extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5020750, size.height);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, size.height * 0.5737699);
    path_0.cubicTo(
        0,
        size.height * 0.5737699,
        size.width * 0.02348658,
        size.height * 0.4588215,
        size.width * 0.07510583,
        size.height * 0.3753820);
    path_0.cubicTo(
        size.width * 0.1267254,
        size.height * 0.2919425,
        size.width * 0.2148633,
        size.height * 0.1808540,
        size.width * 0.2148633,
        size.height * 0.1808540);
    path_0.cubicTo(
        size.width * 0.2148633,
        size.height * 0.1808540,
        size.width * 0.3722617,
        size.height * 0.004531903,
        size.width * 0.5020750,
        0);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4979250, size.height);
    path_1.lineTo(size.width, size.height);
    path_1.lineTo(size.width, size.height * 0.5737699);
    path_1.cubicTo(
        size.width,
        size.height * 0.5737699,
        size.width * 0.9765125,
        size.height * 0.4588215,
        size.width * 0.9248958,
        size.height * 0.3753820);
    path_1.cubicTo(
        size.width * 0.8732750,
        size.height * 0.2919425,
        size.width * 0.7851375,
        size.height * 0.1808540,
        size.width * 0.7851375,
        size.height * 0.1808540);
    path_1.cubicTo(
        size.width * 0.7851375,
        size.height * 0.1808540,
        size.width * 0.6277375,
        size.height * 0.004531903,
        size.width * 0.4979250,
        0);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.1833333, size.height * 0.3171091);
    path_2.lineTo(size.width * 0.2731358, size.height * 0.3035870);
    path_2.lineTo(size.width * 0.3083333, size.height * 0.2625369);
    path_2.lineTo(size.width * 0.2280583, size.height * 0.2625369);
    path_2.lineTo(size.width * 0.1833333, size.height * 0.3171091);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xffE0DDF5).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.2291667, size.height * 0.2581121);
    path_3.lineTo(size.width * 0.3161408, size.height * 0.2581121);
    path_3.lineTo(size.width * 0.3500000, size.height * 0.2443525);
    path_3.lineTo(size.width * 0.3087875, size.height * 0.2153392);
    path_3.lineTo(size.width * 0.2291667, size.height * 0.2581121);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xffE0DDF5).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.3208333, size.height * 0.2109926);
    path_4.lineTo(size.width * 0.3580629, size.height * 0.2418879);
    path_4.lineTo(size.width * 0.4958333, size.height * 0.2109926);
    path_4.lineTo(size.width * 0.4958333, size.height * 0.1696165);
    path_4.lineTo(size.width * 0.3208333, size.height * 0.2109926);
    path_4.close();

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = Color(0xffE0DDF5).withOpacity(1.0);
    canvas.drawPath(path_4, paint_4_fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.8208333, size.height * 0.3171091);
    path_5.lineTo(size.width * 0.7310292, size.height * 0.3035870);
    path_5.lineTo(size.width * 0.6958333, size.height * 0.2625369);
    path_5.lineTo(size.width * 0.7761083, size.height * 0.2625369);
    path_5.lineTo(size.width * 0.8208333, size.height * 0.3171091);
    path_5.close();

    Paint paint_5_fill = Paint()..style = PaintingStyle.fill;
    paint_5_fill.color = Color(0xffE0DDF5).withOpacity(1.0);
    canvas.drawPath(path_5, paint_5_fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.7750000, size.height * 0.2581121);
    path_6.lineTo(size.width * 0.6880250, size.height * 0.2581121);
    path_6.lineTo(size.width * 0.6541667, size.height * 0.2443525);
    path_6.lineTo(size.width * 0.6953792, size.height * 0.2153392);
    path_6.lineTo(size.width * 0.7750000, size.height * 0.2581121);
    path_6.close();

    Paint paint_6_fill = Paint()..style = PaintingStyle.fill;
    paint_6_fill.color = Color(0xffE0DDF5).withOpacity(1.0);
    canvas.drawPath(path_6, paint_6_fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.6833333, size.height * 0.2109926);
    path_7.lineTo(size.width * 0.6461042, size.height * 0.2418879);
    path_7.lineTo(size.width * 0.5083333, size.height * 0.2109926);
    path_7.lineTo(size.width * 0.5083333, size.height * 0.1696165);
    path_7.lineTo(size.width * 0.6833333, size.height * 0.2109926);
    path_7.close();

    Paint paint_7_fill = Paint()..style = PaintingStyle.fill;
    paint_7_fill.color = Color(0xffE0DDF5).withOpacity(1.0);
    canvas.drawPath(path_7, paint_7_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
