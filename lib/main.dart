import 'package:flutter/material.dart';
import 'package:voice_convertor/speechscreen.dart';
//import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:voice_convertor/textscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Change over',
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
        '/speechscreen': (BuildContext context) => SpeechScreen(),
        '/textscreen': (BuildContext context) => TextScreen(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Over"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              color: Colors.blue,
              padding: EdgeInsets.all(20.0),
              onPressed: () {
                Navigator.pushNamed(context, '/speechscreen');
              },
              child: Text(
                "Voice to Text",
              ),
            ),
            SizedBox(height: 10.0),
            FlatButton(
              color: Colors.blue,
              padding: EdgeInsets.all(20.0),
              onPressed: () {
                Navigator.pushNamed(context, '/textscreen');
              },
              child: Text(
                "Text to Voice",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
