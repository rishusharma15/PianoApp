import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playsound(int num) async {
    final player = AudioCache();
    player.play('note$num.wav');
    // ByteData bytes = await rootBundle.load('note$num.wav');
    // Uint8List sbytes =
    //     bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
    // player.playBytes('sbytes');
  }

  Expanded myButton({required Color color, required int action}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playsound(action);
        },
        child: Text(""),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Piano"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(color: Colors.yellow, action: 1),
            myButton(color: Color.fromARGB(255, 202, 201, 188), action: 2),
            myButton(color: Color.fromARGB(255, 226, 143, 79), action: 3),
            myButton(color: Color.fromARGB(255, 22, 88, 163), action: 4),
            myButton(color: Color.fromARGB(255, 236, 79, 79), action: 5),
            myButton(color: Color.fromARGB(255, 225, 80, 146), action: 6),
            myButton(color: Color.fromARGB(255, 58, 236, 233), action: 7),
          ],
        ),
      ),
    );
  }
}
