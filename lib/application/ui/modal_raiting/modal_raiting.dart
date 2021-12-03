import 'package:flutter/material.dart';
import 'package:grocery/application/ui/delivery_details/delivery_details.dart';
import 'package:grocery/application/ui/order_complited/order_complited.dart';
import 'package:grocery/constans/size_conig.dart';

class ModalRatingPage extends StatefulWidget {
  const ModalRatingPage({Key? key}) : super(key: key);

  @override
  _ModalRatingPageState createState() => _ModalRatingPageState();
}

class _ModalRatingPageState extends State<ModalRatingPage> {
  TextEditingController _editingController = TextEditingController();

  var _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(
                MediaQuery.of(context).size.height * 0.083),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(
                MediaQuery.of(context).size.width * 0.1,
              ),
            ),
            child: Container(
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.072),
              width: getProportionateScreenWidth(
                  MediaQuery.of(context).size.width * 0.664),
              child: Text(
                "Please share your experience with us",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenHeight(
                      MediaQuery.of(context).size.height * 0.03),
                ),
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(
                MediaQuery.of(context).size.height * 0.024),
          ),
          Center(
            child: Text(
              "3.0",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenHeight(
                    MediaQuery.of(context).size.height * 0.053),
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(
                MediaQuery.of(context).size.height * 0.015),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(
                MediaQuery.of(context).size.width * 0.08,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.star,
                    color: Color(0xffFADB14),
                    size: getProportionateScreenHeight(
                        MediaQuery.of(context).size.height * 0.05),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.star,
                    color: Color(0xffFADB14),
                    size: getProportionateScreenHeight(
                        MediaQuery.of(context).size.height * 0.05),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.star,
                    color: Color(0xffFADB14),
                    size: getProportionateScreenHeight(
                        MediaQuery.of(context).size.height * 0.05),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.star,
                    color: Color(0xffE8E8E8),
                    size: getProportionateScreenHeight(
                        MediaQuery.of(context).size.height * 0.05),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.star,
                    color: Color(0xffE8E8E8),
                    size: getProportionateScreenHeight(
                        MediaQuery.of(context).size.height * 0.05),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(
                MediaQuery.of(context).size.height * 0.07),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(
                MediaQuery.of(context).size.width * 0.025,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffF0F1F2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              height: getProportionateScreenHeight(
                  MediaQuery.of(context).size.height * 0.333),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  controller: _editingController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.menu_outlined),
                    prefixStyle: TextStyle(color: Colors.black),
                    labelText: "Review",
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(
                MediaQuery.of(context).size.height * 0.037),
          ),
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrderCompletedPage()));
              },
              child: Row(
                children: [
                  Spacer(),
                  Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.022),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(
                        MediaQuery.of(context).size.width * 0.296),
                  ),
                  Icon(
                    Icons.check,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(
                MediaQuery.of(context).size.height * 0.013),
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
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Text(
                    "Skip",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.022),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(
                        MediaQuery.of(context).size.width * 0.296),
                  ),
                  Icon(
                    Icons.arrow_forward,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          )
        ],
      ),
    );
  }
}
