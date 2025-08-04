import 'package:flutter/material.dart';
import 'package:ppkd_b_3/Tugas%20Flutter/tugas_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Tugas3(),
    );
  }
}