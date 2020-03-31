
import 'package:flutter/material.dart';
import 'package:world_time/pages/home.dart';
import 'pages/choose_location.dart';
import 'pages/loading.dart';

void main() => runApp(MaterialApp(
  //home: Home(),
  initialRoute: '/home',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));

