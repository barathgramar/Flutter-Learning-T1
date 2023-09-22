import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(children: [
                  Container(
                    // color: Colors.black,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color.fromARGB(255, 255, 0, 0)),
                    // child: RadialAxis(
                    //   minimum: 0,
                    //   maximum: 100,
                    //   showLabels: false,
                    //   showTicks: false,
                    //   startAngle: 270,
                    //   endAngle: 270,
                    //   axisLineStyle: AxisLineStyle(
                    //     thickness: 1,
                    //     color: const Color.fromARGB(255, 0, 169, 181),
                    //     thicknessUnit: GaugeSizeUnit.factor,
                    //   ),
                    //   pointers: <GaugePointer>[
                    //     RangePointer(
                    //       value: 10.0,
                    //       width: 0.15,
                    //       color: Colors.white,
                    //       pointerOffset: 0.1,
                    //       cornerStyle: CornerStyle.bothCurve,
                    //       sizeUnit: GaugeSizeUnit.factor,
                    //     )
                    //   ],
                    // ),
                  )
                ]))));
  }
}
