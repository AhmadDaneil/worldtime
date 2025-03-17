import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTime {
  String? location; //Location name for the UI
  String time = ""; //Time in that location
  String? flag; //URL to asset flag
  String? url; //Location URL for api endpoint

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async
  {

    try {
      String apiUrl = 'https://timeapi.io/api/time/current/$url';
    //make the request
    http.Response response = await http.get(Uri.parse(apiUrl));
    
    Map data = jsonDecode(response.body);
    if(response.statusCode == 200 && response.body.isNotEmpty) {
    json.decode(response.body);
}
    //print(data);

    //get properties from data
    String datetime = data['dateTime'];
    String timezone = data['timeZone'];
    //print(time);
    print(timezone);

    
    time = datetime.toString();


    
  }
  catch (e) {
      print('Caught error: $e');
      time = 'Could not get time data';
    }
    }
    

}

