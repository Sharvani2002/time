
import 'package:flutter/material.dart';
import 'package:world_time/flare/flare_demo.dart';
import 'package:world_time/pages/home.dart';
import 'pages/choose_location.dart';
import 'pages/loading.dart';

void main() => runApp(MaterialApp(
  title: 'Time',
  debugShowCheckedModeBanner: false,
  //home: Home(),
  // home:FlareDemo(),
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));

