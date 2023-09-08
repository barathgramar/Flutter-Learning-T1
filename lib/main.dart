// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'screen/task1.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Home",
      home: Task1(),
    );
  }
}
