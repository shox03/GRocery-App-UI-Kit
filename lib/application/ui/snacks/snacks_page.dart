import 'package:flutter/material.dart';
import 'package:grocery/application/ui/model/snacks_model.dart';
import 'package:grocery/application/ui/test_page/main_page.dart';
import 'package:grocery/constans/size_conig.dart';

class SnacksPage extends StatelessWidget {
  const SnacksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthPage = MediaQuery.of(context).size.width;

    SizeConfig().init(context);
    final double itemHeight = 293.0;
    final double itemWidth = getProportionateScreenWidth(164.0);

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(17.0)),
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(17.0),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainPage()));
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
                  "Snacks",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                      color: Color(0xFF37474F)),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(43.0)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 1.19,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14.0,
                    mainAxisSpacing: 18.0,
                    childAspectRatio: (itemWidth / itemHeight),
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(9.0),
                              image: DecorationImage(
                                  image: AssetImage(
                                      SnaclsPagetInfo.listImages[index]))),
                          height: getProportionateScreenHeight(135.0),
                          width: getProportionateScreenWidth(164.0),
                        ),
                        SizedBox(height: getProportionateScreenHeight(12.0)),
                        Text(
                          SnaclsPagetInfo.listText[index],
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: getProportionateScreenHeight(32.0)),
                        Text(
                          "৳60",
                          style:
                              TextStyle(color: Color.fromRGBO(243, 122, 32, 1)),
                        ),
                        SizedBox(height: getProportionateScreenHeight(12.0)),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9.0)),
                              fixedSize: Size(widthPage, 35.0),
                              primary: Color.fromRGBO(94, 196, 1, 1)),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.shopping_bag_outlined),
                              Spacer(),
                              Text(
                                "Add to Bag",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
