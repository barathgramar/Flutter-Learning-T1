import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 1000,
      width: 400,
      color: const Color.fromARGB(255, 168, 168, 168),
      child: const Center(
        child: Text(
          "What are you doing",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Color.fromARGB(255, 38, 38, 38),
            fontSize: 50,
            fontFamily: AutofillHints.birthdayDay,
          ),
        ),
      ),
    ));
  }
}
