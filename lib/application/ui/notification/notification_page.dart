import 'package:flutter/material.dart';
import 'package:grocery/application/ui/chat_page/custumer_support_chat.dart';
import 'package:grocery/application/ui/model/notification_list_info.dart';
import 'package:grocery/constans/size_conig.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int? indeexOfNumber;
    SizeConfig().init(context);
    Color backColor = Color.fromRGBO(217, 238, 202, 1);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                  "Notifications",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                      color: Color(0xFF37474F)),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(16.0)),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.22,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                scrollDirection: Axis.vertical,
                itemBuilder: (coontext, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: getProportionateScreenHeight(7.0),
                            left: getProportionateScreenWidth(16.0),
                            right: getProportionateScreenWidth(16.0)),
                        child: Card(
                          color: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          elevation: 0,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 12.0),
                            child: ListTile(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0)),
                              onTap: () {
                                indeexOfNumber = index;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChatWithus(
                                              indexOfCard: index,
                                            )));
                              },
                              hoverColor: backColor,
                              title: Text(
                                "Order #345",
                                style: TextStyle(
                                    color: Color.fromRGBO(55, 71, 79, 1),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              subtitle: Padding(
                                padding: EdgeInsets.symmetric(vertical: 3.0),
                                child: Text(
                                  NotificationList.typeOfOrder[index],
                                  style: TextStyle(
                                      color: Color.fromRGBO(55, 71, 79, 1),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              trailing: Column(
                                children: [
                                  Text(
                                    "3:57 PM",
                                    style: TextStyle(
                                        color: Color.fromRGBO(55, 71, 79, 1),
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                      height:
                                          getProportionateScreenHeight(6.0)),
                                  NotificationList.circleAvatarList[index],
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      index == 0 ? SizedBox() : Divider(),
                      // Divider()
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
