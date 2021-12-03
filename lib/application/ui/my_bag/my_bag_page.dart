import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/application/ui/order_map_collapsed/maps.dart';
import 'package:grocery/application/ui/order_processing/fouth_tab.dart';
import 'package:grocery/constans/size_conig.dart';

class MyBagPage extends StatefulWidget {
  const MyBagPage({Key? key}) : super(key: key);

  @override
  _MyBagPageState createState() => _MyBagPageState();
}

class _MyBagPageState extends State<MyBagPage> {
  int firstProductOne = 1;
  int secondProductTwo = 1;
 
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "My Bag",
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenHeight(
                MediaQuery.of(context).size.height * 0.03),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.02),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(
                    MediaQuery.of(context).size.width * 0.018),
              ),
              child: Text(
                "Products",
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(
                      MediaQuery.of(context).size.height * 0.024),
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
                              Text("20 %",
                                  style: TextStyle(color: Colors.white)),
                              Text("OFF",
                                  style: TextStyle(color: Colors.white)),
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
                          onPressed: () {
                            setState(() {
                              
                            });
                            firstProductOne -= 1;
                          },
                          child: Icon(
                            Icons.exposure_minus_1,
                          ),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(
                              MediaQuery.of(context).size.width * 0.06),
                        ),
                        Text(
                          "${firstProductOne}",
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
                          onPressed: () {
                            setState(() {
                              
                            });
                            firstProductOne += 1;
                          },
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
                          onPressed: () {setState(() {
                            secondProductTwo -= 1;
                          });},
                          child: Icon(
                            Icons.exposure_minus_1,
                          ),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(
                              MediaQuery.of(context).size.width * 0.06),
                        ),
                        Text(
                          "$secondProductTwo",
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
                          onPressed: () {
                            setState(() {
                              secondProductTwo += 1;
                            });
                          },
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
                  primary: Colors.green[50],
                ),
                onPressed: () {},
                child: Text(
                  "Add More Product",
                  style: TextStyle(
                    color: Color(0xff5EC401),
                    fontSize: getProportionateScreenHeight(
                        MediaQuery.of(context).size.height * 0.022),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.02),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(
                    MediaQuery.of(context).size.width * 0.02),
              ),
              child: Text(
                "Expected Date & Time",
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(
                      MediaQuery.of(context).size.height * 0.02),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.02),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(
                    MediaQuery.of(context).size.width * 0.032),
              ),
              child: ExpansionTile(
                children: [],
                title: Text("Select Date"),
                leading: Icon(
                  Icons.calendar_today_outlined,
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.02),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(
                    MediaQuery.of(context).size.width * 0.032),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xffF0F1F2),
                        borderRadius: BorderRadius.circular(9.0)),
                    height: getProportionateScreenHeight(
                        MediaQuery.of(context).size.height * 0.04),
                    width: getProportionateScreenWidth(
                        MediaQuery.of(context).size.width * 0.265),
                    child: Text(
                      "8 AM - 11 AM",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff5EC401), width: 2),
                        color: Color(0xffF0F1F2),
                        borderRadius: BorderRadius.circular(9.0)),
                    height: getProportionateScreenHeight(
                        MediaQuery.of(context).size.height * 0.04),
                    width: getProportionateScreenWidth(
                        MediaQuery.of(context).size.width * 0.265),
                    child: Text(
                      "11 AM - 12 PM",
                      style: TextStyle(color: Color(0xff5EC401)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xffF0F1F2),
                        borderRadius: BorderRadius.circular(9.0)),
                    height: getProportionateScreenHeight(
                        MediaQuery.of(context).size.height * 0.04),
                    width: getProportionateScreenWidth(
                        MediaQuery.of(context).size.width * 0.265),
                    child: Text(
                      "12 PM - 2 PM",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.02),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(
                    MediaQuery.of(context).size.width * 0.032),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xffF0F1F2),
                        borderRadius: BorderRadius.circular(9.0)),
                    height: getProportionateScreenHeight(
                        MediaQuery.of(context).size.height * 0.04),
                    width: getProportionateScreenWidth(
                        MediaQuery.of(context).size.width * 0.265),
                    child: Text(
                      "2 PM - 4 PM",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xffF0F1F2),
                        borderRadius: BorderRadius.circular(9.0)),
                    height: getProportionateScreenHeight(
                        MediaQuery.of(context).size.height * 0.04),
                    width: getProportionateScreenWidth(
                        MediaQuery.of(context).size.width * 0.265),
                    child: Text(
                      "4 PM - 6 PM",
                      style: TextStyle(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xffF0F1F2),
                        borderRadius: BorderRadius.circular(9.0)),
                    height: getProportionateScreenHeight(
                        MediaQuery.of(context).size.height * 0.04),
                    width: getProportionateScreenWidth(
                        MediaQuery.of(context).size.width * 0.265),
                    child: Text(
                      "6 PM - 8 PM",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.02),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(
                    MediaQuery.of(context).size.width * 0.02),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery Location",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.02),
                    ),
                  ),
                  Text(
                    "Change",
                    style: TextStyle(
                      color: Color(0xff5EC401),
                      fontSize: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.02),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.02),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(
                    MediaQuery.of(context).size.width * 0.02),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    backgroundColor: Colors.grey[200],
                    elevation: 0,
                    onPressed: () {},
                    child: Icon(
                      CupertinoIcons.location,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(
                        MediaQuery.of(context).size.width * 0.02),
                  ),
                  Container(
                    width: getProportionateScreenWidth(
                        MediaQuery.of(context).size.width * 0.616),
                    child: Text(
                      "Floor 4, Wakil Tower, Ta 131 Gulshan Badda Link Road",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(
                            MediaQuery.of(context).size.height * 0.016),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.02),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(
                  MediaQuery.of(context).size.width * 0.025,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.019),
                    ),
                  ),
                  Text(
                    "BDT362",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.019),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.026),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(
                  MediaQuery.of(context).size.width * 0.025,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery Charge",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.019),
                    ),
                  ),
                  Text(
                    "BDT50",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.019),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.026),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(
                  MediaQuery.of(context).size.width * 0.025,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total ",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.019),
                    ),
                  ),
                  Text(
                    "BDT412",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.019),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.026),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(
                    MediaQuery.of(context).size.width * 0.04),
              ),
              child: Text(
                "Payment Method",
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(
                      MediaQuery.of(context).size.height * 0.019),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.026),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(
                    MediaQuery.of(context).size.width * 0.04),
              ),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(12.0),
                ),
                height: getProportionateScreenHeight(
                    MediaQuery.of(context).size.height * 0.08),
                // width: getProportionateScreenWidth(
                //     MediaQuery.of(context).size.width * 0.865),
                child: ListTile(
                  title: Text("Tap Here to select your Payment Method"),
                  leading: CircleAvatar(
                    backgroundColor: Color(0xff5EC401),
                    child: Icon(
                      CupertinoIcons.money_dollar,
                      color: Colors.white,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.026),
            ),
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
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Maps()));
                },
                child: Row(
                  children: [
                    Spacer(),
                    Text(
                      "Place Order",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(
                            MediaQuery.of(context).size.height * 0.022),
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(
                          MediaQuery.of(context).size.width * 0.266),
                    ),
                    Icon(
                      Icons.arrow_forward,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
