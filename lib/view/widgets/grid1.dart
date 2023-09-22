import 'package:first/view/widgets/Charts/chart1.dart';
import 'package:first/view/widgets/Collapse/Collapse1.dart';
import 'package:flutter/material.dart';

class Grid1 extends StatefulWidget {
  const Grid1({Key? key}) : super(key: key);

  @override
  _Grid1State createState() => _Grid1State();
}

class _Grid1State extends State<Grid1> {
  final List<Map<String, dynamic>> gridmap = [
    {
      "icon": Icons.local_fire_department,
      "title": "Cal Burn",
      "value": "2.5 kcal",
      "target": "Targeted cal burn 3 kcal",
    },
    {
      "icon": Icons.accessibility,
      "title": "Weight",
      "value": "176 lbs",
      "target": "Targeted weight 10 lbs",
    },
    {
      "icon": Icons.monitor_heart,
      "title": "BPM",
      "value": "74 bpm",
      "target": "Today's Average bpm 65",
    },
    {
      "icon": Icons.directions_run,
      "title": "Steps",
      "value": "2176 s",
      "target": "Targeted steps 3000s",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
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
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, right: 250, top: 10),
            child: const Text(
              "Today's Insights",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),
            ),
          ),
          //grid view
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: gridmap.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                    mainAxisExtent: 110),
                itemBuilder: (context, index) {
                  return Container(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 216, 216, 216),
                          ),
                        ],
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Icon(
                            gridmap.elementAt(index)['icon'],
                            size: 30,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 5),
                              child: Text(
                                gridmap.elementAt(index)['title'],
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Arial',
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromARGB(255, 1, 1, 1)),
                              ),
                            ),
                            Text(
                              gridmap.elementAt(index)['value'],
                              style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Arial',
                                  color: Color.fromARGB(255, 255, 0, 0)),
                            ),
                          ],
                        ),
                        Text(
                          gridmap.elementAt(index)['target'],
                          style: const TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Arial',
                              color: Color.fromARGB(255, 111, 111, 111)),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 150, top: 10),
            child: const Text(
              "Statisticof Colories burned",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Chart1()),

          Expanded(flex: 1, child: Collapse1()),
        ],
      ),
    );
  }
}
