// ignore_for_file: camel_case_types

import 'package:first/view/screen/home.dart';
import 'package:first/view/screen/task1.dart';
import 'package:first/view/widgets/grid1.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static final List<Widget> _widgetOptions = <Widget>[
    const Home1(),
    const Task1(),
    const Grid1(),
    const Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0.2,
      //   leading: IconButton(
      //     icon: const Icon(
      //       Icons.keyboard_arrow_left,
      //       color: Colors.black,
      //     ),
      //     onPressed: () {},
      //   ),
      //   centerTitle: true,
      //   title: const Text(
      //     'Insight',
      //     textAlign: TextAlign.right,
      //     style: TextStyle(
      //       color: Color.fromARGB(255, 0, 0, 0),
      //     ),
      //   ),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: const Color.fromARGB(255, 255, 0, 0)!,
              hoverColor: const Color.fromARGB(255, 250, 0, 0)!,
              gap: 8,
              activeColor: const Color.fromARGB(255, 255, 255, 255),
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: const Color.fromARGB(255, 255, 0, 0)!,
              color: const Color.fromARGB(255, 0, 0, 0),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  onPressed: () {
                    const Home1();
                  },
                ),
                const GButton(
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.bar_chart,
                  text: 'Insight',
                  onPressed: () {
                    const Grid1();
                  },
                ),
                const GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
