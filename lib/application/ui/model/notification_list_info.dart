import 'package:flutter/material.dart';

class NotificationList {
  static const List<String> typeOfOrder = [
    "Your Order is Confirmed. Please check everything is okay",
    "Your Order is Delivering to your home",
    "Your Order is Confirmed. Please check everything is okay",
    "Your Order is Completed. Please  rate the experince",
    "Your Order is Confirmed. Please check everything is okay",
  ];
  static const List<CircleAvatar> circleAvatarList = [
    CircleAvatar(
      backgroundColor: Color.fromRGBO(243, 122, 32, 1),
      radius: 18.0,
      child: Icon(
        Icons.subject,
        color: Colors.white,
      ),
    ),
    CircleAvatar(
      backgroundColor: Color.fromRGBO(54, 179, 126, 1),
      radius: 18.0,
      child: Icon(
        Icons.call_outlined,
        color: Colors.white,
      ),
    ),
    CircleAvatar(
      backgroundColor: Color.fromRGBO(255, 85, 82, 1),
      radius: 18.0,
      child: Icon(
        Icons.subject,
        color: Colors.white,
      ),
    ),
    CircleAvatar(
      backgroundColor: Color.fromRGBO(94, 196, 1, 1),
      radius: 18.0,
      child: Icon(
        Icons.star,
        color: Colors.white,
      ),
    ),
    CircleAvatar(
      backgroundColor: Color.fromRGBO(255, 85, 82, 1),
      radius: 18.0,
      child: Icon(
        Icons.subject,
        color: Colors.white,
      ),
    ),
  ];
}
