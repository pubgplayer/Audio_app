import 'package:audio_task1/audio.dart';
import 'package:audio_task1/home.dart';
import 'package:audio_task1/videoHomepage.dart';
import 'package:audio_task1/videoNet.dart';
import 'package:audio_task1/videoasset.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Myhome(),
        "ap": (context) => MyAudio(),
        "vp": (context) => MyVideo(),
        "vpa": (context) => VideoExample(),
        "vpn": (context) => VideoExampleNetwork()
      },
    );
  }
}
