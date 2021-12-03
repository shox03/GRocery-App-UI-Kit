import 'package:flutter/material.dart';
import 'package:grocery/constans/size_conig.dart';

class ProducDetails extends StatelessWidget {
  const ProducDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double widthPage = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
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
                    "Product Details",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                        color: Color(0xFF37474F)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: getProportionateScreenHeight(20.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23.0),
                      child: Container(
                        height: getProportionateScreenHeight(308.0),
                        width: getProportionateScreenWidth(294.0),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Rectangle 1.png")),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(50.0)),
                    Row(
                      children: [
                        Container(
                          width: getProportionateScreenWidth(66.0),
                          height: getProportionateScreenHeight(66.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Rectangle 32.png")),
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(26.0),
                        ),
                        Container(
                          width: getProportionateScreenWidth(66.0),
                          height: getProportionateScreenHeight(66.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Rectangle 33.png")),
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(36.0)),
                    Text(
                      "Arla DANO Full Cream Milk Powder Instant",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: getProportionateScreenHeight(16.0)),
                    Row(
                      children: [
                        Text(
                          "1 KG",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 29.0,
                              color: Color(0xFF3E3E3E)),
                        ),
                        Spacer(),
                        Text(
                          "৳182",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 29.0,
                              color: Color(0xFF5EC401)),
                        )
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(24.0)),
                    Row(
                      children: [
                        Icon(Icons.sort),
                        SizedBox(width: getProportionateScreenWidth(16.0)),
                        Text(
                          "Dairy Products",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        )
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(30.0)),
                    Row(
                      children: [
                        Icon(Icons.menu),
                        SizedBox(width: getProportionateScreenWidth(16.0)),
                        Expanded(
                          child: Text(
                            "Et quidem faciunt, ut summum bonum sit extremum et rationibus conquisitis de voluptate. Sed ut summum bonum sit id,",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(40.0)),
                    Text(
                      "You can also check this items",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: Color(0xFF37474F)),
                    ),
                    SizedBox(height: getProportionateScreenHeight(45.0)),
                    Row(
                      children: [
                        Container(
                          width: getProportionateScreenWidth(115.0),
                          height: getProportionateScreenHeight(121.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/Milk2.png")),
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
                            SizedBox(height: getProportionateScreenHeight(3.0)),
                            Text(
                              "৳342",
                              style: TextStyle(
                                  color: Color.fromRGBO(55, 71, 79, 0.54),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: getProportionateScreenHeight(3.0)),
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
                    SizedBox(height: getProportionateScreenHeight(46.0)),
                    Row(
                      children: [
                        Container(
                          width: getProportionateScreenWidth(115.0),
                          height: getProportionateScreenHeight(121.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/Milk1.png")),
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
                            SizedBox(height: getProportionateScreenHeight(3.0)),
                            Text(
                              "৳342",
                              style: TextStyle(
                                  color: Color.fromRGBO(55, 71, 79, 0.54),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: getProportionateScreenHeight(3.0)),
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
                    SizedBox(height: getProportionateScreenHeight(56.0)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9.0)),
                          fixedSize: Size(widthPage, 46),
                          primary: Color.fromRGBO(94, 196, 1, 1)),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "Add to Bag",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0),
                          ),
                          Spacer(),
                          Icon(Icons.shopping_bag_outlined)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
