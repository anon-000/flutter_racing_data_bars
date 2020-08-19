import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racing_data_bar/bar_data.dart';

///
/// Created By AURO (aurosmruti@smarttersstudio.com) on 8/20/2020 1:00 AM
///




class RacingDataBars extends StatelessWidget {
  final double height;
  final double width;
  final double gap;
  final List<BarDatum> data;
  RacingDataBars({this.width, this.height, @required this.data, this.gap=10.0});
  @override
  Widget build(BuildContext context) {
    double h = Get.height;
    double w = Get.width;
    double barHeight = (height??h/2/data.length) ;
    return Stack(
      children: [
        Container(
          height: height ?? h/2,
          width: width ?? w,
        ),
        Container(
          height: height ?? h/2,
          width: width ?? w,
          child: Stack(
            children: data.map((e){
              int index = data.indexOf(e);
              return Positioned(
                  left: 0,
                  top: gap + (barHeight + 2*gap)*index,
                child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                  width: data[index].value,
                  height: barHeight,
                  color: Colors.green,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
