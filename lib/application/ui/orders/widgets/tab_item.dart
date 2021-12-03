import 'package:flutter/material.dart';
import 'package:grocery/application/ui/model/order_page_model.dart';
import 'package:grocery/constans/size_conig.dart';

Column buildTabItem(BuildContext context) {
  String deliverid = "Delivered";

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: getProportionateScreenHeight(20.0)),
      SizedBox(
        height: MediaQuery.of(context).size.height / 1.23,
        child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              trailing: Text(
                OrderList.costOfOrders[index],
                style: TextStyle(
                    color: Color.fromRGBO(243, 122, 32, 1),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4.0),
                  Text(
                    OrderList.deliverid[index],
                    style: TextStyle(
                        color: OrderList.deliverid[index] == deliverid
                            ? Color.fromRGBO(94, 196, 1, 1)
                            : Color.fromRGBO(255, 85, 82, 1),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    "October 26, 2014",
                    style: TextStyle(
                        color: Color.fromRGBO(55, 71, 79, 0.72),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: getProportionateScreenHeight(15.0)),
                  Divider(),
                ],
              ),
              title: Text(
                "Order #345",
                style: TextStyle(
                    color: Color.fromRGBO(55, 71, 79, 1),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500),
              ),
              leading: CircleAvatar(
                radius: 24.0,
                backgroundColor: Color.fromRGBO(243, 122, 32, 1),
                child: Icon(
                  Icons.shopping_basket_outlined,
                  color: Colors.white,
                  size: 26.0,
                ),
              ),
            );
          },
        ),
      ),
    ],
  );
}
