import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  bool bIsLoaded = false;
  @override
  Widget build(BuildContext context) {
    if(!bIsLoaded)
    {
      Future.delayed(const Duration(seconds: 10), () {
        setState(() {
          bIsLoaded = true;
        });
      });
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: loadMenu(context, bIsLoaded)
          ),
        ],
      ),
    );
  }
}

Widget loadMenu(BuildContext context, bool bIsLoaded)
{
  if (!bIsLoaded)
  {
    return Text("loading...");
  }
  else
  {
    return RaisedButton(
      child: Text("Home"),
      onPressed: () {
        Navigator.pushNamed(context, "/home");
      },
    );
  }
}
