import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:grocery/application/ui/grocery_plus/widgets/category_list.dart';
import 'package:grocery/application/ui/grocery_plus/widgets/location_method.dart';
import 'package:grocery/application/ui/grocery_plus/widgets/search_bar.dart';
import 'package:grocery/constans/size_conig.dart';

class GroceryPluss extends StatefulWidget {
  const GroceryPluss({Key? key}) : super(key: key);

  @override
  _GroceryPlussState createState() => _GroceryPlussState();
}

class _GroceryPlussState extends State<GroceryPluss> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/back.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(getProportionateScreenWidth(16.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Grocery Plus",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Icon(Icons.notifications_none_outlined)
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15.5),
                  ),
                  buildLocationMethod(context),
                  SizedBox(
                    height: getProportionateScreenHeight(27.0),
                  ),
                  buildSearchbar(),
                  SizedBox(
                    height: getProportionateScreenHeight(34.0),
                  ),
                  CategoryList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
