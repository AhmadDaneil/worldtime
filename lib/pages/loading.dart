import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  

    void setupWorldTime() async{
      WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url:'zone?timeZone=Europe%2FBerlin');
      await instance.getTime();
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
    setupWorldTime();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitPouringHourGlassRefined(
        color: Colors.white,
        size: 80.0,
        ),
        ),
    );
  }
}