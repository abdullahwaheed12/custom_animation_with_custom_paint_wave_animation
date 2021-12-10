import 'package:flutter/material.dart';

import 'my_custom_clipper_back_wave.dart';
import 'my_custom_clipper_front_wave.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> with TickerProviderStateMixin {
  late AnimationController animationController;

  late Animation<double> animation;

  late Tween<double> tween;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(
        reverse: true,
      );

    //
    tween = Tween(begin: 0, end: 1);

    animation = tween.animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.linearToEaseOut,
      ),
    );

    animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Center(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: ClipPath(
                  clipper: MyCustomClipperBackWave(
                    animationFactor: animationController.value * 0.25,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.87,
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
                    height: MediaQuery.of(context).size.height * 0.88,
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
                    height: MediaQuery.of(context).size.height * 0.89,
                    color: Colors.blue.withOpacity(0.6),
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
                    height: MediaQuery.of(context).size.height * 0.90,
                    color: Colors.blueAccent.withOpacity(0.8),
                  ),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: signInCode(),
        )
      ]),
    );
  }
}

Widget signInCode() {
  return Container(
    width: double.infinity,
    height: double.infinity,
    // decoration: BoxDecoration(
    //     image: DecorationImage(
    //         fit: BoxFit.fill,
    //         image: AssetImage('assets/images/background.png'))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //----------------------------
        Container(
          padding: EdgeInsets.only(bottom: 6),
          width: 350,
          child: Text('Email id',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
        ),

        Container(
          height: 50,
          width: 350,
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.grey.shade200,
              filled: true,
              labelText: 'Enter Mail',
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(bottom: 6),
          width: 350,
          child: Text(
            'Password',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),

        Container(
          height: 50,
          width: 350,
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.grey.shade200,
              filled: true,
              labelText: 'Enter Password',
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 50,
          width: 350,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Colors.orange.shade600),
            ),
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),

        Container(
          alignment: Alignment.centerRight,
          width: 350,
          child: TextButton(
            style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.white)),
            onPressed: () {},
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Fogot Password ?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.only(top: 8),
          alignment: Alignment.center,
          width: 350,
          child: Text(
            '---------------------------- or ----------------------------',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),

        SizedBox(
          height: 20,
        ),

        Container(
          height: 50,
          width: 350,
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.blue.shade600)),
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    color: Colors.blue.shade600,
                    child: Text(
                      'Login With Facebook',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue.shade900,
                    child: Icon(
                      Icons.facebook,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),),
        ),
        SizedBox(
          height: 10,
        ),

        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Dont have an account ? '),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
