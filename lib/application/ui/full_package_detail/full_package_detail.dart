import 'package:flutter/material.dart';
import 'package:grocery/application/ui/modal_raiting/modal_raiting.dart';
import 'package:grocery/constans/size_conig.dart';

class FullPackagePage extends StatefulWidget {
  const FullPackagePage({Key? key}) : super(key: key);

  @override
  _FullPackagePageState createState() => _FullPackagePageState();
}

class _FullPackagePageState extends State<FullPackagePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: getProportionateScreenHeight(37.0)),
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
                "Full Package Destails",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    color: Color(0xFF37474F)),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 80, left: 17, right: 160),
            child: const Text(
              "Products",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(
                MediaQuery.of(context).size.height * 0.02),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(
                      MediaQuery.of(context).size.width * 0.03),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.121),
                      width: getProportionateScreenWidth(
                          MediaQuery.of(context).size.width * 0.265),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          //fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/cheeps.jpeg",
                          ),
                        ),
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: CircleAvatar(
                        backgroundColor: Color(0xffF37A20),
                        radius: getProportionateScreenHeight(
                            MediaQuery.of(context).size.width * 0.08),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("20 %", style: TextStyle(color: Colors.white)),
                            Text("OFF", style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // height: getProportionateScreenHeight(
                    //       MediaQuery.of(context).size.height * 0.121),
                    width: getProportionateScreenWidth(
                        MediaQuery.of(context).size.width * 0.365),
                    child: Text(
                      "Arla DANO Full Cream Milk Powder Instant",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(
                            MediaQuery.of(context).size.height * 0.015),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(
                        MediaQuery.of(context).size.height * 0.01),
                  ),
                  Text(
                    "৳200",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(
                        MediaQuery.of(context).size.height * 0.01),
                  ),
                  Row(
                    children: [
                      Text(
                        "৳182",
                        style: TextStyle(
                          fontSize: getProportionateScreenHeight(
                              MediaQuery.of(context).size.height * 0.027),
                          color: Color(0xffF37A20),
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(
                            MediaQuery.of(context).size.width * 0.02),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          minimumSize: Size(
                            getProportionateScreenWidth(
                                MediaQuery.of(context).size.width * 0.01),
                            getProportionateScreenHeight(
                                MediaQuery.of(context).size.height * 0.01),
                          ),
                          primary: Color(0xffFF5552),
                        ),
                        onPressed: () {},
                        child: Icon(
                          Icons.exposure_minus_1,
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(
                            MediaQuery.of(context).size.width * 0.06),
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                          fontSize: getProportionateScreenHeight(
                              MediaQuery.of(context).size.height * 0.02),
                          color: Color(0xff000000),
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(
                            MediaQuery.of(context).size.width * 0.06),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          minimumSize: Size(
                            getProportionateScreenWidth(
                                MediaQuery.of(context).size.width * 0.01),
                            getProportionateScreenHeight(
                                MediaQuery.of(context).size.height * 0.01),
                          ),
                          primary: Color(0xff5EC401),
                        ),
                        onPressed: () {},
                        child: Icon(
                          Icons.exposure_plus_1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(
                      MediaQuery.of(context).size.width * 0.03),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.121),
                      width: getProportionateScreenWidth(
                          MediaQuery.of(context).size.width * 0.265),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          //fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/nido.jpeg",
                          ),
                        ),
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // height: getProportionateScreenHeight(
                    //       MediaQuery.of(context).size.height * 0.121),
                    width: getProportionateScreenWidth(
                        MediaQuery.of(context).size.width * 0.365),
                    child: Text(
                      "Nestle Nido Full Cream Milk Powder Instant",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(
                            MediaQuery.of(context).size.height * 0.015),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(
                        MediaQuery.of(context).size.height * 0.01),
                  ),
                  Text(
                    "৳200",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(
                        MediaQuery.of(context).size.height * 0.01),
                  ),
                  Row(
                    children: [
                      Text(
                        "৳342",
                        style: TextStyle(
                          fontSize: getProportionateScreenHeight(
                              MediaQuery.of(context).size.height * 0.027),
                          color: Color(0xffF37A20),
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(
                            MediaQuery.of(context).size.width * 0.02),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          minimumSize: Size(
                            getProportionateScreenWidth(
                                MediaQuery.of(context).size.width * 0.01),
                            getProportionateScreenHeight(
                                MediaQuery.of(context).size.height * 0.01),
                          ),
                          primary: Color(0xffFF5552),
                        ),
                        onPressed: () {},
                        child: Icon(
                          Icons.exposure_minus_1,
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(
                            MediaQuery.of(context).size.width * 0.06),
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                          fontSize: getProportionateScreenHeight(
                              MediaQuery.of(context).size.height * 0.02),
                          color: Color(0xff000000),
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(
                            MediaQuery.of(context).size.width * 0.06),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          minimumSize: Size(
                            getProportionateScreenWidth(
                                MediaQuery.of(context).size.width * 0.01),
                            getProportionateScreenHeight(
                                MediaQuery.of(context).size.height * 0.01),
                          ),
                          primary: Color(0xff5EC401),
                        ),
                        onPressed: () {},
                        child: Icon(
                          Icons.exposure_plus_1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Divider(),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(
                  MediaQuery.of(context).size.width * 0.032),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                minimumSize: Size(
                  getProportionateScreenWidth(
                      MediaQuery.of(context).size.width * 0.89),
                  getProportionateScreenHeight(
                      MediaQuery.of(context).size.height * 0.058),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                primary: Color(0xff5EC401),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ModalRatingPage()));
              },
              child: Row(
                children: [
                  Spacer(),
                  Text(
                    "Add New Product",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.022),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.add,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03)
        ],
      ),
    );
  }
}
