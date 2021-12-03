import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/application/ui/full_package_detail/full_package_detail.dart';
import 'package:grocery/constans/colors_constants.dart';
import 'package:grocery/constans/size_conig.dart';

class FouthPage extends StatelessWidget {
  const FouthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "asset/images/fon.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              height: getProportionateScreenHeight(292.89),
              width: getProportionateScreenWidth(375.65),
              child: Stack(
                children: [
                  Positioned(
                    top: 30.0,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back),
                        ),
                        Text(
                          "Order #345",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(20.0),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Scheduled",
                              style: TextStyle(
                                fontSize: getProportionateScreenWidth(16.0),
                                fontWeight: FontWeight.w500,
                                color: text,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    top: 121.0,
                    left: 17.0,
                  ),
                  const Positioned(
                    child: Text(
                      "6:35 pm",
                      style: TextStyle(
                        color: clock,
                        fontSize: 17.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    top: 121.0,
                    left: 267.0,
                  ),
                  Positioned(
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Icon(
                              CupertinoIcons.calendar,
                              size: 30.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    top: 162.0,
                    left: 17.0,
                  ),
                  const Positioned(
                    child: Text(
                      "March 5, 2019",
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.w400,
                        color: bgrey,
                      ),
                    ),
                    top: 157.0,
                    left: 59.0,
                  ),
                  Positioned(
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 14.0),
                          height: getProportionateScreenHeight(2.0),
                          width: getProportionateScreenWidth(80.0),
                          color: green,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 7.5),
                          height: getProportionateScreenHeight(2.0),
                          width: getProportionateScreenWidth(80.0),
                          color: green,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 7.5),
                          height: getProportionateScreenHeight(2.0),
                          width: getProportionateScreenWidth(80.0),
                          color: green,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 7.5),
                          height: getProportionateScreenHeight(2.0),
                          width: getProportionateScreenWidth(80.0),
                          color: Colors.green,
                        ),
                      ],
                    ),
                    top: 210.0,
                  ),
                  const Positioned(
                    child: Text(
                      "Your order is recieved",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: grey),
                    ),
                    top: 230.0,
                    left: 17.0,
                  ),
                ],
              ),
            ),
            Column(
              children: [
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
                        color: const Color(0xff5EC401),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                const Padding(
                  padding: EdgeInsets.only(right: 200.0),
                  child: Text(
                    "Delivery Man",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: bgrey,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                const ListTile(
                  leading: CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.green,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1638451794105-51039af85a31?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80'),
                  ),
                  title: Text(
                    "Monir Hasan",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: text,
                    ),
                  ),
                  subtitle: Text(
                    "(207) 555-0119",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: text,
                    ),
                  ),
                  trailing: InkWell(
                    child: CircleAvatar(
                      backgroundColor: Colors.orangeAccent,
                      radius: 50.0,
                      child: Icon(
                        Icons.call_outlined,
                        color: clock,
                        size: 17.49,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                const Padding(
                  padding: EdgeInsets.only(right: 170.0),
                  child: Text(
                    "Delivery Location",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: bgrey,
                    ),
                  ),
                ),
                const SizedBox(height: 21),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.blueGrey.shade200,
                        child: const Icon(
                          CupertinoIcons.location,
                          color: black,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text(
                        "Floor 4, Wakil Tower, Ta 131 Gulshan\nBadda Link Road",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: bgrey),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 21.0),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Divider(
                    height: getProportionateScreenHeight(1.0),
                    thickness: 1,
                    color: divider,
                  ),
                ),
                const SizedBox(height: 15.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Subtotal",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(15.0),
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 215.0),
                      child: Text(
                        "BDT362",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(15.0),
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Delivery Charge",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(15.0),
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 156.0),
                      child: Text(
                        "BDT50",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(15.0),
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Total",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(15.0),
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade900,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 245.0),
                      child: Text(
                        "BDT412",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(15.0),
                          color: Colors.grey.shade900,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25.0),
                Padding(
                  padding: const EdgeInsets.only(right: 200.0),
                  child: Text(
                    "Payment Method",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(16.0),
                        fontWeight: FontWeight.w500,
                        color: bgrey),
                  ),
                ),
                const SizedBox(height: 15.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  height: getProportionateScreenHeight(85.0),
                  width: getProportionateScreenWidth(345.0),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff5EC401),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          height: getProportionateScreenHeight(40.0),
                          width: getProportionateScreenWidth(40.0),
                          child: Image.asset("assets/images/icons.png"),
                        ),
                        top: 20.0,
                        left: 10.0,
                      ),
                      Positioned(
                        child: Text(
                          "You selected",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade500),
                        ),
                        left: 65.0,
                        top: 20.0,
                      ),
                      const Positioned(
                        child: Text(
                          "Cash on Delivery",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              color: black),
                        ),
                        left: 65.0,
                        top: 40.0,
                      ),
                      Positioned(
                        child: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                        ),
                        top: 16.0,
                        left: 300.0,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 23),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Text(
                    "Cash on derivery has some potential risks of\nspreading contamination. Youcan select other\npayment methods for a contactless safe\ndelivery.",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(
                        MediaQuery.of(context).size.width * 0.032),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(
                          getProportionateScreenWidth(
                              MediaQuery.of(context).size.width * 0.95),
                          getProportionateScreenHeight(
                              MediaQuery.of(context).size.height * 0.058),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        primary: const Color(0xffF37A20),
                        elevation: 0),
                    onPressed: () {},
                    child: Text(
                      "Contact with Support",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(
                            MediaQuery.of(context).size.height * 0.022),
                        color: Colors.white,
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
                              MediaQuery.of(context).size.width * 0.95),
                          getProportionateScreenHeight(
                              MediaQuery.of(context).size.height * 0.058),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        primary: const Color(0xff5EC401),
                        elevation: 0),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FullPackagePage()));
                    },
                    child: Text(
                      "Confrim Delivery",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(
                            MediaQuery.of(context).size.height * 0.022),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
