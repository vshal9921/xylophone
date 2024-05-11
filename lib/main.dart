import 'package:flutter/material.dart';
import 'package:xylophone/widgets/play_buttons.dart';

void main() {
  runApp(XyloPhoneApp());
}

class XyloPhoneApp extends StatelessWidget {
  XyloPhoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PlayButton(Colors.red, 1),
              PlayButton(Colors.orange, 2),
              PlayButton(Colors.yellow, 3),
              PlayButton(Colors.green, 4),
              PlayButton(Colors.blue, 5),
              PlayButton(Colors.indigo, 6),
              PlayButton(Colors.blueGrey, 7),
            ],
          ),
        ),
      ),
    );
  }
}

