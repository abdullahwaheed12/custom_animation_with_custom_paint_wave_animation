import 'package:flutter/material.dart';

class MyCustomClipperFrontWave extends CustomClipper<Path> {
  MyCustomClipperFrontWave({required this.animationFactor});
  double animationFactor;
  @override
  getClip(Size size) {
    Path path = Path();
    var midPointOfWaveHeight = size.height * 0.075 * animationFactor;
    var lowerPointOfWaveHeight = size.height * 0.15 * animationFactor;
    var higherPointOfWaveHeight = 0.0;

    //
    path.moveTo(0, midPointOfWaveHeight);
    path.quadraticBezierTo(size.width * (0.125), lowerPointOfWaveHeight,
        size.width * 0.25, midPointOfWaveHeight);
    path.quadraticBezierTo(size.width * (0.375), higherPointOfWaveHeight,
        size.width * 0.5, midPointOfWaveHeight);
    path.quadraticBezierTo(size.width * (0.625), lowerPointOfWaveHeight,
        size.width * 0.75, midPointOfWaveHeight);
    path.quadraticBezierTo(size.width * (0.875), higherPointOfWaveHeight,
        size.width, midPointOfWaveHeight);

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
