import 'package:flutter/material.dart';

class Myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        color: Colors.cyanAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              
                color: Colors.blue,
                child: Text('AUDIO'),
                onPressed: () {
                  Navigator.pushNamed(context, 'ap');
                }),
            RaisedButton(
              color: Colors.blue,
              child: Text('VIDEO'),
              onPressed: () {
                Navigator.pushNamed(context, 'vp');
              },
            )
          ],
        ),
      ),
    );
  }
}
