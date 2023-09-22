import 'package:first/view/widgets/Charts/chart1.dart';
import 'package:flutter/material.dart';

import 'view/widgets/Collapse/Collapse1.dart';
import 'view/widgets/Navigation/bottom1.dart';

// import 'screen/task1.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, title: "Home", home: bottom());
  }
}
