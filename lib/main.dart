import 'package:custom_animation_with_custom_paint_wave_animation/custom_painter_boat.dart';
import 'package:custom_animation_with_custom_paint_wave_animation/custom_painter_sun.dart';
import 'package:custom_animation_with_custom_paint_wave_animation/my_custom_clipper_front_wave.dart';
import 'package:custom_animation_with_custom_paint_wave_animation/second_page.dart';
import 'package:flutter/material.dart';
import 'my_custom_clipper_back_wave.dart';
import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late AnimationController animationController;
  late AnimationController animationControllerForAlignment;

  late Animation<double> animation;
  late Animation<AlignmentGeometry> animationAlignment;
  late Tween<double> tween;
  late Tween<AlignmentGeometry> tweenAlignment;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(
        reverse: true,
      );
    animationControllerForAlignment = AnimationController(
      vsync: this,
      duration: Duration(seconds: 6),
    )..forward();

    //
    tween = Tween(begin: 0, end: 1);
    tweenAlignment = Tween<AlignmentGeometry>(
      begin: Alignment(-1.0, -0.124),
      end: Alignment(1, -0.124),
    );
    animation = tween.animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.linearToEaseOut,
      ),
    );
    animationAlignment = tweenAlignment.animate(
      animationControllerForAlignment,
    );
    animationController.addListener(() {
      setState(() {});
    });
    animationControllerForAlignment.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SecondPage();
        }));
      }
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    animationControllerForAlignment.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var checkRadius = math.min(MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.width) *
        0.26;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.blue.withOpacity(0.2),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment(-0.5, -0.7),
              child: Container(
                padding: EdgeInsets.all(animationController.value * 8),
                child: CustomPaint(
                  size: Size(checkRadius, (checkRadius * 1).toDouble()),
                  painter: CustomPainterSun(),
                ),
                width: checkRadius,
                height: checkRadius,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: MyCustomClipperBackWave(
                  animationFactor: animationController.value * 0.25,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.47,
                  color: Colors.blue.withOpacity(0.2),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: MyCustomClipperFrontWave(
                  animationFactor: animationController.value * 0.5,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.48,
                  color: Colors.blue.withOpacity(0.4),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: MyCustomClipperBackWave(
                  animationFactor: animationController.value * 0.75,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.49,
                  color: Colors.blue.withOpacity(0.6),
                ),
              ),
            ),
            AlignTransition(
              alignment: animationAlignment,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.18,
                height: MediaQuery.of(context).size.height * 0.15,
                child: CustomPaint(
                  size: Size(
                    MediaQuery.of(context).size.width * 0.15,
                    ((MediaQuery.of(context).size.width * 0.15) * 1).toDouble(),
                  ),
                  painter: CustomPainterBoat(),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: MyCustomClipperFrontWave(
                  animationFactor: animationController.value,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.50,
                  color: Colors.blueAccent.withOpacity(0.8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
