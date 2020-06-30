import 'package:flutter/material.dart';
import 'loading.dart';
import 'choose_location.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => MyApp()
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyTestApp"),
      ),
    );
  }
}