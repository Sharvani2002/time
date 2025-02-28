import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';


class WorldTime{

  String location;//location name for the UI
  String time;//time in that location
  String flag;//url to an asset flag icon
  String url ;//location url for api endpoint
  bool isDaytime; //true or fasle if daytime or not


  WorldTime({this.location, this.flag, this.url});


  Future <void> getTime() async{

    try{
      //make the request
      Response response= await get("http://worldtimeapi.org/api/timezone/$url");
      Map data= jsonDecode(response.body);
      //print(data);

      //get proctives from data
      String datetime =data['datetime'];
      String offset= data['utc_offset'].substring(1,3);
      String minoff= data['utc_offset'].substring(4,6);
      //print(minoff);
      //    print(datetime);
      //  print(offset);

      //create a datetime object
      DateTime now= DateTime.parse(datetime);
      now= now.add(Duration(hours: int.parse(offset), minutes: int.parse(minoff) ));
      //print(now);


      //set time property
      isDaytime= now.hour> 6 && now.hour< 18 ? true: false;
      time= DateFormat.jm().format(now);

    }catch(e){
      print('caught error: $e');
      time= 'could not get time data';
    }

  }

}




