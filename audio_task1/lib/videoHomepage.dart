import 'package:flutter/material.dart';

class MyVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VIDEO HOMEPAGE'),
        backgroundColor: Colors.blue.shade200,
      ),
      body: Container(
        color: Colors.deepPurple,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                color: Colors.blue,
                child: Text('VIDEO USING ASSETS'),
                onPressed: () {
                  Navigator.pushNamed(context, 'vpa');
                }),
            RaisedButton(
              color: Colors.blue,
              child: Text('VIDEO USING NETWORK'),
              onPressed: () {
                Navigator.pushNamed(context, 'vpn');
              },
            )
          ],
        ),
      ),
    );
  }
}
