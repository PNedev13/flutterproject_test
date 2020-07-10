import 'package:flutter/material.dart';
import 'services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String current_time;
  String someOtherString = "Debug";
  void setupWorldTime() async {
    WorldTime instance = WorldTime(location : "Berlin",
                                    flag: "germany.png",
                                    location_url: "Europe/Berlin");
    await instance.getTime();
    setState(() {
      current_time = instance.time;
      someOtherString = "READY";
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
      appBar: AppBar(
        title: Text("MyTestApp"),
      ),
      body: Text("Loading... $someOtherString time: $current_time"),
    );
  }
}
