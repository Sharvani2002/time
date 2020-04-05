
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:world_time/flare/smart_flare_animation.dart';

class FlareDemo extends StatefulWidget {
  @override
  _FlareDemoState createState() => _FlareDemoState();
}

class _FlareDemoState extends State<FlareDemo> {
  bool isOpen= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 102, 18, 222),
      // backgroundColor: Colors.purple,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: SmartFlareAnimation(),
      ),
    );
  }
}