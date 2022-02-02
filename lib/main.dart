import 'package:davul/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Davul());
}

class Davul extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
