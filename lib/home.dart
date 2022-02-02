import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            buttonTasari("bip", "bongo", Colors.cyan, Colors.teal),
            buttonTasari("clap1", "clap2", Colors.amber, Colors.deepOrange),
            buttonTasari("clap3", "crash", Colors.green, Colors.lime),
            buttonTasari("how", "oobah", Colors.tealAccent, Colors.white60),
            buttonTasari("ridebel", "woo", Colors.blueGrey, Colors.deepPurple),
          ],
        ),
      ),
    );
  }

  Expanded buttonTasari(String ses1,String ses2, Color renk1, Color renk2) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                player.play("$ses1.wav");
              },
              child: Container(
                color: renk1,
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                player.play("$ses2.wav");
              },
              child: Container(
                color: renk2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
