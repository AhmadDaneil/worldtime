import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async
  {
    //Simulate network request for username
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'Yoshi';
    });

    //Simulate network request to get bio of the username
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'Vega, musician & egg collector';
    });

    print('$username - $bio');

  }

  @override
  void initState() {
    super.initState();
    getData();
    print('Hey there');
    }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      
    );
  }
}