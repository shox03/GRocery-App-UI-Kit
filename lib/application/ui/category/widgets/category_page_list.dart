import 'package:flutter/material.dart';
import 'package:grocery/application/ui/model/category_page_list_images.dart';
import 'package:grocery/application/ui/product_details/product_details.dart';
import 'package:grocery/application/ui/snacks/snacks_page.dart';
import 'package:grocery/constans/size_conig.dart';

class CategoryPageList extends StatelessWidget {
  const CategoryPageList({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.384,
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 14.0, mainAxisSpacing: 18.0),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => SnacksPage()));
            },
            child: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9.0),
                  image: DecorationImage(
                      image:
                          AssetImage(CategoryLisPagetInfo.listImages[index]))),
              height: getProportionateScreenHeight(160.0),
              width: getProportionateScreenWidth(165.0),
              child: Text(
                CategoryLisPagetInfo.listText[index],
                style: TextStyle(
                    color: Color.fromRGBO(55, 71, 79, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0),
              ),
            ),
          );
        },
      ),
    );
  }
}
