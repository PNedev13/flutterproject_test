import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {

  String location;
  String location_url;
  String time;
  String flag;

  WorldTime({this.location, this.flag, this.location_url});

  Future<void> getTime() async {

    Response response = await get("http://worldtimeapi.org/api/timezone/Europe/Sofia");
    Map      data     = jsonDecode(response.body);

    String datetime   = data["datetime"];
    String offset     = data["utc_offset"].substring(1, 3);

    print(data);

    DateTime now      = DateTime.parse(datetime);
    now               = now.add(Duration(hours: int.parse(offset)));
    time              = now.toString();

  }

}