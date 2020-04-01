import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {



//  String time ='loading';

  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
//    print(instance.time);
//    setState(() {
//      time = instance.time;
//    });
  Navigator.pushReplacementNamed(context, '/home', arguments: {
    'location': instance.location,
    'flag': instance.flag,
    'time': instance.time,
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
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text('loading'),
      ),
    );
  }
}
