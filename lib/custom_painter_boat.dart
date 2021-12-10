import 'package:flutter/cupertino.dart';

class CustomPainterBoat extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*1).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xff37495E).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.4758065, size.height * 0.03762097,
            size.width * 0.04301075, size.height * 0.7983871),
        paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.005446237, size.height * 0.8579651);
    path_1.lineTo(size.width * 0.02688172, size.height * 0.9972984);
    path_1.lineTo(size.width * 0.8216398, size.height * 0.9972984);
    path_1.cubicTo(
        size.width * 0.9056586,
        size.height * 0.9972984,
        size.width * 0.9756613,
        size.height * 0.9373898,
        size.width * 0.9913253,
        size.height * 0.8579651);
    path_1.lineTo(size.width * 0.005446237, size.height * 0.8579651);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Color(0xff3E81C8).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.9895269, size.height * 0.8660296);
    path_2.cubicTo(
        size.width * 0.9928360,
        size.height * 0.8526667,
        size.width * 0.9946237,
        size.height * 0.8387016,
        size.width * 0.9946237,
        size.height * 0.8243145);
    path_2.lineTo(size.width * 0.9946237, size.height * 0.8225672);
    path_2.lineTo(0, size.height * 0.8225672);
    path_2.lineTo(size.width * 0.006685484, size.height * 0.8660296);
    path_2.lineTo(size.width * 0.9895269, size.height * 0.8660296);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = Color(0xffEFEFEF).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.6048387, size.height * 0.7257930);
    path_3.lineTo(size.width * 0.6048387, size.height * 0.1747177);
    path_3.lineTo(size.width, size.height * 0.7257930);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = Color(0xffEFEFEF).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.3897849, size.height * 0.7257930);
    path_4.lineTo(size.width * 0.3897849, size.height * 0.2956855);
    path_4.lineTo(size.width * 0.08136559, size.height * 0.7257930);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = Color(0xff3E81C8).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.1424731, size.height * 0.1585887);
    path_5.cubicTo(
        size.width * 0.2679220,
        size.height * 0.2795565,
        size.width * 0.3933683,
        size.height * 0.03762097,
        size.width * 0.5188172,
        size.height * 0.1585887);
    path_5.cubicTo(
        size.width * 0.5188172,
        size.height * 0.1182661,
        size.width * 0.5188172,
        size.height * 0.07794355,
        size.width * 0.5188172,
        size.height * 0.03762097);
    path_5.cubicTo(
        size.width * 0.3933683,
        size.height * -0.08334677,
        size.width * 0.2679220,
        size.height * 0.1585887,
        size.width * 0.1424731,
        size.height * 0.03762097);
    path_5.cubicTo(
        size.width * 0.1424731,
        size.height * 0.07794355,
        size.width * 0.1424731,
        size.height * 0.1182661,
        size.width * 0.1424731,
        size.height * 0.1585887);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = Color(0xffF4A026).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
