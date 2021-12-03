import 'package:flutter/material.dart';
import 'package:grocery/constans/size_conig.dart';

Row buildLocationMethod(BuildContext context) {
  SizeConfig().init(context);

  return Row(
    children: [
      SizedBox(
        height: getProportionateScreenHeight(45.0),
        width: getProportionateScreenWidth(45.0),
        child: FloatingActionButton(
          backgroundColor: Color(0xFF87DD39),
          onPressed: () {},
          child: Icon(Icons.place_outlined),
        ),
      ),
      SizedBox(width: getProportionateScreenWidth(11.0)),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your Location",
            style: TextStyle(color: Color(0xFF37474F), fontSize: 11.0),
          ),
          Text(
            "32 Llanberis Close, Tonteg, CF38 1HR",
            style: TextStyle(
                color: Color(0xFF37474F),
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
      Spacer(),
      Icon(
        Icons.arrow_forward_ios_rounded,
        size: 19.0,
      )
    ],
  );
}
