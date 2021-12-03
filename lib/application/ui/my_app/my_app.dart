import 'package:flutter/material.dart';
import 'package:grocery/application/ui/Splashes/enter_number.dart';
import 'package:grocery/application/ui/chat_page/custumer_support_chat.dart';
import 'package:grocery/application/ui/notification/notification_page.dart';
import 'package:grocery/constans/colors_constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Constants.kColors,
      ),
      home: EnterNumberPage(),
    );
  }
}
