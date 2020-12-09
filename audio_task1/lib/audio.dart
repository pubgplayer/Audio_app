import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class MyAudio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final play = AssetsAudioPlayer();
    final playo = AssetsAudioPlayer();
    return Scaffold(
      appBar: AppBar(
        title: Text('AUDIO PLAYER'),
      ),
      body: Container(
        color: Colors.purple,
        child: Column(
          children: <Widget>[
            Text(
              'AUDIO USING ASSETS',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/1.jpg'),
                            fit: BoxFit.cover),
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(50)),
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('I got you - BEBE RHEXA.mp3'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                          child: Icon(Icons.play_arrow),
                          onPressed: () {
                            play.open(Audio('assets/audio/1.mp3'));
                          }),
                      RaisedButton(
                          child: Icon(Icons.pause),
                          onPressed: () {
                            play.playOrPause();
                          }),
                      RaisedButton(
                        child: Icon(Icons.stop),
                        onPressed: () {
                          play.stop();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'AUDIO USING NETWORK',
              style: TextStyle(
                  color: Colors.black87,
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.lightBlue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/2.jpg'),
                            fit: BoxFit.cover),
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.deepPurple)),
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('DIL DOOBA - KARAN NAVANI.mp3'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                          child: Text('PLAY'),
                          onPressed: () async {
                            try {
                              await playo.open(
                                Audio.network(
                                    "https://raw.githubusercontent.com/pubgplayer/fluttertry/master/1.mp3"),
                              );
                            } catch (t) {
                              print("error in asset nwtwork");
                              print(t);
                            }
                          }),
                      RaisedButton(
                          child: Text('PAUSE'),
                          onPressed: () {
                            playo.playOrPause();
                          }),
                      RaisedButton(
                          child: Text('STOP'),
                          onPressed: () {
                            playo.stop();
                          })
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Tooltip(
              message: 'FOR VIDEO SECTION',
              child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'vp');
                  },
                  child: Text('VIDEO SECTION')),
            ),
          ],
        ),
      ),
    );
  }
}
