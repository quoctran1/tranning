import 'package:flutter/material.dart';

import 'seperate_ticket_custom_paint.dart';


class DefaultTicketCustomPaint extends StatefulWidget {
  const DefaultTicketCustomPaint({Key? key}) : super(key: key);

  @override
  State<DefaultTicketCustomPaint> createState() => _DefaultTicketCustomPaintState();
}

class _DefaultTicketCustomPaintState extends State<DefaultTicketCustomPaint> {
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
              size: const Size(300, 600),
              painter: FlightTicket(),
              child:   const Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  TopWidget(),
                  SizedBox(
                    height: 150,
                    width: 100,
                    child:
                        Icon(Icons.account_balance_wallet_outlined),
                  ),
                  SizedBox(
                    height: 200,
                    width: 100,
                    child: Icon(Icons.account_balance),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FlightTicket extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(0, 0, size.width, size.height),
            bottomRight: Radius.circular(size.width * 0.02461538),
            bottomLeft: Radius.circular(size.width * 0.02461538),
            topLeft: Radius.circular(size.width * 0.02461538),
            topRight: Radius.circular(size.width * 0.02461538)),
        paint_0_fill);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(0, 0, size.width, size.height),
            bottomRight: Radius.circular(size.width * 0.02461538),
            bottomLeft: Radius.circular(size.width * 0.02461538),
            topLeft: Radius.circular(size.width * 0.02461538),
            topRight: Radius.circular(size.width * 0.02461538)),
        paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(0, size.height * 0.7410526);
    path_2.cubicTo(
        size.width * 0.02039206,
        size.height * 0.7410526,
        size.width * 0.03692308,
        size.height * 0.7297411,
        size.width * 0.03692308,
        size.height * 0.7157895);
    path_2.cubicTo(
        size.width * 0.03692308,
        size.height * 0.7018379,
        size.width * 0.02039206,
        size.height * 0.6905263,
        0,
        size.height * 0.6905263);
    path_2.cubicTo(
        size.width * -0.02039206,
        size.height * 0.6905263,
        size.width * -0.03692308,
        size.height * 0.7018379,
        size.width * -0.03692308,
        size.height * 0.7157895);
    path_2.cubicTo(
        size.width * -0.03692308,
        size.height * 0.7297411,
        size.width * -0.02039206,
        size.height * 0.7410526,
        0,
        size.height * 0.7410526);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = const Color(0xffF0F2F6).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width, size.height * 0.7410526);
    path_3.cubicTo(
        size.width * 1.020391,
        size.height * 0.7410526,
        size.width * 1.036923,
        size.height * 0.7297411,
        size.width * 1.036923,
        size.height * 0.7157895);
    path_3.cubicTo(
        size.width * 1.036923,
        size.height * 0.7018379,
        size.width * 1.020391,
        size.height * 0.6905263,
        size.width,
        size.height * 0.6905263);
    path_3.cubicTo(
        size.width * 0.9796092,
        size.height * 0.6905263,
        size.width * 0.9630769,
        size.height * 0.7018379,
        size.width * 0.9630769,
        size.height * 0.7157895);
    path_3.cubicTo(
        size.width * 0.9630769,
        size.height * 0.7297411,
        size.width * 0.9796092,
        size.height * 0.7410526,
        size.width,
        size.height * 0.7410526);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = const Color(0xffF0F2F6).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(0, size.height * 0.2126316);
    path_4.cubicTo(
        size.width * 0.02039206,
        size.height * 0.2126316,
        size.width * 0.03692308,
        size.height * 0.2013208,
        size.width * 0.03692308,
        size.height * 0.1873684);
    path_4.cubicTo(
        size.width * 0.03692308,
        size.height * 0.1734160,
        size.width * 0.02039206,
        size.height * 0.1621053,
        0,
        size.height * 0.1621053);
    path_4.cubicTo(
        size.width * -0.02039206,
        size.height * 0.1621053,
        size.width * -0.03692308,
        size.height * 0.1734160,
        size.width * -0.03692308,
        size.height * 0.1873684);
    path_4.cubicTo(
        size.width * -0.03692308,
        size.height * 0.2013208,
        size.width * -0.02039206,
        size.height * 0.2126316,
        0,
        size.height * 0.2126316);
    path_4.close();

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = const Color(0xffF0F2F6).withOpacity(1.0);
    canvas.drawPath(path_4, paint_4_fill);

    Path path_5 = Path();
    path_5.moveTo(size.width, size.height * 0.2126316);
    path_5.cubicTo(
        size.width * 1.020391,
        size.height * 0.2126316,
        size.width * 1.036923,
        size.height * 0.2013208,
        size.width * 1.036923,
        size.height * 0.1873684);
    path_5.cubicTo(
        size.width * 1.036923,
        size.height * 0.1734160,
        size.width * 1.020391,
        size.height * 0.1621053,
        size.width,
        size.height * 0.1621053);
    path_5.cubicTo(
        size.width * 0.9796092,
        size.height * 0.1621053,
        size.width * 0.9630769,
        size.height * 0.1734160,
        size.width * 0.9630769,
        size.height * 0.1873684);
    path_5.cubicTo(
        size.width * 0.9630769,
        size.height * 0.2013208,
        size.width * 0.9796092,
        size.height * 0.2126316,
        size.width,
        size.height * 0.2126316);
    path_5.close();

    Paint paint_5_fill = Paint()..style = PaintingStyle.fill;
    paint_5_fill.color = const Color(0xffF0F2F6).withOpacity(1.0);
    canvas.drawPath(path_5, paint_5_fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.04769231, size.height * 0.7168421);
    path_6.lineTo(size.width * 0.9707692, size.height * 0.7168421);

    Paint paint_6_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_6_stroke.color = const Color(0xffE5E5E5).withOpacity(1.0);
    paint_6_stroke.strokeCap = StrokeCap.square;
    canvas.drawPath(path_6, paint_6_stroke);

    Paint paint_6_fill = Paint()..style = PaintingStyle.fill;
    paint_6_fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_6, paint_6_fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.04769231, size.height * 0.1884211);
    path_7.lineTo(size.width * 0.9707692, size.height * 0.1884211);

    Paint paint_7_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_7_stroke.color = const Color(0xffE5E5E5).withOpacity(1.0);
    paint_7_stroke.strokeCap = StrokeCap.square;
    canvas.drawPath(path_7, paint_7_stroke);

    Paint paint_7_fill = Paint()..style = PaintingStyle.fill;
    paint_7_fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_7, paint_7_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class MyPainter1 extends CustomPainter {
  MyPainter1() : super();

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;

    canvas.drawRect(
        Rect.fromCenter(
          center: const Offset(100, 100),
          width: 50,
          height: 80,
        ),
        paint);
  }
  @override
  bool shouldRepaint(MyPainter1 oldDelegate) => true;
}
