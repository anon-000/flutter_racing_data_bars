import 'package:flutter/material.dart';
import 'package:racing_data_bar/bar_data.dart';
import 'package:racing_data_bar/racing_data_bars.dart';

///
/// Created By AURO (aurosmruti@smarttersstudio.com) on 8/20/2020 12:50 AM
///

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          RacingDataBars(data: [
            BarDatum(title: 'A', value: 50),
            BarDatum(title: 'C', value: 10),
            BarDatum(title: 'D', value: 80),
            BarDatum(title: 'B', value: 100),
            BarDatum(title: 'P', value: 40),
            BarDatum(title: 'Q', value: 90),
            BarDatum(title: 'R', value: 50),
            BarDatum(title: 'T', value: 150),
          ])
        ],
      ),
    );
  }
}
