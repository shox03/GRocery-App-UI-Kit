import 'package:flutter/material.dart';
import 'package:grocery/application/ui/category/widgets/category_page_list.dart';
import 'package:grocery/application/ui/grocery_plus/widgets/bottom_nav_bar.dart';
import 'package:grocery/constans/size_conig.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
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
                          "Category",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(46.0),
                    ),
                    CategoryPageList(),
                  ],
                ),
              ),
              Expanded(child: BuildBottomNavBar()),
            ],
          ),
        ),
      ),
    );
  }
}
