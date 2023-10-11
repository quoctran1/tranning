import 'package:flutter/material.dart';

class SeperateTicketCustomPaint extends StatefulWidget {
  const SeperateTicketCustomPaint({Key? key}) : super(key: key);

  @override
  State<SeperateTicketCustomPaint> createState() => _SeperateTicketCustomPaintState();
}

class _SeperateTicketCustomPaintState extends State<SeperateTicketCustomPaint> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomPaint(
              size: const Size(300, 90),
              painter: TopTicket(),
              child: const TopWidget(),
            ),
            CustomPaint(
              size: const Size(300, 150),
              painter: MiddleTicket(),
            ),
            CustomPaint(
              size: const Size(300, 90),
              painter: BottomTicket(),
            ),
          ],
        ),
      ),
    );
  }
}

class TopWidget extends StatelessWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 100,
        maxWidth: 300,
      ),
      padding: const EdgeInsets.all(8.0),
      child: const Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("JKT"),
                Text("Jakatdwdwa"),
              ],
            ),
          ),
          Row(
            children: [
              Text("-----"),
              Icon(Icons.airplanemode_active),
              Text("-----"),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("JKT"),
                Text("Jakata"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TopTicket extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.05405405);
    path_0.cubicTo(0, size.height * 0.02420088,
        size.width * 0.01102068, 0, size.width * 0.02461538, 0);
    path_0.lineTo(size.width * 0.9753846, 0);
    path_0.cubicTo(
        size.width * 0.9889785,
        0,
        size.width,
        size.height * 0.02420081,
        size.width,
        size.height * 0.05405405);
    path_0.lineTo(size.width, size.height * 0.9054595);
    path_0.cubicTo(
        size.width * 0.9994892,
        size.height * 0.9054257,
        size.width * 0.9989754,
        size.height * 0.9054054,
        size.width * 0.9984615,
        size.height * 0.9054054);
    path_0.cubicTo(
        size.width * 0.9743354,
        size.height * 0.9054054,
        size.width * 0.9546831,
        size.height * 0.9474527,
        size.width * 0.9538708,
        size.height);
    path_0.lineTo(size.width * 0.04612769, size.height);
    path_0.cubicTo(
        size.width * 0.04531692,
        size.height * 0.9474527,
        size.width * 0.02566397,
        size.height * 0.9054054,
        size.width * 0.001538462,
        size.height * 0.9054054);
    path_0.cubicTo(
        size.width * 0.001023557,
        size.height * 0.9054054,
        size.width * 0.0005106892,
        size.height * 0.9054257,
        0,
        size.height * 0.9054595);
    path_0.lineTo(0, size.height * 0.05405405);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MiddleTicket extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.08422191);
    path_0.cubicTo(
        size.width * 0.9994892,
        size.height * 0.08425393,
        size.width * 0.9989754,
        size.height * 0.08426966,
        size.width * 0.9984615,
        size.height * 0.08426966);
    path_0.cubicTo(
        size.width * 0.9738215,
        size.height * 0.08426966,
        size.width * 0.9538462,
        size.height * 0.04779848,
        size.width * 0.9538462,
        size.height * 0.002808989);
    path_0.cubicTo(
        size.width * 0.9538462,
        size.height * 0.001868854,
        size.width * 0.9538554,
        size.height * 0.0009324382,
        size.width * 0.9538708,
        0);
    path_0.lineTo(size.width * 0.04612769, 0);
    path_0.cubicTo(
        size.width * 0.04614523,
        size.height * 0.0009324382,
        size.width * 0.04615385,
        size.height * 0.001868854,
        size.width * 0.04615385,
        size.height * 0.002808989);
    path_0.cubicTo(
        size.width * 0.04615385,
        size.height * 0.04779848,
        size.width * 0.02617886,
        size.height * 0.08426966,
        size.width * 0.001538462,
        size.height * 0.08426966);
    path_0.cubicTo(
        size.width * 0.001023557,
        size.height * 0.08426966,
        size.width * 0.0005106892,
        size.height * 0.08425393,
        0,
        size.height * 0.08422191);
    path_0.lineTo(0, size.height * 0.9157753);
    path_0.cubicTo(
        size.width * 0.0005106892,
        size.height * 0.9157472,
        size.width * 0.001023557,
        size.height * 0.9157303,
        size.width * 0.001538462,
        size.height * 0.9157303);
    path_0.cubicTo(
        size.width * 0.02617886,
        size.height * 0.9157303,
        size.width * 0.04615385,
        size.height * 0.9522022,
        size.width * 0.04615385,
        size.height * 0.9971910);
    path_0.cubicTo(
        size.width * 0.04615385,
        size.height * 0.9981292,
        size.width * 0.04614523,
        size.height * 0.9990674,
        size.width * 0.04612769,
        size.height);
    path_0.lineTo(size.width * 0.9538708, size.height);
    path_0.cubicTo(
        size.width * 0.9538554,
        size.height * 0.9990674,
        size.width * 0.9538462,
        size.height * 0.9981292,
        size.width * 0.9538462,
        size.height * 0.9971910);
    path_0.cubicTo(
        size.width * 0.9538462,
        size.height * 0.9522022,
        size.width * 0.9738215,
        size.height * 0.9157303,
        size.width * 0.9984615,
        size.height * 0.9157303);
    path_0.cubicTo(
        size.width * 0.9989754,
        size.height * 0.9157303,
        size.width * 0.9994892,
        size.height * 0.9157472,
        size.width,
        size.height * 0.9157753);
    path_0.lineTo(size.width, size.height * 0.08422191);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.04923077, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.04838123,
        size.height * 0.002808989,
        size.width * 0.04769231,
        size.height * 0.004066618,
        size.width * 0.04769231,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.04769231,
        size.height * 0.007169326,
        size.width * 0.04838123,
        size.height * 0.008426966,
        size.width * 0.04923077,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.04923077, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.05862185, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.05947138,
        size.height * 0.008426966,
        size.width * 0.06016031,
        size.height * 0.007169326,
        size.width * 0.06016031,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.06016031,
        size.height * 0.004066618,
        size.width * 0.05947138,
        size.height * 0.002808989,
        size.width * 0.05862185,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.05862185, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.07740369, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.07655415,
        size.height * 0.002808989,
        size.width * 0.07586523,
        size.height * 0.004066618,
        size.width * 0.07586523,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.07586523,
        size.height * 0.007169326,
        size.width * 0.07655415,
        size.height * 0.008426966,
        size.width * 0.07740369,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.07740369, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.09618585, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.09703569,
        size.height * 0.008426966,
        size.width * 0.09772431,
        size.height * 0.007169326,
        size.width * 0.09772431,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.09772431,
        size.height * 0.004066618,
        size.width * 0.09703569,
        size.height * 0.002808989,
        size.width * 0.09618585,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.09618585, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.1149680, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.1141182,
        size.height * 0.002808989,
        size.width * 0.1134295,
        size.height * 0.004066618,
        size.width * 0.1134295,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.1134295,
        size.height * 0.007169326,
        size.width * 0.1141182,
        size.height * 0.008426966,
        size.width * 0.1149680,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.1149680, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.1337498, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.1345997,
        size.height * 0.008426966,
        size.width * 0.1352883,
        size.height * 0.007169326,
        size.width * 0.1352883,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.1352883,
        size.height * 0.004066618,
        size.width * 0.1345997,
        size.height * 0.002808989,
        size.width * 0.1337498,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.1337498, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.1525320, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.1516825,
        size.height * 0.002808989,
        size.width * 0.1509935,
        size.height * 0.004066618,
        size.width * 0.1509935,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.1509935,
        size.height * 0.007169326,
        size.width * 0.1516825,
        size.height * 0.008426966,
        size.width * 0.1525320,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.1525320, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.1713142, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.1721637,
        size.height * 0.008426966,
        size.width * 0.1728526,
        size.height * 0.007169326,
        size.width * 0.1728526,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.1728526,
        size.height * 0.004066618,
        size.width * 0.1721637,
        size.height * 0.002808989,
        size.width * 0.1713142,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.1713142, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.1900960, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.1892465,
        size.height * 0.002808989,
        size.width * 0.1885575,
        size.height * 0.004066618,
        size.width * 0.1885575,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.1885575,
        size.height * 0.007169326,
        size.width * 0.1892465,
        size.height * 0.008426966,
        size.width * 0.1900960,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.1900960, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.2088782, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.2097280,
        size.height * 0.008426966,
        size.width * 0.2104166,
        size.height * 0.007169326,
        size.width * 0.2104166,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.2104166,
        size.height * 0.004066618,
        size.width * 0.2097280,
        size.height * 0.002808989,
        size.width * 0.2088782,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.2088782, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.2276603, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.2268105,
        size.height * 0.002808989,
        size.width * 0.2261218,
        size.height * 0.004066618,
        size.width * 0.2261218,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.2261218,
        size.height * 0.007169326,
        size.width * 0.2268105,
        size.height * 0.008426966,
        size.width * 0.2276603,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.2276603, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.2464425, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.2472920,
        size.height * 0.008426966,
        size.width * 0.2479809,
        size.height * 0.007169326,
        size.width * 0.2479809,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.2479809,
        size.height * 0.004066618,
        size.width * 0.2472920,
        size.height * 0.002808989,
        size.width * 0.2464425,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.2464425, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.2652243, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.2643748,
        size.height * 0.002808989,
        size.width * 0.2636858,
        size.height * 0.004066618,
        size.width * 0.2636858,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.2636858,
        size.height * 0.007169326,
        size.width * 0.2643748,
        size.height * 0.008426966,
        size.width * 0.2652243,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.2652243, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.2840065, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.2848560,
        size.height * 0.008426966,
        size.width * 0.2855449,
        size.height * 0.007169326,
        size.width * 0.2855449,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.2855449,
        size.height * 0.004066618,
        size.width * 0.2848560,
        size.height * 0.002808989,
        size.width * 0.2840065,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.2840065, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.3027883, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.3019388,
        size.height * 0.002808989,
        size.width * 0.3012498,
        size.height * 0.004066618,
        size.width * 0.3012498,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.3012498,
        size.height * 0.007169326,
        size.width * 0.3019388,
        size.height * 0.008426966,
        size.width * 0.3027883,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.3027883, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.3215692, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.3224215,
        size.height * 0.008426966,
        size.width * 0.3231077,
        size.height * 0.007169326,
        size.width * 0.3231077,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.3231077,
        size.height * 0.004066618,
        size.width * 0.3224215,
        size.height * 0.002808989,
        size.width * 0.3215692,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.3215692, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.3403538, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.3395015,
        size.height * 0.002808989,
        size.width * 0.3388154,
        size.height * 0.004066618,
        size.width * 0.3388154,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.3388154,
        size.height * 0.007169326,
        size.width * 0.3395015,
        size.height * 0.008426966,
        size.width * 0.3403538,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.3403538, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.3591354, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.3599846,
        size.height * 0.008426966,
        size.width * 0.3606738,
        size.height * 0.007169326,
        size.width * 0.3606738,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.3606738,
        size.height * 0.004066618,
        size.width * 0.3599846,
        size.height * 0.002808989,
        size.width * 0.3591354,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.3591354, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.3779169, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.3770677,
        size.height * 0.002808989,
        size.width * 0.3763785,
        size.height * 0.004066618,
        size.width * 0.3763785,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.3763785,
        size.height * 0.007169326,
        size.width * 0.3770677,
        size.height * 0.008426966,
        size.width * 0.3779169,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.3779169, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.3966985, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.3975477,
        size.height * 0.008426966,
        size.width * 0.3982369,
        size.height * 0.007169326,
        size.width * 0.3982369,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.3982369,
        size.height * 0.004066618,
        size.width * 0.3975477,
        size.height * 0.002808989,
        size.width * 0.3966985,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.3966985, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.4154800, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.4146308,
        size.height * 0.002808989,
        size.width * 0.4139415,
        size.height * 0.004066618,
        size.width * 0.4139415,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.4139415,
        size.height * 0.007169326,
        size.width * 0.4146308,
        size.height * 0.008426966,
        size.width * 0.4154800,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.4154800, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.4342615, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.4351138,
        size.height * 0.008426966,
        size.width * 0.4358000,
        size.height * 0.007169326,
        size.width * 0.4358000,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.4358000,
        size.height * 0.004066618,
        size.width * 0.4351138,
        size.height * 0.002808989,
        size.width * 0.4342615,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.4342615, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.4530462, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.4521938,
        size.height * 0.002808989,
        size.width * 0.4515077,
        size.height * 0.004066618,
        size.width * 0.4515077,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.4515077,
        size.height * 0.007169326,
        size.width * 0.4521938,
        size.height * 0.008426966,
        size.width * 0.4530462,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.4530462, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.4718277, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.4726769,
        size.height * 0.008426966,
        size.width * 0.4733662,
        size.height * 0.007169326,
        size.width * 0.4733662,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.4733662,
        size.height * 0.004066618,
        size.width * 0.4726769,
        size.height * 0.002808989,
        size.width * 0.4718277,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.4718277, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.4906092, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.4897600,
        size.height * 0.002808989,
        size.width * 0.4890708,
        size.height * 0.004066618,
        size.width * 0.4890708,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.4890708,
        size.height * 0.007169326,
        size.width * 0.4897600,
        size.height * 0.008426966,
        size.width * 0.4906092,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.4906092, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.5093908, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.5102400,
        size.height * 0.008426966,
        size.width * 0.5109292,
        size.height * 0.007169326,
        size.width * 0.5109292,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.5109292,
        size.height * 0.004066618,
        size.width * 0.5102400,
        size.height * 0.002808989,
        size.width * 0.5093908,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.5093908, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.5281723, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.5273231,
        size.height * 0.002808989,
        size.width * 0.5266338,
        size.height * 0.004066618,
        size.width * 0.5266338,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.5266338,
        size.height * 0.007169326,
        size.width * 0.5273231,
        size.height * 0.008426966,
        size.width * 0.5281723,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.5281723, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.5469538, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.5478062,
        size.height * 0.008426966,
        size.width * 0.5484923,
        size.height * 0.007169326,
        size.width * 0.5484923,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.5484923,
        size.height * 0.004066618,
        size.width * 0.5478062,
        size.height * 0.002808989,
        size.width * 0.5469538,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.5469538, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.5657385, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.5648862,
        size.height * 0.002808989,
        size.width * 0.5642000,
        size.height * 0.004066618,
        size.width * 0.5642000,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.5642000,
        size.height * 0.007169326,
        size.width * 0.5648862,
        size.height * 0.008426966,
        size.width * 0.5657385,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.5657385, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.5845200, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.5853692,
        size.height * 0.008426966,
        size.width * 0.5860585,
        size.height * 0.007169326,
        size.width * 0.5860585,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.5860585,
        size.height * 0.004066618,
        size.width * 0.5853692,
        size.height * 0.002808989,
        size.width * 0.5845200,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.5845200, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.6033015, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.6024523,
        size.height * 0.002808989,
        size.width * 0.6017631,
        size.height * 0.004066618,
        size.width * 0.6017631,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.6017631,
        size.height * 0.007169326,
        size.width * 0.6024523,
        size.height * 0.008426966,
        size.width * 0.6033015,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.6033015, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.6220831, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.6229323,
        size.height * 0.008426966,
        size.width * 0.6236215,
        size.height * 0.007169326,
        size.width * 0.6236215,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.6236215,
        size.height * 0.004066618,
        size.width * 0.6229323,
        size.height * 0.002808989,
        size.width * 0.6220831,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.6220831, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.6408646, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.6400154,
        size.height * 0.002808989,
        size.width * 0.6393262,
        size.height * 0.004066618,
        size.width * 0.6393262,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.6393262,
        size.height * 0.007169326,
        size.width * 0.6400154,
        size.height * 0.008426966,
        size.width * 0.6408646,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.6408646, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.6596462, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.6604985,
        size.height * 0.008426966,
        size.width * 0.6611846,
        size.height * 0.007169326,
        size.width * 0.6611846,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.6611846,
        size.height * 0.004066618,
        size.width * 0.6604985,
        size.height * 0.002808989,
        size.width * 0.6596462,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.6596462, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.6784308, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.6775785,
        size.height * 0.002808989,
        size.width * 0.6768923,
        size.height * 0.004066618,
        size.width * 0.6768923,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.6768923,
        size.height * 0.007169326,
        size.width * 0.6775785,
        size.height * 0.008426966,
        size.width * 0.6784308,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.6784308, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.6972123, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.6980615,
        size.height * 0.008426966,
        size.width * 0.6987508,
        size.height * 0.007169326,
        size.width * 0.6987508,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.6987508,
        size.height * 0.004066618,
        size.width * 0.6980615,
        size.height * 0.002808989,
        size.width * 0.6972123,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.6972123, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.7159938, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.7151446,
        size.height * 0.002808989,
        size.width * 0.7144554,
        size.height * 0.004066618,
        size.width * 0.7144554,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.7144554,
        size.height * 0.007169326,
        size.width * 0.7151446,
        size.height * 0.008426966,
        size.width * 0.7159938,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.7159938, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.7347754, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.7356246,
        size.height * 0.008426966,
        size.width * 0.7363138,
        size.height * 0.007169326,
        size.width * 0.7363138,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.7363138,
        size.height * 0.004066618,
        size.width * 0.7356246,
        size.height * 0.002808989,
        size.width * 0.7347754,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.7347754, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.7535569, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.7527077,
        size.height * 0.002808989,
        size.width * 0.7520185,
        size.height * 0.004066618,
        size.width * 0.7520185,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.7520185,
        size.height * 0.007169326,
        size.width * 0.7527077,
        size.height * 0.008426966,
        size.width * 0.7535569,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.7535569, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.7723385, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.7731908,
        size.height * 0.008426966,
        size.width * 0.7738769,
        size.height * 0.007169326,
        size.width * 0.7738769,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.7738769,
        size.height * 0.004066618,
        size.width * 0.7731908,
        size.height * 0.002808989,
        size.width * 0.7723385,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.7723385, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.7911231, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.7902738,
        size.height * 0.002808989,
        size.width * 0.7895846,
        size.height * 0.004066618,
        size.width * 0.7895846,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.7895846,
        size.height * 0.007169326,
        size.width * 0.7902738,
        size.height * 0.008426966,
        size.width * 0.7911231,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.7911231, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.8099046, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.8107538,
        size.height * 0.008426966,
        size.width * 0.8114431,
        size.height * 0.007169326,
        size.width * 0.8114431,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.8114431,
        size.height * 0.004066618,
        size.width * 0.8107538,
        size.height * 0.002808989,
        size.width * 0.8099046,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.8099046, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.8286862, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.8278369,
        size.height * 0.002808989,
        size.width * 0.8271477,
        size.height * 0.004066618,
        size.width * 0.8271477,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.8271477,
        size.height * 0.007169326,
        size.width * 0.8278369,
        size.height * 0.008426966,
        size.width * 0.8286862,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.8286862, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.8474677, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.8483169,
        size.height * 0.008426966,
        size.width * 0.8490062,
        size.height * 0.007169326,
        size.width * 0.8490062,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.8490062,
        size.height * 0.004066618,
        size.width * 0.8483169,
        size.height * 0.002808989,
        size.width * 0.8474677,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.8474677, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.8662492, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.8654000,
        size.height * 0.002808989,
        size.width * 0.8647108,
        size.height * 0.004066618,
        size.width * 0.8647108,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.8647108,
        size.height * 0.007169326,
        size.width * 0.8654000,
        size.height * 0.008426966,
        size.width * 0.8662492,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.8662492, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.8850308, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.8858831,
        size.height * 0.008426966,
        size.width * 0.8865692,
        size.height * 0.007169326,
        size.width * 0.8865692,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.8865692,
        size.height * 0.004066618,
        size.width * 0.8858831,
        size.height * 0.002808989,
        size.width * 0.8850308,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.8850308, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.9038154, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.9029631,
        size.height * 0.002808989,
        size.width * 0.9022769,
        size.height * 0.004066618,
        size.width * 0.9022769,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.9022769,
        size.height * 0.007169326,
        size.width * 0.9029631,
        size.height * 0.008426966,
        size.width * 0.9038154,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.9038154, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.9225969, size.height * 0.008426966);
    path_1.cubicTo(
        size.width * 0.9234462,
        size.height * 0.008426966,
        size.width * 0.9241354,
        size.height * 0.007169326,
        size.width * 0.9241354,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.9241354,
        size.height * 0.004066618,
        size.width * 0.9234462,
        size.height * 0.002808989,
        size.width * 0.9225969,
        size.height * 0.002808989);
    path_1.lineTo(size.width * 0.9225969, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.9413785, size.height * 0.002808989);
    path_1.cubicTo(
        size.width * 0.9405292,
        size.height * 0.002808989,
        size.width * 0.9398400,
        size.height * 0.004066618,
        size.width * 0.9398400,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.9398400,
        size.height * 0.007169326,
        size.width * 0.9405292,
        size.height * 0.008426966,
        size.width * 0.9413785,
        size.height * 0.008426966);
    path_1.lineTo(size.width * 0.9413785, size.height * 0.002808989);
    path_1.close();
    path_1.moveTo(size.width * 0.04923077, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.05862185, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.05862185, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.04923077, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.04923077, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.07740369, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.09618585, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.09618585, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.07740369, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.07740369, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.1149680, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.1337498, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.1337498, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.1149680, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.1149680, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.1525320, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.1713142, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.1713142, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.1525320, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.1525320, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.1900960, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.2088782, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.2088782, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.1900960, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.1900960, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.2276603, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.2464425, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.2464425, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.2276603, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.2276603, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.2652243, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.2840065, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.2840065, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.2652243, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.2652243, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.3027883, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.3215692, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.3215692, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.3027883, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.3027883, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.3403538, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.3591354, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.3591354, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.3403538, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.3403538, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.3779169, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.3966985, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.3966985, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.3779169, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.3779169, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.4154800, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.4342615, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.4342615, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.4154800, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.4154800, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.4530462, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.4718277, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.4718277, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.4530462, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.4530462, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.4906092, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.5093908, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.5093908, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.4906092, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.4906092, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.5281723, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.5469538, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.5469538, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.5281723, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.5281723, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.5657385, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.5845200, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.5845200, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.5657385, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.5657385, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.6033015, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.6220831, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.6220831, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.6033015, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.6033015, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.6408646, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.6596462, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.6596462, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.6408646, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.6408646, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.6784308, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.6972123, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.6972123, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.6784308, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.6784308, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.7159938, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.7347754, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.7347754, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.7159938, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.7159938, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.7535569, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.7723385, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.7723385, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.7535569, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.7535569, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.7911231, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.8099046, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.8099046, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.7911231, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.7911231, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.8286862, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.8474677, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.8474677, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.8286862, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.8286862, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.8662492, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.8850308, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.8850308, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.8662492, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.8662492, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.9038154, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.9225969, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.9225969, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.9038154, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.9038154, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.9413785, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.9507692, size.height * 0.008426966);
    path_1.lineTo(size.width * 0.9507692, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.9413785, size.height * 0.002808989);
    path_1.lineTo(size.width * 0.9413785, size.height * 0.008426966);
    path_1.close();
    path_1.moveTo(size.width * 0.04923077, 0);
    path_1.cubicTo(
        size.width * 0.04753138,
        0,
        size.width * 0.04615385,
        size.height * 0.002515253,
        size.width * 0.04615385,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.04615385,
        size.height * 0.008720674,
        size.width * 0.04753138,
        size.height * 0.01123596,
        size.width * 0.04923077,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.04923077, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.05862185, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.06032123,
        size.height * 0.01123596,
        size.width * 0.06169877,
        size.height * 0.008720674,
        size.width * 0.06169877,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.06169877, size.height * 0.002515253,
        size.width * 0.06032123, 0, size.width * 0.05862185, 0);
    path_1.lineTo(size.width * 0.05862185, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.07740369, 0);
    path_1.cubicTo(
        size.width * 0.07570462,
        0,
        size.width * 0.07432677,
        size.height * 0.002515253,
        size.width * 0.07432677,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.07432677,
        size.height * 0.008720674,
        size.width * 0.07570462,
        size.height * 0.01123596,
        size.width * 0.07740369,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.07740369, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.09618585, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.09788523,
        size.height * 0.01123596,
        size.width * 0.09926277,
        size.height * 0.008720674,
        size.width * 0.09926277,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.09926277, size.height * 0.002515253,
        size.width * 0.09788523, 0, size.width * 0.09618585, 0);
    path_1.lineTo(size.width * 0.09618585, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.1149680, 0);
    path_1.cubicTo(
        size.width * 0.1132686,
        0,
        size.width * 0.1118911,
        size.height * 0.002515253,
        size.width * 0.1118911,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.1118911,
        size.height * 0.008720674,
        size.width * 0.1132686,
        size.height * 0.01123596,
        size.width * 0.1149680,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.1149680, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.1337498, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.1354492,
        size.height * 0.01123596,
        size.width * 0.1368268,
        size.height * 0.008720674,
        size.width * 0.1368268,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.1368268, size.height * 0.002515253,
        size.width * 0.1354492, 0, size.width * 0.1337498, 0);
    path_1.lineTo(size.width * 0.1337498, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.1525320, 0);
    path_1.cubicTo(
        size.width * 0.1508326,
        0,
        size.width * 0.1494551,
        size.height * 0.002515253,
        size.width * 0.1494551,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.1494551,
        size.height * 0.008720674,
        size.width * 0.1508326,
        size.height * 0.01123596,
        size.width * 0.1525320,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.1525320, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.1713142, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.1730135,
        size.height * 0.01123596,
        size.width * 0.1743911,
        size.height * 0.008720674,
        size.width * 0.1743911,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.1743911, size.height * 0.002515253,
        size.width * 0.1730135, 0, size.width * 0.1713142, 0);
    path_1.lineTo(size.width * 0.1713142, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.1900960, 0);
    path_1.cubicTo(
        size.width * 0.1883969,
        0,
        size.width * 0.1870191,
        size.height * 0.002515253,
        size.width * 0.1870191,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.1870191,
        size.height * 0.008720674,
        size.width * 0.1883969,
        size.height * 0.01123596,
        size.width * 0.1900960,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.1900960, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.2088782, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.2105775,
        size.height * 0.01123596,
        size.width * 0.2119551,
        size.height * 0.008720674,
        size.width * 0.2119551,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.2119551, size.height * 0.002515253,
        size.width * 0.2105775, 0, size.width * 0.2088782, 0);
    path_1.lineTo(size.width * 0.2088782, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.2276603, 0);
    path_1.cubicTo(
        size.width * 0.2259609,
        0,
        size.width * 0.2245834,
        size.height * 0.002515253,
        size.width * 0.2245834,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.2245834,
        size.height * 0.008720674,
        size.width * 0.2259609,
        size.height * 0.01123596,
        size.width * 0.2276603,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.2276603, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.2464425, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.2481415,
        size.height * 0.01123596,
        size.width * 0.2495194,
        size.height * 0.008720674,
        size.width * 0.2495194,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.2495194, size.height * 0.002515253,
        size.width * 0.2481415, 0, size.width * 0.2464425, 0);
    path_1.lineTo(size.width * 0.2464425, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.2652243, 0);
    path_1.cubicTo(
        size.width * 0.2635249,
        0,
        size.width * 0.2621474,
        size.height * 0.002515253,
        size.width * 0.2621474,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.2621474,
        size.height * 0.008720674,
        size.width * 0.2635249,
        size.height * 0.01123596,
        size.width * 0.2652243,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.2652243, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.2840065, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.2857058,
        size.height * 0.01123596,
        size.width * 0.2870834,
        size.height * 0.008720674,
        size.width * 0.2870834,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.2870834, size.height * 0.002515253,
        size.width * 0.2857058, 0, size.width * 0.2840065, 0);
    path_1.lineTo(size.width * 0.2840065, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.3027883, 0);
    path_1.cubicTo(
        size.width * 0.3010892,
        0,
        size.width * 0.2997114,
        size.height * 0.002515253,
        size.width * 0.2997114,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.2997114,
        size.height * 0.008720674,
        size.width * 0.3010892,
        size.height * 0.01123596,
        size.width * 0.3027883,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.3027883, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.3215692, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.3232708,
        size.height * 0.01123596,
        size.width * 0.3246462,
        size.height * 0.008720674,
        size.width * 0.3246462,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.3246462, size.height * 0.002515253,
        size.width * 0.3232708, 0, size.width * 0.3215692, 0);
    path_1.lineTo(size.width * 0.3215692, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.3403538, 0);
    path_1.cubicTo(
        size.width * 0.3386523,
        0,
        size.width * 0.3372769,
        size.height * 0.002515253,
        size.width * 0.3372769,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.3372769,
        size.height * 0.008720674,
        size.width * 0.3386523,
        size.height * 0.01123596,
        size.width * 0.3403538,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.3403538, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.3591354, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.3608338,
        size.height * 0.01123596,
        size.width * 0.3622123,
        size.height * 0.008720674,
        size.width * 0.3622123,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.3622123, size.height * 0.002515253,
        size.width * 0.3608338, 0, size.width * 0.3591354, 0);
    path_1.lineTo(size.width * 0.3591354, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.3779169, 0);
    path_1.cubicTo(
        size.width * 0.3762185,
        0,
        size.width * 0.3748400,
        size.height * 0.002515253,
        size.width * 0.3748400,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.3748400,
        size.height * 0.008720674,
        size.width * 0.3762185,
        size.height * 0.01123596,
        size.width * 0.3779169,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.3779169, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.3966985, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.3983969,
        size.height * 0.01123596,
        size.width * 0.3997754,
        size.height * 0.008720674,
        size.width * 0.3997754,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.3997754, size.height * 0.002515253,
        size.width * 0.3983969, 0, size.width * 0.3966985, 0);
    path_1.lineTo(size.width * 0.3966985, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.4154800, 0);
    path_1.cubicTo(
        size.width * 0.4137815,
        0,
        size.width * 0.4124031,
        size.height * 0.002515253,
        size.width * 0.4124031,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.4124031,
        size.height * 0.008720674,
        size.width * 0.4137815,
        size.height * 0.01123596,
        size.width * 0.4154800,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.4154800, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.4342615, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.4359631,
        size.height * 0.01123596,
        size.width * 0.4373385,
        size.height * 0.008720674,
        size.width * 0.4373385,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.4373385, size.height * 0.002515253,
        size.width * 0.4359631, 0, size.width * 0.4342615, 0);
    path_1.lineTo(size.width * 0.4342615, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.4530462, 0);
    path_1.cubicTo(
        size.width * 0.4513446,
        0,
        size.width * 0.4499692,
        size.height * 0.002515253,
        size.width * 0.4499692,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.4499692,
        size.height * 0.008720674,
        size.width * 0.4513446,
        size.height * 0.01123596,
        size.width * 0.4530462,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.4530462, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.4718277, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.4735262,
        size.height * 0.01123596,
        size.width * 0.4749046,
        size.height * 0.008720674,
        size.width * 0.4749046,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.4749046, size.height * 0.002515253,
        size.width * 0.4735262, 0, size.width * 0.4718277, 0);
    path_1.lineTo(size.width * 0.4718277, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.4906092, 0);
    path_1.cubicTo(
        size.width * 0.4889108,
        0,
        size.width * 0.4875323,
        size.height * 0.002515253,
        size.width * 0.4875323,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.4875323,
        size.height * 0.008720674,
        size.width * 0.4889108,
        size.height * 0.01123596,
        size.width * 0.4906092,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.4906092, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.5093908, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.5110892,
        size.height * 0.01123596,
        size.width * 0.5124677,
        size.height * 0.008720674,
        size.width * 0.5124677,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.5124677, size.height * 0.002515253,
        size.width * 0.5110892, 0, size.width * 0.5093908, 0);
    path_1.lineTo(size.width * 0.5093908, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.5281723, 0);
    path_1.cubicTo(
        size.width * 0.5264738,
        0,
        size.width * 0.5250954,
        size.height * 0.002515253,
        size.width * 0.5250954,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.5250954,
        size.height * 0.008720674,
        size.width * 0.5264738,
        size.height * 0.01123596,
        size.width * 0.5281723,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.5281723, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.5469538, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.5486554,
        size.height * 0.01123596,
        size.width * 0.5500308,
        size.height * 0.008720674,
        size.width * 0.5500308,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.5500308, size.height * 0.002515253,
        size.width * 0.5486554, 0, size.width * 0.5469538, 0);
    path_1.lineTo(size.width * 0.5469538, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.5657385, 0);
    path_1.cubicTo(
        size.width * 0.5640369,
        0,
        size.width * 0.5626615,
        size.height * 0.002515253,
        size.width * 0.5626615,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.5626615,
        size.height * 0.008720674,
        size.width * 0.5640369,
        size.height * 0.01123596,
        size.width * 0.5657385,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.5657385, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.5845200, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.5862185,
        size.height * 0.01123596,
        size.width * 0.5875969,
        size.height * 0.008720674,
        size.width * 0.5875969,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.5875969, size.height * 0.002515253,
        size.width * 0.5862185, 0, size.width * 0.5845200, 0);
    path_1.lineTo(size.width * 0.5845200, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.6033015, 0);
    path_1.cubicTo(
        size.width * 0.6016031,
        0,
        size.width * 0.6002246,
        size.height * 0.002515253,
        size.width * 0.6002246,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.6002246,
        size.height * 0.008720674,
        size.width * 0.6016031,
        size.height * 0.01123596,
        size.width * 0.6033015,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.6033015, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.6220831, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.6237815,
        size.height * 0.01123596,
        size.width * 0.6251600,
        size.height * 0.008720674,
        size.width * 0.6251600,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.6251600, size.height * 0.002515253,
        size.width * 0.6237815, 0, size.width * 0.6220831, 0);
    path_1.lineTo(size.width * 0.6220831, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.6408646, 0);
    path_1.cubicTo(
        size.width * 0.6391662,
        0,
        size.width * 0.6377877,
        size.height * 0.002515253,
        size.width * 0.6377877,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.6377877,
        size.height * 0.008720674,
        size.width * 0.6391662,
        size.height * 0.01123596,
        size.width * 0.6408646,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.6408646, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.6596462, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.6613477,
        size.height * 0.01123596,
        size.width * 0.6627231,
        size.height * 0.008720674,
        size.width * 0.6627231,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.6627231, size.height * 0.002515253,
        size.width * 0.6613477, 0, size.width * 0.6596462, 0);
    path_1.lineTo(size.width * 0.6596462, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.6784308, 0);
    path_1.cubicTo(
        size.width * 0.6767292,
        0,
        size.width * 0.6753538,
        size.height * 0.002515253,
        size.width * 0.6753538,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.6753538,
        size.height * 0.008720674,
        size.width * 0.6767292,
        size.height * 0.01123596,
        size.width * 0.6784308,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.6784308, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.6972123, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.6989108,
        size.height * 0.01123596,
        size.width * 0.7002892,
        size.height * 0.008720674,
        size.width * 0.7002892,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.7002892, size.height * 0.002515253,
        size.width * 0.6989108, 0, size.width * 0.6972123, 0);
    path_1.lineTo(size.width * 0.6972123, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.7159938, 0);
    path_1.cubicTo(
        size.width * 0.7142954,
        0,
        size.width * 0.7129169,
        size.height * 0.002515253,
        size.width * 0.7129169,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.7129169,
        size.height * 0.008720674,
        size.width * 0.7142954,
        size.height * 0.01123596,
        size.width * 0.7159938,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.7159938, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.7347754, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.7364738,
        size.height * 0.01123596,
        size.width * 0.7378523,
        size.height * 0.008720674,
        size.width * 0.7378523,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.7378523, size.height * 0.002515253,
        size.width * 0.7364738, 0, size.width * 0.7347754, 0);
    path_1.lineTo(size.width * 0.7347754, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.7535569, 0);
    path_1.cubicTo(
        size.width * 0.7518585,
        0,
        size.width * 0.7504800,
        size.height * 0.002515253,
        size.width * 0.7504800,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.7504800,
        size.height * 0.008720674,
        size.width * 0.7518585,
        size.height * 0.01123596,
        size.width * 0.7535569,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.7535569, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.7723385, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.7740400,
        size.height * 0.01123596,
        size.width * 0.7754154,
        size.height * 0.008720674,
        size.width * 0.7754154,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.7754154, size.height * 0.002515253,
        size.width * 0.7740400, 0, size.width * 0.7723385, 0);
    path_1.lineTo(size.width * 0.7723385, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.7911231, 0);
    path_1.cubicTo(
        size.width * 0.7894215,
        0,
        size.width * 0.7880462,
        size.height * 0.002515253,
        size.width * 0.7880462,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.7880462,
        size.height * 0.008720674,
        size.width * 0.7894215,
        size.height * 0.01123596,
        size.width * 0.7911231,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.7911231, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.8099046, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.8116031,
        size.height * 0.01123596,
        size.width * 0.8129815,
        size.height * 0.008720674,
        size.width * 0.8129815,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.8129815, size.height * 0.002515253,
        size.width * 0.8116031, 0, size.width * 0.8099046, 0);
    path_1.lineTo(size.width * 0.8099046, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.8286862, 0);
    path_1.cubicTo(
        size.width * 0.8269877,
        0,
        size.width * 0.8256092,
        size.height * 0.002515253,
        size.width * 0.8256092,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.8256092,
        size.height * 0.008720674,
        size.width * 0.8269877,
        size.height * 0.01123596,
        size.width * 0.8286862,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.8286862, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.8474677, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.8491662,
        size.height * 0.01123596,
        size.width * 0.8505446,
        size.height * 0.008720674,
        size.width * 0.8505446,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.8505446, size.height * 0.002515253,
        size.width * 0.8491662, 0, size.width * 0.8474677, 0);
    path_1.lineTo(size.width * 0.8474677, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.8662492, 0);
    path_1.cubicTo(
        size.width * 0.8645508,
        0,
        size.width * 0.8631723,
        size.height * 0.002515253,
        size.width * 0.8631723,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.8631723,
        size.height * 0.008720674,
        size.width * 0.8645508,
        size.height * 0.01123596,
        size.width * 0.8662492,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.8662492, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.8850308, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.8867323,
        size.height * 0.01123596,
        size.width * 0.8881077,
        size.height * 0.008720674,
        size.width * 0.8881077,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.8881077, size.height * 0.002515253,
        size.width * 0.8867323, 0, size.width * 0.8850308, 0);
    path_1.lineTo(size.width * 0.8850308, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.9038154, 0);
    path_1.cubicTo(
        size.width * 0.9021138,
        0,
        size.width * 0.9007385,
        size.height * 0.002515253,
        size.width * 0.9007385,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.9007385,
        size.height * 0.008720674,
        size.width * 0.9021138,
        size.height * 0.01123596,
        size.width * 0.9038154,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.9038154, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.9225969, size.height * 0.01123596);
    path_1.cubicTo(
        size.width * 0.9242954,
        size.height * 0.01123596,
        size.width * 0.9256738,
        size.height * 0.008720674,
        size.width * 0.9256738,
        size.height * 0.005617978);
    path_1.cubicTo(size.width * 0.9256738, size.height * 0.002515253,
        size.width * 0.9242954, 0, size.width * 0.9225969, 0);
    path_1.lineTo(size.width * 0.9225969, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.9413785, 0);
    path_1.cubicTo(
        size.width * 0.9396800,
        0,
        size.width * 0.9383015,
        size.height * 0.002515253,
        size.width * 0.9383015,
        size.height * 0.005617978);
    path_1.cubicTo(
        size.width * 0.9383015,
        size.height * 0.008720674,
        size.width * 0.9396800,
        size.height * 0.01123596,
        size.width * 0.9413785,
        size.height * 0.01123596);
    path_1.lineTo(size.width * 0.9413785, 0);
    path_1.close();
    path_1.moveTo(size.width * 0.04923077, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.05862185, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.05862185, 0);
    path_1.lineTo(size.width * 0.04923077, 0);
    path_1.lineTo(size.width * 0.04923077, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.07740369, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.09618585, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.09618585, 0);
    path_1.lineTo(size.width * 0.07740369, 0);
    path_1.lineTo(size.width * 0.07740369, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.1149680, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.1337498, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.1337498, 0);
    path_1.lineTo(size.width * 0.1149680, 0);
    path_1.lineTo(size.width * 0.1149680, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.1525320, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.1713142, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.1713142, 0);
    path_1.lineTo(size.width * 0.1525320, 0);
    path_1.lineTo(size.width * 0.1525320, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.1900960, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.2088782, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.2088782, 0);
    path_1.lineTo(size.width * 0.1900960, 0);
    path_1.lineTo(size.width * 0.1900960, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.2276603, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.2464425, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.2464425, 0);
    path_1.lineTo(size.width * 0.2276603, 0);
    path_1.lineTo(size.width * 0.2276603, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.2652243, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.2840065, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.2840065, 0);
    path_1.lineTo(size.width * 0.2652243, 0);
    path_1.lineTo(size.width * 0.2652243, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.3027883, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.3215692, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.3215692, 0);
    path_1.lineTo(size.width * 0.3027883, 0);
    path_1.lineTo(size.width * 0.3027883, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.3403538, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.3591354, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.3591354, 0);
    path_1.lineTo(size.width * 0.3403538, 0);
    path_1.lineTo(size.width * 0.3403538, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.3779169, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.3966985, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.3966985, 0);
    path_1.lineTo(size.width * 0.3779169, 0);
    path_1.lineTo(size.width * 0.3779169, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.4154800, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.4342615, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.4342615, 0);
    path_1.lineTo(size.width * 0.4154800, 0);
    path_1.lineTo(size.width * 0.4154800, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.4530462, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.4718277, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.4718277, 0);
    path_1.lineTo(size.width * 0.4530462, 0);
    path_1.lineTo(size.width * 0.4530462, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.4906092, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.5093908, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.5093908, 0);
    path_1.lineTo(size.width * 0.4906092, 0);
    path_1.lineTo(size.width * 0.4906092, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.5281723, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.5469538, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.5469538, 0);
    path_1.lineTo(size.width * 0.5281723, 0);
    path_1.lineTo(size.width * 0.5281723, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.5657385, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.5845200, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.5845200, 0);
    path_1.lineTo(size.width * 0.5657385, 0);
    path_1.lineTo(size.width * 0.5657385, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.6033015, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.6220831, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.6220831, 0);
    path_1.lineTo(size.width * 0.6033015, 0);
    path_1.lineTo(size.width * 0.6033015, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.6408646, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.6596462, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.6596462, 0);
    path_1.lineTo(size.width * 0.6408646, 0);
    path_1.lineTo(size.width * 0.6408646, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.6784308, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.6972123, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.6972123, 0);
    path_1.lineTo(size.width * 0.6784308, 0);
    path_1.lineTo(size.width * 0.6784308, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.7159938, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.7347754, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.7347754, 0);
    path_1.lineTo(size.width * 0.7159938, 0);
    path_1.lineTo(size.width * 0.7159938, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.7535569, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.7723385, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.7723385, 0);
    path_1.lineTo(size.width * 0.7535569, 0);
    path_1.lineTo(size.width * 0.7535569, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.7911231, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.8099046, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.8099046, 0);
    path_1.lineTo(size.width * 0.7911231, 0);
    path_1.lineTo(size.width * 0.7911231, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.8286862, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.8474677, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.8474677, 0);
    path_1.lineTo(size.width * 0.8286862, 0);
    path_1.lineTo(size.width * 0.8286862, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.8662492, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.8850308, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.8850308, 0);
    path_1.lineTo(size.width * 0.8662492, 0);
    path_1.lineTo(size.width * 0.8662492, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.9038154, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.9225969, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.9225969, 0);
    path_1.lineTo(size.width * 0.9038154, 0);
    path_1.lineTo(size.width * 0.9038154, size.height * 0.01123596);
    path_1.close();
    path_1.moveTo(size.width * 0.9413785, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.9507692, size.height * 0.01123596);
    path_1.lineTo(size.width * 0.9507692, 0);
    path_1.lineTo(size.width * 0.9413785, 0);
    path_1.lineTo(size.width * 0.9413785, size.height * 0.01123596);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = const Color(0xffE5E5E5).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.04923077, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.04838123,
        size.height * 0.9915730,
        size.width * 0.04769231,
        size.height * 0.9928315,
        size.width * 0.04769231,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.04769231,
        size.height * 0.9959326,
        size.width * 0.04838123,
        size.height * 0.9971910,
        size.width * 0.04923077,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.04923077, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.05862185, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.05947138,
        size.height * 0.9971910,
        size.width * 0.06016031,
        size.height * 0.9959326,
        size.width * 0.06016031,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.06016031,
        size.height * 0.9928315,
        size.width * 0.05947138,
        size.height * 0.9915730,
        size.width * 0.05862185,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.05862185, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.07740369, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.07655415,
        size.height * 0.9915730,
        size.width * 0.07586523,
        size.height * 0.9928315,
        size.width * 0.07586523,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.07586523,
        size.height * 0.9959326,
        size.width * 0.07655415,
        size.height * 0.9971910,
        size.width * 0.07740369,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.07740369, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.09618585, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.09703569,
        size.height * 0.9971910,
        size.width * 0.09772431,
        size.height * 0.9959326,
        size.width * 0.09772431,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.09772431,
        size.height * 0.9928315,
        size.width * 0.09703569,
        size.height * 0.9915730,
        size.width * 0.09618585,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.09618585, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.1149680, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.1141182,
        size.height * 0.9915730,
        size.width * 0.1134295,
        size.height * 0.9928315,
        size.width * 0.1134295,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.1134295,
        size.height * 0.9959326,
        size.width * 0.1141182,
        size.height * 0.9971910,
        size.width * 0.1149680,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.1149680, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.1337498, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.1345997,
        size.height * 0.9971910,
        size.width * 0.1352883,
        size.height * 0.9959326,
        size.width * 0.1352883,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.1352883,
        size.height * 0.9928315,
        size.width * 0.1345997,
        size.height * 0.9915730,
        size.width * 0.1337498,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.1337498, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.1525320, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.1516825,
        size.height * 0.9915730,
        size.width * 0.1509935,
        size.height * 0.9928315,
        size.width * 0.1509935,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.1509935,
        size.height * 0.9959326,
        size.width * 0.1516825,
        size.height * 0.9971910,
        size.width * 0.1525320,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.1525320, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.1713142, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.1721637,
        size.height * 0.9971910,
        size.width * 0.1728526,
        size.height * 0.9959326,
        size.width * 0.1728526,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.1728526,
        size.height * 0.9928315,
        size.width * 0.1721637,
        size.height * 0.9915730,
        size.width * 0.1713142,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.1713142, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.1900960, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.1892465,
        size.height * 0.9915730,
        size.width * 0.1885575,
        size.height * 0.9928315,
        size.width * 0.1885575,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.1885575,
        size.height * 0.9959326,
        size.width * 0.1892465,
        size.height * 0.9971910,
        size.width * 0.1900960,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.1900960, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.2088782, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.2097280,
        size.height * 0.9971910,
        size.width * 0.2104166,
        size.height * 0.9959326,
        size.width * 0.2104166,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.2104166,
        size.height * 0.9928315,
        size.width * 0.2097280,
        size.height * 0.9915730,
        size.width * 0.2088782,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.2088782, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.2276603, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.2268105,
        size.height * 0.9915730,
        size.width * 0.2261218,
        size.height * 0.9928315,
        size.width * 0.2261218,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.2261218,
        size.height * 0.9959326,
        size.width * 0.2268105,
        size.height * 0.9971910,
        size.width * 0.2276603,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.2276603, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.2464425, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.2472920,
        size.height * 0.9971910,
        size.width * 0.2479809,
        size.height * 0.9959326,
        size.width * 0.2479809,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.2479809,
        size.height * 0.9928315,
        size.width * 0.2472920,
        size.height * 0.9915730,
        size.width * 0.2464425,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.2464425, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.2652243, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.2643748,
        size.height * 0.9915730,
        size.width * 0.2636858,
        size.height * 0.9928315,
        size.width * 0.2636858,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.2636858,
        size.height * 0.9959326,
        size.width * 0.2643748,
        size.height * 0.9971910,
        size.width * 0.2652243,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.2652243, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.2840065, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.2848560,
        size.height * 0.9971910,
        size.width * 0.2855449,
        size.height * 0.9959326,
        size.width * 0.2855449,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.2855449,
        size.height * 0.9928315,
        size.width * 0.2848560,
        size.height * 0.9915730,
        size.width * 0.2840065,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.2840065, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.3027883, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.3019388,
        size.height * 0.9915730,
        size.width * 0.3012498,
        size.height * 0.9928315,
        size.width * 0.3012498,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.3012498,
        size.height * 0.9959326,
        size.width * 0.3019388,
        size.height * 0.9971910,
        size.width * 0.3027883,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.3027883, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.3215692, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.3224215,
        size.height * 0.9971910,
        size.width * 0.3231077,
        size.height * 0.9959326,
        size.width * 0.3231077,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.3231077,
        size.height * 0.9928315,
        size.width * 0.3224215,
        size.height * 0.9915730,
        size.width * 0.3215692,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.3215692, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.3403538, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.3395015,
        size.height * 0.9915730,
        size.width * 0.3388154,
        size.height * 0.9928315,
        size.width * 0.3388154,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.3388154,
        size.height * 0.9959326,
        size.width * 0.3395015,
        size.height * 0.9971910,
        size.width * 0.3403538,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.3403538, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.3591354, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.3599846,
        size.height * 0.9971910,
        size.width * 0.3606738,
        size.height * 0.9959326,
        size.width * 0.3606738,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.3606738,
        size.height * 0.9928315,
        size.width * 0.3599846,
        size.height * 0.9915730,
        size.width * 0.3591354,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.3591354, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.3779169, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.3770677,
        size.height * 0.9915730,
        size.width * 0.3763785,
        size.height * 0.9928315,
        size.width * 0.3763785,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.3763785,
        size.height * 0.9959326,
        size.width * 0.3770677,
        size.height * 0.9971910,
        size.width * 0.3779169,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.3779169, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.3966985, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.3975477,
        size.height * 0.9971910,
        size.width * 0.3982369,
        size.height * 0.9959326,
        size.width * 0.3982369,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.3982369,
        size.height * 0.9928315,
        size.width * 0.3975477,
        size.height * 0.9915730,
        size.width * 0.3966985,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.3966985, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.4154800, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.4146308,
        size.height * 0.9915730,
        size.width * 0.4139415,
        size.height * 0.9928315,
        size.width * 0.4139415,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.4139415,
        size.height * 0.9959326,
        size.width * 0.4146308,
        size.height * 0.9971910,
        size.width * 0.4154800,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.4154800, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.4342615, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.4351138,
        size.height * 0.9971910,
        size.width * 0.4358000,
        size.height * 0.9959326,
        size.width * 0.4358000,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.4358000,
        size.height * 0.9928315,
        size.width * 0.4351138,
        size.height * 0.9915730,
        size.width * 0.4342615,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.4342615, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.4530462, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.4521938,
        size.height * 0.9915730,
        size.width * 0.4515077,
        size.height * 0.9928315,
        size.width * 0.4515077,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.4515077,
        size.height * 0.9959326,
        size.width * 0.4521938,
        size.height * 0.9971910,
        size.width * 0.4530462,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.4530462, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.4718277, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.4726769,
        size.height * 0.9971910,
        size.width * 0.4733662,
        size.height * 0.9959326,
        size.width * 0.4733662,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.4733662,
        size.height * 0.9928315,
        size.width * 0.4726769,
        size.height * 0.9915730,
        size.width * 0.4718277,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.4718277, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.4906092, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.4897600,
        size.height * 0.9915730,
        size.width * 0.4890708,
        size.height * 0.9928315,
        size.width * 0.4890708,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.4890708,
        size.height * 0.9959326,
        size.width * 0.4897600,
        size.height * 0.9971910,
        size.width * 0.4906092,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.4906092, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.5093908, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.5102400,
        size.height * 0.9971910,
        size.width * 0.5109292,
        size.height * 0.9959326,
        size.width * 0.5109292,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.5109292,
        size.height * 0.9928315,
        size.width * 0.5102400,
        size.height * 0.9915730,
        size.width * 0.5093908,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.5093908, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.5281723, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.5273231,
        size.height * 0.9915730,
        size.width * 0.5266338,
        size.height * 0.9928315,
        size.width * 0.5266338,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.5266338,
        size.height * 0.9959326,
        size.width * 0.5273231,
        size.height * 0.9971910,
        size.width * 0.5281723,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.5281723, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.5469538, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.5478062,
        size.height * 0.9971910,
        size.width * 0.5484923,
        size.height * 0.9959326,
        size.width * 0.5484923,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.5484923,
        size.height * 0.9928315,
        size.width * 0.5478062,
        size.height * 0.9915730,
        size.width * 0.5469538,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.5469538, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.5657385, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.5648862,
        size.height * 0.9915730,
        size.width * 0.5642000,
        size.height * 0.9928315,
        size.width * 0.5642000,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.5642000,
        size.height * 0.9959326,
        size.width * 0.5648862,
        size.height * 0.9971910,
        size.width * 0.5657385,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.5657385, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.5845200, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.5853692,
        size.height * 0.9971910,
        size.width * 0.5860585,
        size.height * 0.9959326,
        size.width * 0.5860585,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.5860585,
        size.height * 0.9928315,
        size.width * 0.5853692,
        size.height * 0.9915730,
        size.width * 0.5845200,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.5845200, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.6033015, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.6024523,
        size.height * 0.9915730,
        size.width * 0.6017631,
        size.height * 0.9928315,
        size.width * 0.6017631,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.6017631,
        size.height * 0.9959326,
        size.width * 0.6024523,
        size.height * 0.9971910,
        size.width * 0.6033015,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.6033015, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.6220831, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.6229323,
        size.height * 0.9971910,
        size.width * 0.6236215,
        size.height * 0.9959326,
        size.width * 0.6236215,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.6236215,
        size.height * 0.9928315,
        size.width * 0.6229323,
        size.height * 0.9915730,
        size.width * 0.6220831,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.6220831, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.6408646, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.6400154,
        size.height * 0.9915730,
        size.width * 0.6393262,
        size.height * 0.9928315,
        size.width * 0.6393262,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.6393262,
        size.height * 0.9959326,
        size.width * 0.6400154,
        size.height * 0.9971910,
        size.width * 0.6408646,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.6408646, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.6596462, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.6604985,
        size.height * 0.9971910,
        size.width * 0.6611846,
        size.height * 0.9959326,
        size.width * 0.6611846,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.6611846,
        size.height * 0.9928315,
        size.width * 0.6604985,
        size.height * 0.9915730,
        size.width * 0.6596462,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.6596462, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.6784308, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.6775785,
        size.height * 0.9915730,
        size.width * 0.6768923,
        size.height * 0.9928315,
        size.width * 0.6768923,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.6768923,
        size.height * 0.9959326,
        size.width * 0.6775785,
        size.height * 0.9971910,
        size.width * 0.6784308,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.6784308, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.6972123, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.6980615,
        size.height * 0.9971910,
        size.width * 0.6987508,
        size.height * 0.9959326,
        size.width * 0.6987508,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.6987508,
        size.height * 0.9928315,
        size.width * 0.6980615,
        size.height * 0.9915730,
        size.width * 0.6972123,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.6972123, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.7159938, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.7151446,
        size.height * 0.9915730,
        size.width * 0.7144554,
        size.height * 0.9928315,
        size.width * 0.7144554,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.7144554,
        size.height * 0.9959326,
        size.width * 0.7151446,
        size.height * 0.9971910,
        size.width * 0.7159938,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.7159938, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.7347754, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.7356246,
        size.height * 0.9971910,
        size.width * 0.7363138,
        size.height * 0.9959326,
        size.width * 0.7363138,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.7363138,
        size.height * 0.9928315,
        size.width * 0.7356246,
        size.height * 0.9915730,
        size.width * 0.7347754,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.7347754, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.7535569, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.7527077,
        size.height * 0.9915730,
        size.width * 0.7520185,
        size.height * 0.9928315,
        size.width * 0.7520185,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.7520185,
        size.height * 0.9959326,
        size.width * 0.7527077,
        size.height * 0.9971910,
        size.width * 0.7535569,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.7535569, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.7723385, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.7731908,
        size.height * 0.9971910,
        size.width * 0.7738769,
        size.height * 0.9959326,
        size.width * 0.7738769,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.7738769,
        size.height * 0.9928315,
        size.width * 0.7731908,
        size.height * 0.9915730,
        size.width * 0.7723385,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.7723385, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.7911231, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.7902738,
        size.height * 0.9915730,
        size.width * 0.7895846,
        size.height * 0.9928315,
        size.width * 0.7895846,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.7895846,
        size.height * 0.9959326,
        size.width * 0.7902738,
        size.height * 0.9971910,
        size.width * 0.7911231,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.7911231, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.8099046, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.8107538,
        size.height * 0.9971910,
        size.width * 0.8114431,
        size.height * 0.9959326,
        size.width * 0.8114431,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.8114431,
        size.height * 0.9928315,
        size.width * 0.8107538,
        size.height * 0.9915730,
        size.width * 0.8099046,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.8099046, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.8286862, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.8278369,
        size.height * 0.9915730,
        size.width * 0.8271477,
        size.height * 0.9928315,
        size.width * 0.8271477,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.8271477,
        size.height * 0.9959326,
        size.width * 0.8278369,
        size.height * 0.9971910,
        size.width * 0.8286862,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.8286862, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.8474677, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.8483169,
        size.height * 0.9971910,
        size.width * 0.8490062,
        size.height * 0.9959326,
        size.width * 0.8490062,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.8490062,
        size.height * 0.9928315,
        size.width * 0.8483169,
        size.height * 0.9915730,
        size.width * 0.8474677,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.8474677, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.8662492, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.8654000,
        size.height * 0.9915730,
        size.width * 0.8647108,
        size.height * 0.9928315,
        size.width * 0.8647108,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.8647108,
        size.height * 0.9959326,
        size.width * 0.8654000,
        size.height * 0.9971910,
        size.width * 0.8662492,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.8662492, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.8850308, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.8858831,
        size.height * 0.9971910,
        size.width * 0.8865692,
        size.height * 0.9959326,
        size.width * 0.8865692,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.8865692,
        size.height * 0.9928315,
        size.width * 0.8858831,
        size.height * 0.9915730,
        size.width * 0.8850308,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.8850308, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.9038154, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.9029631,
        size.height * 0.9915730,
        size.width * 0.9022769,
        size.height * 0.9928315,
        size.width * 0.9022769,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.9022769,
        size.height * 0.9959326,
        size.width * 0.9029631,
        size.height * 0.9971910,
        size.width * 0.9038154,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.9038154, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.9225969, size.height * 0.9971910);
    path_2.cubicTo(
        size.width * 0.9234462,
        size.height * 0.9971910,
        size.width * 0.9241354,
        size.height * 0.9959326,
        size.width * 0.9241354,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.9241354,
        size.height * 0.9928315,
        size.width * 0.9234462,
        size.height * 0.9915730,
        size.width * 0.9225969,
        size.height * 0.9915730);
    path_2.lineTo(size.width * 0.9225969, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.9413785, size.height * 0.9915730);
    path_2.cubicTo(
        size.width * 0.9405292,
        size.height * 0.9915730,
        size.width * 0.9398400,
        size.height * 0.9928315,
        size.width * 0.9398400,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.9398400,
        size.height * 0.9959326,
        size.width * 0.9405292,
        size.height * 0.9971910,
        size.width * 0.9413785,
        size.height * 0.9971910);
    path_2.lineTo(size.width * 0.9413785, size.height * 0.9915730);
    path_2.close();
    path_2.moveTo(size.width * 0.04923077, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.05862185, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.05862185, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.04923077, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.04923077, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.07740369, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.09618585, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.09618585, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.07740369, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.07740369, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.1149680, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.1337498, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.1337498, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.1149680, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.1149680, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.1525320, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.1713142, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.1713142, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.1525320, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.1525320, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.1900960, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.2088782, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.2088782, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.1900960, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.1900960, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.2276603, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.2464425, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.2464425, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.2276603, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.2276603, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.2652243, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.2840065, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.2840065, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.2652243, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.2652243, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.3027883, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.3215692, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.3215692, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.3027883, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.3027883, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.3403538, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.3591354, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.3591354, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.3403538, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.3403538, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.3779169, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.3966985, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.3966985, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.3779169, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.3779169, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.4154800, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.4342615, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.4342615, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.4154800, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.4154800, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.4530462, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.4718277, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.4718277, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.4530462, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.4530462, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.4906092, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.5093908, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.5093908, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.4906092, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.4906092, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.5281723, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.5469538, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.5469538, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.5281723, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.5281723, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.5657385, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.5845200, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.5845200, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.5657385, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.5657385, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.6033015, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.6220831, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.6220831, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.6033015, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.6033015, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.6408646, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.6596462, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.6596462, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.6408646, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.6408646, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.6784308, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.6972123, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.6972123, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.6784308, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.6784308, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.7159938, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.7347754, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.7347754, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.7159938, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.7159938, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.7535569, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.7723385, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.7723385, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.7535569, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.7535569, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.7911231, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.8099046, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.8099046, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.7911231, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.7911231, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.8286862, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.8474677, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.8474677, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.8286862, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.8286862, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.8662492, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.8850308, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.8850308, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.8662492, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.8662492, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.9038154, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.9225969, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.9225969, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.9038154, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.9038154, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.9413785, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.9507692, size.height * 0.9971910);
    path_2.lineTo(size.width * 0.9507692, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.9413785, size.height * 0.9915730);
    path_2.lineTo(size.width * 0.9413785, size.height * 0.9971910);
    path_2.close();
    path_2.moveTo(size.width * 0.04923077, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.04753138,
        size.height * 0.9887640,
        size.width * 0.04615385,
        size.height * 0.9912809,
        size.width * 0.04615385,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.04615385,
        size.height * 0.9974831,
        size.width * 0.04753138,
        size.height,
        size.width * 0.04923077,
        size.height);
    path_2.lineTo(size.width * 0.04923077, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.05862185, size.height);
    path_2.cubicTo(
        size.width * 0.06032123,
        size.height,
        size.width * 0.06169877,
        size.height * 0.9974831,
        size.width * 0.06169877,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.06169877,
        size.height * 0.9912809,
        size.width * 0.06032123,
        size.height * 0.9887640,
        size.width * 0.05862185,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.05862185, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.07740369, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.07570462,
        size.height * 0.9887640,
        size.width * 0.07432677,
        size.height * 0.9912809,
        size.width * 0.07432677,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.07432677,
        size.height * 0.9974831,
        size.width * 0.07570462,
        size.height,
        size.width * 0.07740369,
        size.height);
    path_2.lineTo(size.width * 0.07740369, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.09618585, size.height);
    path_2.cubicTo(
        size.width * 0.09788523,
        size.height,
        size.width * 0.09926277,
        size.height * 0.9974831,
        size.width * 0.09926277,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.09926277,
        size.height * 0.9912809,
        size.width * 0.09788523,
        size.height * 0.9887640,
        size.width * 0.09618585,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.09618585, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.1149680, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.1132686,
        size.height * 0.9887640,
        size.width * 0.1118911,
        size.height * 0.9912809,
        size.width * 0.1118911,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.1118911,
        size.height * 0.9974831,
        size.width * 0.1132686,
        size.height,
        size.width * 0.1149680,
        size.height);
    path_2.lineTo(size.width * 0.1149680, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.1337498, size.height);
    path_2.cubicTo(
        size.width * 0.1354492,
        size.height,
        size.width * 0.1368268,
        size.height * 0.9974831,
        size.width * 0.1368268,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.1368268,
        size.height * 0.9912809,
        size.width * 0.1354492,
        size.height * 0.9887640,
        size.width * 0.1337498,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.1337498, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.1525320, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.1508326,
        size.height * 0.9887640,
        size.width * 0.1494551,
        size.height * 0.9912809,
        size.width * 0.1494551,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.1494551,
        size.height * 0.9974831,
        size.width * 0.1508326,
        size.height,
        size.width * 0.1525320,
        size.height);
    path_2.lineTo(size.width * 0.1525320, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.1713142, size.height);
    path_2.cubicTo(
        size.width * 0.1730135,
        size.height,
        size.width * 0.1743911,
        size.height * 0.9974831,
        size.width * 0.1743911,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.1743911,
        size.height * 0.9912809,
        size.width * 0.1730135,
        size.height * 0.9887640,
        size.width * 0.1713142,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.1713142, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.1900960, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.1883969,
        size.height * 0.9887640,
        size.width * 0.1870191,
        size.height * 0.9912809,
        size.width * 0.1870191,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.1870191,
        size.height * 0.9974831,
        size.width * 0.1883969,
        size.height,
        size.width * 0.1900960,
        size.height);
    path_2.lineTo(size.width * 0.1900960, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.2088782, size.height);
    path_2.cubicTo(
        size.width * 0.2105775,
        size.height,
        size.width * 0.2119551,
        size.height * 0.9974831,
        size.width * 0.2119551,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.2119551,
        size.height * 0.9912809,
        size.width * 0.2105775,
        size.height * 0.9887640,
        size.width * 0.2088782,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.2088782, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.2276603, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.2259609,
        size.height * 0.9887640,
        size.width * 0.2245834,
        size.height * 0.9912809,
        size.width * 0.2245834,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.2245834,
        size.height * 0.9974831,
        size.width * 0.2259609,
        size.height,
        size.width * 0.2276603,
        size.height);
    path_2.lineTo(size.width * 0.2276603, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.2464425, size.height);
    path_2.cubicTo(
        size.width * 0.2481415,
        size.height,
        size.width * 0.2495194,
        size.height * 0.9974831,
        size.width * 0.2495194,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.2495194,
        size.height * 0.9912809,
        size.width * 0.2481415,
        size.height * 0.9887640,
        size.width * 0.2464425,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.2464425, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.2652243, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.2635249,
        size.height * 0.9887640,
        size.width * 0.2621474,
        size.height * 0.9912809,
        size.width * 0.2621474,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.2621474,
        size.height * 0.9974831,
        size.width * 0.2635249,
        size.height,
        size.width * 0.2652243,
        size.height);
    path_2.lineTo(size.width * 0.2652243, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.2840065, size.height);
    path_2.cubicTo(
        size.width * 0.2857058,
        size.height,
        size.width * 0.2870834,
        size.height * 0.9974831,
        size.width * 0.2870834,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.2870834,
        size.height * 0.9912809,
        size.width * 0.2857058,
        size.height * 0.9887640,
        size.width * 0.2840065,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.2840065, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.3027883, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.3010892,
        size.height * 0.9887640,
        size.width * 0.2997114,
        size.height * 0.9912809,
        size.width * 0.2997114,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.2997114,
        size.height * 0.9974831,
        size.width * 0.3010892,
        size.height,
        size.width * 0.3027883,
        size.height);
    path_2.lineTo(size.width * 0.3027883, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.3215692, size.height);
    path_2.cubicTo(
        size.width * 0.3232708,
        size.height,
        size.width * 0.3246462,
        size.height * 0.9974831,
        size.width * 0.3246462,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.3246462,
        size.height * 0.9912809,
        size.width * 0.3232708,
        size.height * 0.9887640,
        size.width * 0.3215692,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.3215692, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.3403538, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.3386523,
        size.height * 0.9887640,
        size.width * 0.3372769,
        size.height * 0.9912809,
        size.width * 0.3372769,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.3372769,
        size.height * 0.9974831,
        size.width * 0.3386523,
        size.height,
        size.width * 0.3403538,
        size.height);
    path_2.lineTo(size.width * 0.3403538, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.3591354, size.height);
    path_2.cubicTo(
        size.width * 0.3608338,
        size.height,
        size.width * 0.3622123,
        size.height * 0.9974831,
        size.width * 0.3622123,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.3622123,
        size.height * 0.9912809,
        size.width * 0.3608338,
        size.height * 0.9887640,
        size.width * 0.3591354,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.3591354, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.3779169, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.3762185,
        size.height * 0.9887640,
        size.width * 0.3748400,
        size.height * 0.9912809,
        size.width * 0.3748400,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.3748400,
        size.height * 0.9974831,
        size.width * 0.3762185,
        size.height,
        size.width * 0.3779169,
        size.height);
    path_2.lineTo(size.width * 0.3779169, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.3966985, size.height);
    path_2.cubicTo(
        size.width * 0.3983969,
        size.height,
        size.width * 0.3997754,
        size.height * 0.9974831,
        size.width * 0.3997754,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.3997754,
        size.height * 0.9912809,
        size.width * 0.3983969,
        size.height * 0.9887640,
        size.width * 0.3966985,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.3966985, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.4154800, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.4137815,
        size.height * 0.9887640,
        size.width * 0.4124031,
        size.height * 0.9912809,
        size.width * 0.4124031,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.4124031,
        size.height * 0.9974831,
        size.width * 0.4137815,
        size.height,
        size.width * 0.4154800,
        size.height);
    path_2.lineTo(size.width * 0.4154800, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.4342615, size.height);
    path_2.cubicTo(
        size.width * 0.4359631,
        size.height,
        size.width * 0.4373385,
        size.height * 0.9974831,
        size.width * 0.4373385,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.4373385,
        size.height * 0.9912809,
        size.width * 0.4359631,
        size.height * 0.9887640,
        size.width * 0.4342615,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.4342615, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.4530462, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.4513446,
        size.height * 0.9887640,
        size.width * 0.4499692,
        size.height * 0.9912809,
        size.width * 0.4499692,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.4499692,
        size.height * 0.9974831,
        size.width * 0.4513446,
        size.height,
        size.width * 0.4530462,
        size.height);
    path_2.lineTo(size.width * 0.4530462, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.4718277, size.height);
    path_2.cubicTo(
        size.width * 0.4735262,
        size.height,
        size.width * 0.4749046,
        size.height * 0.9974831,
        size.width * 0.4749046,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.4749046,
        size.height * 0.9912809,
        size.width * 0.4735262,
        size.height * 0.9887640,
        size.width * 0.4718277,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.4718277, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.4906092, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.4889108,
        size.height * 0.9887640,
        size.width * 0.4875323,
        size.height * 0.9912809,
        size.width * 0.4875323,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.4875323,
        size.height * 0.9974831,
        size.width * 0.4889108,
        size.height,
        size.width * 0.4906092,
        size.height);
    path_2.lineTo(size.width * 0.4906092, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.5093908, size.height);
    path_2.cubicTo(
        size.width * 0.5110892,
        size.height,
        size.width * 0.5124677,
        size.height * 0.9974831,
        size.width * 0.5124677,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.5124677,
        size.height * 0.9912809,
        size.width * 0.5110892,
        size.height * 0.9887640,
        size.width * 0.5093908,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.5093908, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.5281723, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.5264738,
        size.height * 0.9887640,
        size.width * 0.5250954,
        size.height * 0.9912809,
        size.width * 0.5250954,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.5250954,
        size.height * 0.9974831,
        size.width * 0.5264738,
        size.height,
        size.width * 0.5281723,
        size.height);
    path_2.lineTo(size.width * 0.5281723, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.5469538, size.height);
    path_2.cubicTo(
        size.width * 0.5486554,
        size.height,
        size.width * 0.5500308,
        size.height * 0.9974831,
        size.width * 0.5500308,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.5500308,
        size.height * 0.9912809,
        size.width * 0.5486554,
        size.height * 0.9887640,
        size.width * 0.5469538,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.5469538, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.5657385, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.5640369,
        size.height * 0.9887640,
        size.width * 0.5626615,
        size.height * 0.9912809,
        size.width * 0.5626615,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.5626615,
        size.height * 0.9974831,
        size.width * 0.5640369,
        size.height,
        size.width * 0.5657385,
        size.height);
    path_2.lineTo(size.width * 0.5657385, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.5845200, size.height);
    path_2.cubicTo(
        size.width * 0.5862185,
        size.height,
        size.width * 0.5875969,
        size.height * 0.9974831,
        size.width * 0.5875969,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.5875969,
        size.height * 0.9912809,
        size.width * 0.5862185,
        size.height * 0.9887640,
        size.width * 0.5845200,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.5845200, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.6033015, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.6016031,
        size.height * 0.9887640,
        size.width * 0.6002246,
        size.height * 0.9912809,
        size.width * 0.6002246,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.6002246,
        size.height * 0.9974831,
        size.width * 0.6016031,
        size.height,
        size.width * 0.6033015,
        size.height);
    path_2.lineTo(size.width * 0.6033015, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.6220831, size.height);
    path_2.cubicTo(
        size.width * 0.6237815,
        size.height,
        size.width * 0.6251600,
        size.height * 0.9974831,
        size.width * 0.6251600,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.6251600,
        size.height * 0.9912809,
        size.width * 0.6237815,
        size.height * 0.9887640,
        size.width * 0.6220831,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.6220831, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.6408646, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.6391662,
        size.height * 0.9887640,
        size.width * 0.6377877,
        size.height * 0.9912809,
        size.width * 0.6377877,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.6377877,
        size.height * 0.9974831,
        size.width * 0.6391662,
        size.height,
        size.width * 0.6408646,
        size.height);
    path_2.lineTo(size.width * 0.6408646, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.6596462, size.height);
    path_2.cubicTo(
        size.width * 0.6613477,
        size.height,
        size.width * 0.6627231,
        size.height * 0.9974831,
        size.width * 0.6627231,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.6627231,
        size.height * 0.9912809,
        size.width * 0.6613477,
        size.height * 0.9887640,
        size.width * 0.6596462,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.6596462, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.6784308, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.6767292,
        size.height * 0.9887640,
        size.width * 0.6753538,
        size.height * 0.9912809,
        size.width * 0.6753538,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.6753538,
        size.height * 0.9974831,
        size.width * 0.6767292,
        size.height,
        size.width * 0.6784308,
        size.height);
    path_2.lineTo(size.width * 0.6784308, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.6972123, size.height);
    path_2.cubicTo(
        size.width * 0.6989108,
        size.height,
        size.width * 0.7002892,
        size.height * 0.9974831,
        size.width * 0.7002892,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.7002892,
        size.height * 0.9912809,
        size.width * 0.6989108,
        size.height * 0.9887640,
        size.width * 0.6972123,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.6972123, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.7159938, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.7142954,
        size.height * 0.9887640,
        size.width * 0.7129169,
        size.height * 0.9912809,
        size.width * 0.7129169,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.7129169,
        size.height * 0.9974831,
        size.width * 0.7142954,
        size.height,
        size.width * 0.7159938,
        size.height);
    path_2.lineTo(size.width * 0.7159938, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.7347754, size.height);
    path_2.cubicTo(
        size.width * 0.7364738,
        size.height,
        size.width * 0.7378523,
        size.height * 0.9974831,
        size.width * 0.7378523,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.7378523,
        size.height * 0.9912809,
        size.width * 0.7364738,
        size.height * 0.9887640,
        size.width * 0.7347754,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.7347754, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.7535569, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.7518585,
        size.height * 0.9887640,
        size.width * 0.7504800,
        size.height * 0.9912809,
        size.width * 0.7504800,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.7504800,
        size.height * 0.9974831,
        size.width * 0.7518585,
        size.height,
        size.width * 0.7535569,
        size.height);
    path_2.lineTo(size.width * 0.7535569, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.7723385, size.height);
    path_2.cubicTo(
        size.width * 0.7740400,
        size.height,
        size.width * 0.7754154,
        size.height * 0.9974831,
        size.width * 0.7754154,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.7754154,
        size.height * 0.9912809,
        size.width * 0.7740400,
        size.height * 0.9887640,
        size.width * 0.7723385,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.7723385, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.7911231, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.7894215,
        size.height * 0.9887640,
        size.width * 0.7880462,
        size.height * 0.9912809,
        size.width * 0.7880462,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.7880462,
        size.height * 0.9974831,
        size.width * 0.7894215,
        size.height,
        size.width * 0.7911231,
        size.height);
    path_2.lineTo(size.width * 0.7911231, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.8099046, size.height);
    path_2.cubicTo(
        size.width * 0.8116031,
        size.height,
        size.width * 0.8129815,
        size.height * 0.9974831,
        size.width * 0.8129815,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.8129815,
        size.height * 0.9912809,
        size.width * 0.8116031,
        size.height * 0.9887640,
        size.width * 0.8099046,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.8099046, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.8286862, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.8269877,
        size.height * 0.9887640,
        size.width * 0.8256092,
        size.height * 0.9912809,
        size.width * 0.8256092,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.8256092,
        size.height * 0.9974831,
        size.width * 0.8269877,
        size.height,
        size.width * 0.8286862,
        size.height);
    path_2.lineTo(size.width * 0.8286862, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.8474677, size.height);
    path_2.cubicTo(
        size.width * 0.8491662,
        size.height,
        size.width * 0.8505446,
        size.height * 0.9974831,
        size.width * 0.8505446,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.8505446,
        size.height * 0.9912809,
        size.width * 0.8491662,
        size.height * 0.9887640,
        size.width * 0.8474677,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.8474677, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.8662492, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.8645508,
        size.height * 0.9887640,
        size.width * 0.8631723,
        size.height * 0.9912809,
        size.width * 0.8631723,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.8631723,
        size.height * 0.9974831,
        size.width * 0.8645508,
        size.height,
        size.width * 0.8662492,
        size.height);
    path_2.lineTo(size.width * 0.8662492, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.8850308, size.height);
    path_2.cubicTo(
        size.width * 0.8867323,
        size.height,
        size.width * 0.8881077,
        size.height * 0.9974831,
        size.width * 0.8881077,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.8881077,
        size.height * 0.9912809,
        size.width * 0.8867323,
        size.height * 0.9887640,
        size.width * 0.8850308,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.8850308, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.9038154, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.9021138,
        size.height * 0.9887640,
        size.width * 0.9007385,
        size.height * 0.9912809,
        size.width * 0.9007385,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.9007385,
        size.height * 0.9974831,
        size.width * 0.9021138,
        size.height,
        size.width * 0.9038154,
        size.height);
    path_2.lineTo(size.width * 0.9038154, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.9225969, size.height);
    path_2.cubicTo(
        size.width * 0.9242954,
        size.height,
        size.width * 0.9256738,
        size.height * 0.9974831,
        size.width * 0.9256738,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.9256738,
        size.height * 0.9912809,
        size.width * 0.9242954,
        size.height * 0.9887640,
        size.width * 0.9225969,
        size.height * 0.9887640);
    path_2.lineTo(size.width * 0.9225969, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.9413785, size.height * 0.9887640);
    path_2.cubicTo(
        size.width * 0.9396800,
        size.height * 0.9887640,
        size.width * 0.9383015,
        size.height * 0.9912809,
        size.width * 0.9383015,
        size.height * 0.9943820);
    path_2.cubicTo(
        size.width * 0.9383015,
        size.height * 0.9974831,
        size.width * 0.9396800,
        size.height,
        size.width * 0.9413785,
        size.height);
    path_2.lineTo(size.width * 0.9413785, size.height * 0.9887640);
    path_2.close();
    path_2.moveTo(size.width * 0.04923077, size.height);
    path_2.lineTo(size.width * 0.05862185, size.height);
    path_2.lineTo(size.width * 0.05862185, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.04923077, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.04923077, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.07740369, size.height);
    path_2.lineTo(size.width * 0.09618585, size.height);
    path_2.lineTo(size.width * 0.09618585, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.07740369, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.07740369, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.1149680, size.height);
    path_2.lineTo(size.width * 0.1337498, size.height);
    path_2.lineTo(size.width * 0.1337498, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.1149680, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.1149680, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.1525320, size.height);
    path_2.lineTo(size.width * 0.1713142, size.height);
    path_2.lineTo(size.width * 0.1713142, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.1525320, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.1525320, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.1900960, size.height);
    path_2.lineTo(size.width * 0.2088782, size.height);
    path_2.lineTo(size.width * 0.2088782, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.1900960, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.1900960, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.2276603, size.height);
    path_2.lineTo(size.width * 0.2464425, size.height);
    path_2.lineTo(size.width * 0.2464425, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.2276603, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.2276603, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.2652243, size.height);
    path_2.lineTo(size.width * 0.2840065, size.height);
    path_2.lineTo(size.width * 0.2840065, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.2652243, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.2652243, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.3027883, size.height);
    path_2.lineTo(size.width * 0.3215692, size.height);
    path_2.lineTo(size.width * 0.3215692, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.3027883, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.3027883, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.3403538, size.height);
    path_2.lineTo(size.width * 0.3591354, size.height);
    path_2.lineTo(size.width * 0.3591354, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.3403538, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.3403538, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.3779169, size.height);
    path_2.lineTo(size.width * 0.3966985, size.height);
    path_2.lineTo(size.width * 0.3966985, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.3779169, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.3779169, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.4154800, size.height);
    path_2.lineTo(size.width * 0.4342615, size.height);
    path_2.lineTo(size.width * 0.4342615, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.4154800, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.4154800, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.4530462, size.height);
    path_2.lineTo(size.width * 0.4718277, size.height);
    path_2.lineTo(size.width * 0.4718277, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.4530462, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.4530462, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.4906092, size.height);
    path_2.lineTo(size.width * 0.5093908, size.height);
    path_2.lineTo(size.width * 0.5093908, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.4906092, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.4906092, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.5281723, size.height);
    path_2.lineTo(size.width * 0.5469538, size.height);
    path_2.lineTo(size.width * 0.5469538, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.5281723, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.5281723, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.5657385, size.height);
    path_2.lineTo(size.width * 0.5845200, size.height);
    path_2.lineTo(size.width * 0.5845200, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.5657385, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.5657385, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.6033015, size.height);
    path_2.lineTo(size.width * 0.6220831, size.height);
    path_2.lineTo(size.width * 0.6220831, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.6033015, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.6033015, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.6408646, size.height);
    path_2.lineTo(size.width * 0.6596462, size.height);
    path_2.lineTo(size.width * 0.6596462, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.6408646, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.6408646, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.6784308, size.height);
    path_2.lineTo(size.width * 0.6972123, size.height);
    path_2.lineTo(size.width * 0.6972123, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.6784308, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.6784308, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.7159938, size.height);
    path_2.lineTo(size.width * 0.7347754, size.height);
    path_2.lineTo(size.width * 0.7347754, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.7159938, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.7159938, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.7535569, size.height);
    path_2.lineTo(size.width * 0.7723385, size.height);
    path_2.lineTo(size.width * 0.7723385, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.7535569, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.7535569, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.7911231, size.height);
    path_2.lineTo(size.width * 0.8099046, size.height);
    path_2.lineTo(size.width * 0.8099046, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.7911231, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.7911231, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.8286862, size.height);
    path_2.lineTo(size.width * 0.8474677, size.height);
    path_2.lineTo(size.width * 0.8474677, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.8286862, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.8286862, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.8662492, size.height);
    path_2.lineTo(size.width * 0.8850308, size.height);
    path_2.lineTo(size.width * 0.8850308, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.8662492, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.8662492, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.9038154, size.height);
    path_2.lineTo(size.width * 0.9225969, size.height);
    path_2.lineTo(size.width * 0.9225969, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.9038154, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.9038154, size.height);
    path_2.close();
    path_2.moveTo(size.width * 0.9413785, size.height);
    path_2.lineTo(size.width * 0.9507692, size.height);
    path_2.lineTo(size.width * 0.9507692, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.9413785, size.height * 0.9887640);
    path_2.lineTo(size.width * 0.9413785, size.height);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = const Color(0xffE5E5E5).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class BottomTicket extends CustomPainter {
  int defaultMargin=25;
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.1036407);
    path_0.lineTo(0, size.height * 0.9407407);
    path_0.cubicTo(
        0,
        size.height * 0.9734667,
        size.width * 0.01102071,
        size.height,
        size.width * 0.02461542,
        size.height);
    path_0.lineTo(size.width * 0.9753846, size.height);
    path_0.cubicTo(size.width * 0.9889785, size.height, size.width,
        size.height * 0.9734667, size.width, size.height * 0.9407407);
    path_0.lineTo(size.width, size.height * 0.1036407);
    path_0.cubicTo(
        size.width * 0.9994892,
        size.height * 0.1036830,
        size.width * 0.9989754,
        size.height * 0.1037037,
        size.width * 0.9984615,
        size.height * 0.1037037);
    path_0.cubicTo(
        size.width * 0.9743354,
        size.height * 0.1037037,
        size.width * 0.9546831,
        size.height * 0.05760452,
        size.width * 0.9538708,
        0);
    path_0.lineTo(size.width * 0.04612769, 0);
    path_0.cubicTo(
        size.width * 0.04531692,
        size.height * 0.05760452,
        size.width * 0.02566397,
        size.height * 0.1037037,
        size.width * 0.001538462,
        size.height * 0.1037037);
    path_0.cubicTo(
        size.width * 0.001023557,
        size.height * 0.1037037,
        size.width * 0.0005106892,
        size.height * 0.1036830,
        0,
        size.height * 0.1036407);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
