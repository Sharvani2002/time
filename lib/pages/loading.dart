import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {



//  String time ='loading';

  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Kolkata', flag: 'india.png', url: 'Asia/Kolkata');
    await instance.getTime();
//    print(instance.time);
//    setState(() {
//      time = instance.time;
//    });
  Navigator.pushReplacementNamed(context, '/home', arguments: {
    'location': instance.location,
    'flag': instance.flag,
    'time': instance.time,
    'isDaytime': instance.isDaytime,
  });
  }

  @override
  void initState() {
    super.initState();
    //getTime();
    setupWorldTime();
    print('initState functuion Ran');

  }

  @override
  Widget build(BuildContext context) {

    print('Build function Ran');
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitSpinningCircle(
          color: Colors.white,
          size: 50.0,
        ),

      )
    );
  }
}
