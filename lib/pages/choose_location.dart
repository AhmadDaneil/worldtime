import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(location: 'Berlin', flag: 'german.png', url: 'zone?timeZone=Europe%2FBerlin'),
    WorldTime(location: 'Cairo', flag: 'egypt.png', url: 'zone?timeZone=Africa%2FCairo'),
    WorldTime(location: 'Seoul', flag: 'korea.png', url: 'zone?timeZone=Asia%2FSeoul'),
    WorldTime(location: 'New York', flag: 'united_states.png', url: 'zone?timeZone=America%2FNew_York'),
    WorldTime(location: 'Canberra', flag: 'australia.png', url: 'zone?timeZone=Australia%2FCanberra'),
    WorldTime(location: 'Kuala Lumpur', flag: 'malaysia.png', url: 'zone?timeZone=Asia%2FKuala_Lumpur'),
  ];


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
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical:1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  print(locations[index].location);
                },
                title: Text(locations[index].location!),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        }
      )
      
    );
  }
}