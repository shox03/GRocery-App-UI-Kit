import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/constans/size_conig.dart';

class DeliveryDetailsPage extends StatefulWidget {
  const DeliveryDetailsPage({Key? key}) : super(key: key);

  @override
  _DeliveryDetailsPageState createState() => _DeliveryDetailsPageState();
}

class _DeliveryDetailsPageState extends State<DeliveryDetailsPage> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff37474F),
          ),
        ),
        title: Text(
          "Delivery Details",
          style: TextStyle(
            fontSize: getProportionateScreenHeight(
                MediaQuery.of(context).size.height * 0.025),
            color: Color(0xff37474F),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  "Delivered on",
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
          Stepper(
            type: StepperType.vertical,
            currentStep: _currentStep,
            onStepContinue: continued,
            onStepCancel: cancel,
            onStepTapped: (step) => tapped(step),
            physics: ScrollPhysics(),
            steps: [
              Step(
                state: StepState.disabled,
                isActive: _currentStep >= 0,
                title: Text(""),
                content: Container(
                  height: getProportionateScreenHeight(
                      MediaQuery.of(context).size.height * 0.11),
                  width: getProportionateScreenWidth(
                      MediaQuery.of(context).size.width * 0.9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[350],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(
                          MediaQuery.of(context).size.width * 0.024),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Waiting of Confirmation",
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: getProportionateScreenHeight(
                                MediaQuery.of(context).size.height * 0.024),
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(
                              MediaQuery.of(context).size.height * 0.009),
                        ),
                        Text(
                          "November 19,2012 4:50 AM",
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: getProportionateScreenHeight(
                                MediaQuery.of(context).size.height * 0.019),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Step(
                state: StepState.complete,
                isActive: _currentStep >= 0,
                title: Text(""),
                content: Container(
                  height: getProportionateScreenHeight(
                      MediaQuery.of(context).size.height * 0.11),
                  width: getProportionateScreenWidth(
                      MediaQuery.of(context).size.width * 0.9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green[100],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(
                          MediaQuery.of(context).size.width * 0.024),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Delivering to Home",
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: getProportionateScreenHeight(
                                MediaQuery.of(context).size.height * 0.024),
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(
                              MediaQuery.of(context).size.height * 0.009),
                        ),
                        Text(
                          "April 19,2012 3:30 PM",
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: getProportionateScreenHeight(
                                MediaQuery.of(context).size.height * 0.019),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Step(
                state: StepState.complete,
                isActive: _currentStep >= 0,
                title: Text(""),
                content: Container(
                  height: getProportionateScreenHeight(
                      MediaQuery.of(context).size.height * 0.11),
                  width: getProportionateScreenWidth(
                      MediaQuery.of(context).size.width * 0.9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blue[50],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(
                          MediaQuery.of(context).size.width * 0.024),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "We are packaging your Items",
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: getProportionateScreenHeight(
                                MediaQuery.of(context).size.height * 0.024),
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(
                              MediaQuery.of(context).size.height * 0.009),
                        ),
                        Text(
                          "March 11, 2016 11:08 PM",
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: getProportionateScreenHeight(
                                MediaQuery.of(context).size.height * 0.019),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Step(
                state: StepState.complete,
                isActive: _currentStep >= 0,
                title: Text(""),
                content: Container(
                  height: getProportionateScreenHeight(
                      MediaQuery.of(context).size.height * 0.11),
                  width: getProportionateScreenWidth(
                      MediaQuery.of(context).size.width * 0.9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.amber[50],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(
                          MediaQuery.of(context).size.width * 0.024),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Your order is confirmed",
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: getProportionateScreenHeight(
                                MediaQuery.of(context).size.height * 0.024),
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(
                              MediaQuery.of(context).size.height * 0.009),
                        ),
                        Text(
                          "November 19, 2012 4:50 AM",
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: getProportionateScreenHeight(
                                MediaQuery.of(context).size.height * 0.019),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Step(
                state: StepState.complete,
                isActive: _currentStep >= 0,
                title: Text(""),
                content: Container(
                  height: getProportionateScreenHeight(
                      MediaQuery.of(context).size.height * 0.11),
                  width: getProportionateScreenWidth(
                      MediaQuery.of(context).size.width * 0.9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.pink[50],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(
                          MediaQuery.of(context).size.width * 0.024),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Your order is received",
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: getProportionateScreenHeight(
                                MediaQuery.of(context).size.height * 0.024),
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(
                              MediaQuery.of(context).size.height * 0.009),
                        ),
                        Text(
                          "November 19, 2012 4:50 AM",
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: getProportionateScreenHeight(
                                MediaQuery.of(context).size.height * 0.019),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
                children: [
                  Spacer(),
                  SizedBox(
                    width: getProportionateScreenWidth(
                        MediaQuery.of(context).size.width * 0.1),
                  ),
                  Text(
                    "Contact with Support",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(
                          MediaQuery.of(context).size.height * 0.022),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(
                        MediaQuery.of(context).size.width * 0.116),
                  ),
                  Icon(
                    Icons.chat,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(
              MediaQuery.of(context).size.height * 0.007,
            ),
          ),
        ],
      ),
    );
  }

  continued() {
    _currentStep < 4 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }
}
