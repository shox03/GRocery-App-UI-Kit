import 'package:flutter/material.dart';
import 'package:grocery/application/ui/model/wishlist_model.dart';
import 'package:grocery/constans/size_conig.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(17.0)),
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(17.0),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xFF37474F),
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(21.0),
                ),
                Text(
                  "Wishlist",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                      color: Color(0xFF37474F)),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(56.0)),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.22,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 2,
                scrollDirection: Axis.vertical,
                itemBuilder: (coontext, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: getProportionateScreenWidth(115.0),
                            height: getProportionateScreenHeight(121.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      WishListInfo.listImages[index])),
                              borderRadius: BorderRadius.circular(9.0),
                            ),
                          ),
                          SizedBox(width: getProportionateScreenWidth(17.0)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nestle Nido Full Cream\nMilk Powder Instant",
                                style: TextStyle(
                                    color: Color(0xFF37474F),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                  height: getProportionateScreenHeight(3.0)),
                              Text(
                                "৳342",
                                style: TextStyle(
                                    color: Color.fromRGBO(55, 71, 79, 0.54),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                  height: getProportionateScreenHeight(3.0)),
                              Text(
                                "৳270",
                                style: TextStyle(
                                    color: Color.fromRGBO(243, 122, 32, 1),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(40.0)),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
