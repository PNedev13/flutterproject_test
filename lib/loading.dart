import 'package:flutter/material.dart';
import 'package:flutterproject_test/services/world_time.dart';

import 'services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String current_time;
  Future<void> setupWorldTime() async {
    WorldTime instance = WorldTime(location : "Berlin",
                                    flag: "germany.png",
                                    location_url: "Europe/Berlin");
    await instance.getTime();
    setState(() {
      current_time = instance.time;
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
      body: Text("Loading... time: $current_time"),
    );
  }
}
