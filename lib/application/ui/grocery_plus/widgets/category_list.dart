import 'package:flutter/material.dart';
import 'package:grocery/application/ui/model/categorys_list_images.dart';
import 'package:grocery/application/ui/product_details/product_details.dart';
import 'package:grocery/constans/size_conig.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.72,
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 14.0, mainAxisSpacing: 18.0),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProducDetails()));
            },
            child: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(11.0),
                  image: DecorationImage(
                      image: AssetImage(CategoryListInfo.listImages[index]))),
              height: getProportionateScreenHeight(160.0),
              width: getProportionateScreenWidth(165.0),
              child: Text(
                CategoryListInfo.listText[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
