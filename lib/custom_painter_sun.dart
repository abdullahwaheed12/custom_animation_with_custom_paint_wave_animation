import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class CustomPainterSun extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5000000, size.height * 0.04166667);
    path_0.lineTo(size.width * 0.5296042, size.height * 0.07237500);
    path_0.cubicTo(
        size.width * 0.5489792,
        size.height * 0.09247917,
        size.width * 0.5793542,
        size.height * 0.09729167,
        size.width * 0.6040000,
        size.height * 0.08416667);
    path_0.lineTo(size.width * 0.6416458, size.height * 0.06410417);
    path_0.lineTo(size.width * 0.6603125, size.height * 0.1024583);
    path_0.cubicTo(
        size.width * 0.6725208,
        size.height * 0.1275625,
        size.width * 0.6999375,
        size.height * 0.1415417,
        size.width * 0.7274375,
        size.height * 0.1366458);
    path_0.lineTo(size.width * 0.7694375, size.height * 0.1292083);
    path_0.lineTo(size.width * 0.7753333, size.height * 0.1714583);
    path_0.cubicTo(
        size.width * 0.7791875,
        size.height * 0.1991250,
        size.width * 0.8009375,
        size.height * 0.2208542,
        size.width * 0.8286042,
        size.height * 0.2247292);
    path_0.lineTo(size.width * 0.8708542, size.height * 0.2306250);
    path_0.lineTo(size.width * 0.8634167, size.height * 0.2726250);
    path_0.cubicTo(
        size.width * 0.8585417,
        size.height * 0.3001250,
        size.width * 0.8725000,
        size.height * 0.3275208,
        size.width * 0.8976042,
        size.height * 0.3397500);
    path_0.lineTo(size.width * 0.9359583, size.height * 0.3584167);
    path_0.lineTo(size.width * 0.9158958, size.height * 0.3960625);
    path_0.cubicTo(
        size.width * 0.9027500,
        size.height * 0.4207083,
        size.width * 0.9075625,
        size.height * 0.4510833,
        size.width * 0.9276875,
        size.height * 0.4704583);
    path_0.lineTo(size.width * 0.9583333, size.height * 0.5000000);
    path_0.lineTo(size.width * 0.9276250, size.height * 0.5296042);
    path_0.cubicTo(
        size.width * 0.9075208,
        size.height * 0.5489792,
        size.width * 0.9027083,
        size.height * 0.5793542,
        size.width * 0.9158333,
        size.height * 0.6040000);
    path_0.lineTo(size.width * 0.9358958, size.height * 0.6416458);
    path_0.lineTo(size.width * 0.8975417, size.height * 0.6603125);
    path_0.cubicTo(
        size.width * 0.8724375,
        size.height * 0.6725208,
        size.width * 0.8584583,
        size.height * 0.6999375,
        size.width * 0.8633542,
        size.height * 0.7274375);
    path_0.lineTo(size.width * 0.8707917, size.height * 0.7694375);
    path_0.lineTo(size.width * 0.8285417, size.height * 0.7753333);
    path_0.cubicTo(
        size.width * 0.8008750,
        size.height * 0.7791875,
        size.width * 0.7791458,
        size.height * 0.8009375,
        size.width * 0.7752708,
        size.height * 0.8286042);
    path_0.lineTo(size.width * 0.7693750, size.height * 0.8708542);
    path_0.lineTo(size.width * 0.7273750, size.height * 0.8634167);
    path_0.cubicTo(
        size.width * 0.6998750,
        size.height * 0.8585417,
        size.width * 0.6724792,
        size.height * 0.8725000,
        size.width * 0.6602500,
        size.height * 0.8976042);
    path_0.lineTo(size.width * 0.6415833, size.height * 0.9359583);
    path_0.lineTo(size.width * 0.6039375, size.height * 0.9158958);
    path_0.cubicTo(
        size.width * 0.5792917,
        size.height * 0.9027500,
        size.width * 0.5489167,
        size.height * 0.9075625,
        size.width * 0.5295417,
        size.height * 0.9276875);
    path_0.lineTo(size.width * 0.5000000, size.height * 0.9583333);
    path_0.lineTo(size.width * 0.4703958, size.height * 0.9276250);
    path_0.cubicTo(
        size.width * 0.4510208,
        size.height * 0.9075208,
        size.width * 0.4206458,
        size.height * 0.9027083,
        size.width * 0.3960000,
        size.height * 0.9158333);
    path_0.lineTo(size.width * 0.3583542, size.height * 0.9358958);
    path_0.lineTo(size.width * 0.3396875, size.height * 0.8975417);
    path_0.cubicTo(
        size.width * 0.3274792,
        size.height * 0.8724375,
        size.width * 0.3000625,
        size.height * 0.8584583,
        size.width * 0.2725625,
        size.height * 0.8633542);
    path_0.lineTo(size.width * 0.2305625, size.height * 0.8707917);
    path_0.lineTo(size.width * 0.2246667, size.height * 0.8285417);
    path_0.cubicTo(
        size.width * 0.2208125,
        size.height * 0.8008750,
        size.width * 0.1990625,
        size.height * 0.7791458,
        size.width * 0.1713958,
        size.height * 0.7752708);
    path_0.lineTo(size.width * 0.1291458, size.height * 0.7693750);
    path_0.lineTo(size.width * 0.1365833, size.height * 0.7273750);
    path_0.cubicTo(
        size.width * 0.1414583,
        size.height * 0.6998750,
        size.width * 0.1275000,
        size.height * 0.6724792,
        size.width * 0.1023958,
        size.height * 0.6602500);
    path_0.lineTo(size.width * 0.06404167, size.height * 0.6415833);
    path_0.lineTo(size.width * 0.08410417, size.height * 0.6039375);
    path_0.cubicTo(
        size.width * 0.09725000,
        size.height * 0.5792917,
        size.width * 0.09243750,
        size.height * 0.5489167,
        size.width * 0.07231250,
        size.height * 0.5295417);
    path_0.lineTo(size.width * 0.04166667, size.height * 0.5000000);
    path_0.lineTo(size.width * 0.07237500, size.height * 0.4703958);
    path_0.cubicTo(
        size.width * 0.09247917,
        size.height * 0.4510208,
        size.width * 0.09729167,
        size.height * 0.4206458,
        size.width * 0.08416667,
        size.height * 0.3960000);
    path_0.lineTo(size.width * 0.06410417, size.height * 0.3583542);
    path_0.lineTo(size.width * 0.1024583, size.height * 0.3396875);
    path_0.cubicTo(
        size.width * 0.1275625,
        size.height * 0.3274792,
        size.width * 0.1415417,
        size.height * 0.3000625,
        size.width * 0.1366458,
        size.height * 0.2725625);
    path_0.lineTo(size.width * 0.1292083, size.height * 0.2305625);
    path_0.lineTo(size.width * 0.1714583, size.height * 0.2246667);
    path_0.cubicTo(
        size.width * 0.1991250,
        size.height * 0.2208125,
        size.width * 0.2208542,
        size.height * 0.1990625,
        size.width * 0.2247292,
        size.height * 0.1713958);
    path_0.lineTo(size.width * 0.2306250, size.height * 0.1291458);
    path_0.lineTo(size.width * 0.2726250, size.height * 0.1365833);
    path_0.cubicTo(
        size.width * 0.3001250,
        size.height * 0.1414583,
        size.width * 0.3275208,
        size.height * 0.1275000,
        size.width * 0.3397500,
        size.height * 0.1023958);
    path_0.lineTo(size.width * 0.3584167, size.height * 0.06404167);
    path_0.lineTo(size.width * 0.3960625, size.height * 0.08410417);
    path_0.cubicTo(
        size.width * 0.4207083,
        size.height * 0.09725000,
        size.width * 0.4510833,
        size.height * 0.09243750,
        size.width * 0.4704583,
        size.height * 0.07231250);
    path_0.lineTo(size.width * 0.5000000, size.height * 0.04166667);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.radial(
        Offset(size.width * 0.5000000, size.height * 0.5000000),
        size.width * 0.4583333, [
      Color(0xffffed54).withOpacity(1),
      Color(0xffffe649).withOpacity(1),
      Color(0xffffd22d).withOpacity(1),
      Color(0xffffb300).withOpacity(1)
    ], [
      0.724,
      0.779,
      0.877,
      1
    ]);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5000000, size.height * 0.1458333);
    path_1.cubicTo(
        size.width * 0.3043958,
        size.height * 0.1458333,
        size.width * 0.1458333,
        size.height * 0.3043958,
        size.width * 0.1458333,
        size.height * 0.5000000);
    path_1.cubicTo(
        size.width * 0.1458333,
        size.height * 0.6956042,
        size.width * 0.3043958,
        size.height * 0.8541667,
        size.width * 0.5000000,
        size.height * 0.8541667);
    path_1.cubicTo(
        size.width * 0.6956042,
        size.height * 0.8541667,
        size.width * 0.8541667,
        size.height * 0.6956042,
        size.width * 0.8541667,
        size.height * 0.5000000);
    path_1.cubicTo(
        size.width * 0.8541667,
        size.height * 0.3043958,
        size.width * 0.6956042,
        size.height * 0.1458333,
        size.width * 0.5000000,
        size.height * 0.1458333);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.1685833, size.height * 0.1685833),
        Offset(size.width * 0.7499167, size.height * 0.7499167),
        [Color(0xfffed100).withOpacity(1), Color(0xffe36001).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
