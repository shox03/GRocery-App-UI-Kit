import 'package:flutter/material.dart';
import 'package:grocery/application/ui/more_page/configurations/size_config.dart';
import 'package:grocery/application/ui/more_page/text_setter.dart';

class SearchProbablityresult extends StatelessWidget {
  final String text;
  final Widget widget;
  const SearchProbablityresult(this.widget, this.text, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: gpsH(67.0),
      width: gpsW(375.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               widget,
                const SizedBox(
                  width: 18.0,
                ),
                SetText(
                  text,
                  fw: FontWeight.w500,
                )
              ],
            ),
          ),
          const Divider(
            height: 35.0,
          ),
        ],
      ),
    );
  }
}
