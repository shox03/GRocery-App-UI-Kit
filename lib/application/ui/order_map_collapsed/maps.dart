import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/application/ui/order_processing/fouth_tab.dart';
import 'package:grocery/constans/colors_constants.dart';
import 'package:grocery/constans/size_conig.dart';

class Maps extends StatefulWidget {
  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> with TickerProviderStateMixin {
  TabController? _tabController;
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        height: getProportionateScreenHeight(812.0),
        width: getProportionateScreenWidth(375.0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/map.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        child: Column(
                          children: [
                            const SizedBox(height: 35.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 16.0),
                                  child: Text(
                                    "Estimated Arrival",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w200),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 16.0),
                                  child: Text(
                                    "6:30 pm",
                                    style: TextStyle(
                                        color: clock,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const SizedBox(height: 23.0),
                                Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(left: 16.0),
                                      child: Icon(
                                        CupertinoIcons.clock,
                                        color: black,
                                      ),
                                    ),
                                    SizedBox(width: 17),
                                    Text(
                                      "< 1 hour",
                                      style: TextStyle(
                                          color: bgrey, fontSize: 32.0),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 19.0),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 14.0),
                                      height: getProportionateScreenHeight(2.0),
                                      width: getProportionateScreenWidth(80.0),
                                      color: green,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 7.5),
                                      height: getProportionateScreenHeight(2.0),
                                      width: getProportionateScreenWidth(80.0),
                                      color: green,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 7.5),
                                      height: getProportionateScreenHeight(2.0),
                                      width: getProportionateScreenWidth(80.0),
                                      color: green,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 7.5),
                                      height: getProportionateScreenHeight(2.0),
                                      width: getProportionateScreenWidth(80.0),
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15.0),
                                const Padding(
                                  padding: EdgeInsets.only(right: 65.0),
                                  child: Text(
                                    "We are delivering this order to you",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: grey,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20.0),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: getProportionateScreenWidth(
                                        MediaQuery.of(context).size.width *
                                            0.032),
                                  ),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(
                                          getProportionateScreenWidth(
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.89),
                                          getProportionateScreenHeight(
                                              MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.058),
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        primary: Colors.green[50],
                                        elevation: 0),
                                    onPressed: () {},
                                    child: Text(
                                      "Show Delivery Details",
                                      style: TextStyle(
                                        fontSize: getProportionateScreenHeight(
                                            MediaQuery.of(context).size.height *
                                                0.022),
                                        color: Color(0xff5EC401),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(
                                      MediaQuery.of(context).size.height *
                                          0.02),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: getProportionateScreenWidth(
                                        MediaQuery.of(context).size.width *
                                            0.032),
                                  ),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(
                                          getProportionateScreenWidth(
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.89),
                                          getProportionateScreenHeight(
                                              MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.058),
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        primary: Colors.green[50],
                                        elevation: 0),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FouthPage()));
                                    },
                                    child: Text(
                                      "Show Full Package",
                                      style: TextStyle(
                                        fontSize: getProportionateScreenHeight(
                                            MediaQuery.of(context).size.height *
                                                0.022),
                                        color: Color(0xff5EC401),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        height: getProportionateScreenHeight(350.0),
                      );
                    },
                  );
                },
                child: const Text("+"),
              ),
              top: 710.0,
              left: 280.0,
            ),
          ],
        ),
      ),
    );
  }
}
