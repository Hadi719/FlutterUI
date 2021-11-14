import 'package:flutter/material.dart';
import 'package:hadi_mahmoudi/screens/chat_one/Samples/bar_chart_sample.dart';

class BarChartPage extends StatelessWidget {
  const BarChartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(28.0),
        child: BarChartSample(),
      ),
    );
  }
}
