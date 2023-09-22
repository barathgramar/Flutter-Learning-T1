import 'package:flutter/material.dart';
import 'package:toggle_list/toggle_list.dart';

class Collapse1 extends StatefulWidget {
  const Collapse1({super.key});

  @override
  State<Collapse1> createState() => _Collapse1State();
}

class _Collapse1State extends State<Collapse1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: ToggleList(children: [
        ToggleListItem(
          title: const Text('I am the first item'),
          content: const Padding(
            padding: EdgeInsets.all(20),
            child: Text('Hello there!'),
          ),
        ),
        ToggleListItem(
          title: const Text('I am the second item'),
          content: const Padding(
            padding: EdgeInsets.all(20),
            child: Text('I am delighted that you are here.'),
          ),
        ),
        ToggleListItem(
          title: const Text('I am the third item'),
          content: const Padding(
            padding: EdgeInsets.all(20),
            child: Text('Have a wonderful day!'),
          ),
        ),
      ]),
    );
  }
}
