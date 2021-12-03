import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/application/ui/delivery_details/delivery_details.dart';
import 'package:grocery/constans/size_conig.dart';

class OrderCompletedPage extends StatefulWidget {
  const OrderCompletedPage({Key? key}) : super(key: key);

  @override
  _OrderCompletedPageState createState() => _OrderCompletedPageState();
}

class _OrderCompletedPageState extends State<OrderCompletedPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff37474F),
          ),
        ),
        title: Text(
          "Order #345",
          style: TextStyle(
            fontSize: getProportionateScreenHeight(
                MediaQuery.of(context).size.height * 0.025),
            color: Color(0xff37474F),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(
                    MediaQuery.of(context).size.width * 0.017),
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(
                        MediaQuery.of(context).size.height * 0.063),
                  ),
                  Text(
                    "Estimated Delivery",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.02),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "6:30 pm",
                    style: TextStyle(
                      color: Color(0xffF37A20),
                      fontSize: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.025),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(
                    MediaQuery.of(context).size.width * 0.019),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.calendar_today_outlined),
                  SizedBox(
                    width: getProportionateScreenWidth(
                        MediaQuery.of(context).size.width * 0.017),
                  ),
                  Text(
                    "March 5, 2019",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.04),
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
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
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
                    elevation: 0),
                onPressed: () {},
                child: Text(
                  "Show Delivery Details",
                  style: TextStyle(
                    fontSize: getProportionateScreenHeight(
                        MediaQuery.of(context).size.height * 0.022),
                    color: Color(0xff5EC401),
                  ),
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
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
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
                    elevation: 0),
                onPressed: () {},
                child: Text(
                  "Show Full Package",
                  style: TextStyle(
                    fontSize: getProportionateScreenHeight(
                        MediaQuery.of(context).size.height * 0.022),
                    color: Color(0xff5EC401),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.037),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(
                    MediaQuery.of(context).size.width * 0.02),
              ),
              child: Text(
                "Delivery Man",
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(
                      MediaQuery.of(context).size.height * 0.024),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.017),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(
                    MediaQuery.of(context).size.width * 0.019),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: getProportionateScreenWidth(
                        MediaQuery.of(context).size.height * 0.04),
                    backgroundImage: AssetImage("assets/images/man.jpg"),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(
                        MediaQuery.of(context).size.width * 0.061),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Brandon Henry",
                        style: TextStyle(
                          fontSize: getProportionateScreenHeight(
                            MediaQuery.of(context).size.height * 0.018,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenWidth(
                            MediaQuery.of(context).size.width * 0.021),
                      ),
                      Text(
                        "(207) 555-0119",
                        style: TextStyle(
                          fontSize: getProportionateScreenHeight(
                            MediaQuery.of(context).size.height * 0.018,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          getProportionateScreenWidth(
                              MediaQuery.of(context).size.height * 0.1),
                        ),
                      ),
                      minimumSize: Size(
                        getProportionateScreenWidth(
                            MediaQuery.of(context).size.width * 0.18),
                        getProportionateScreenHeight(
                            MediaQuery.of(context).size.height * 0.09),
                      ),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: Icon(
                      Icons.call_outlined,
                      color: Color(0xffF37A20),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.045),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(
                    MediaQuery.of(context).size.width * 0.015),
              ),
              child: Text(
                "Delivery Location",
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
            Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(
                    MediaQuery.of(context).size.width * 0.016),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  MediaQuery.of(context).size.height * 0.026),
            ),
            Divider(
              indent: getProportionateScreenWidth(
                  MediaQuery.of(context).size.width * 0.032),
              endIndent: getProportionateScreenWidth(
                  MediaQuery.of(context).size.width * 0.032),
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
                  MediaQuery.of(context).size.height * 0.036),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(
                  MediaQuery.of(context).size.width * 0.025,
                ),
              ),
              child: Text(
                "Rating & Review ",
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(
                      MediaQuery.of(context).size.height * 0.019),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.007),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(
                  MediaQuery.of(context).size.width * 0.025,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "4.0",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.04),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(
                        MediaQuery.of(context).size.width * 0.018),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: Color(0xffFADB14),
                      size: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.04),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: Color(0xffFADB14),
                      size: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.04),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: Color(0xffFADB14),
                      size: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.04),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: Color(0xffFADB14),
                      size: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.04),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: Color(0xffE8E8E8),
                      size: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.04),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.017),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(
                  MediaQuery.of(context).size.width * 0.025,
                ),
              ),
              child: Container(
                height: getProportionateScreenHeight(
                    MediaQuery.of(context).size.height * 0.13),
                child: Text(
                  "Consectetur non occaecat eu ut enim ipsum reprehenderit eu. Enim eiusmod consequat cillum velit. Proident esse irure est anim irure mollit velit.",
                  style: TextStyle(
                      fontSize: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.021)),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.019),
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
                  primary: Color(0xffF37A20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DeliveryDetailsPage()));
                },
                child: Row(
                  children: [
                    Spacer(),
                    SizedBox(
                      width: getProportionateScreenWidth(
                          MediaQuery.of(context).size.width * 0.1),
                    ),
                    Text(
                      "Reorder Item",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(
                            MediaQuery.of(context).size.height * 0.022),
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(
                          MediaQuery.of(context).size.width * 0.177),
                    ),
                    Icon(
                      Icons.chat,
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
