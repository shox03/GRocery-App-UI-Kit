import 'package:flutter/material.dart';
import 'package:grocery/application/ui/more_page/configurations/colors.dart';
import 'package:grocery/application/ui/more_page/configurations/size_config.dart';

// ignore: must_be_immutable
class SetText extends StatelessWidget {
  Color? color;
  double? size;
  FontWeight? fw;
  late String text;
  SetText(
    this.text, {
    this.size,
    this.color,
    this.fw,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? blackColor,
        fontSize:size != null ? gpsW(size!) : gpsW(14.0),
        fontWeight: fw ?? FontWeight.normal,
      ),
    );
  }
}
