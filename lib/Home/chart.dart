import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';

class Sparkine extends StatefulWidget {
  const Sparkine({Key? key}) : super(key: key);

  @override
  _SparkineState createState() => _SparkineState();
}

class _SparkineState extends State<Sparkine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xffb4b9d1),
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order amount by month",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontSize: 13,
                      ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 16 * 2,
                ),
                Row(
                  children: [
                    Container(
                      height: 17,
                      width: 30,
                      color: Color(0xffb4b9d1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Order cout in last 10 days",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 10,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16 * 2,
                ),
                Expanded(
                  child: Sparkline(
                    data: [-2.3, 1 - 0, 2 - 5, -1.5, 2, 5, -2.3],
                    fillMode: FillMode.below,
                    lineWidth: 2,
                    gridLineLabelPrecision: 3,
                    useCubicSmoothing: true,
                    kLine: ['max', 'min', 'first', 'last'],
                    // sharpCorners: true,
                    // averageLable: true,
                    // enableGridLines: true,
                    // enableThreshold: true,
                    // max: 50.5,
                    // min: 10.0,
                    // enableThreshold: true,
                    // thresholdSize: 0.1,
                    lineGradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue, Colors.blueAccent],
                    ),
                    // fillGradient: LinearGradient(
                    //   begin: Alignment.topCenter,
                    //   end: Alignment.bottomCenter,
                    //   colors: [Colors.purple[800]!, Colors.purple[200]!],
                    // ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
