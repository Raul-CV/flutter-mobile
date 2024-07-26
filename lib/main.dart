
import 'package:flutter/material.dart';
import 'package:my_app/counter.dart';
import 'package:my_app/home_screen.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: counter_Screen(),
      )
    );
  }

}