import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/application/ui/orders/widgets/tab_item.dart';
import 'package:grocery/constans/size_conig.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final _kTabPages = <Widget>[
      buildTabItem(context),
      buildTabItem(context),
    ];
    final _kTabs = <Tab>[
      Tab(
        text: "Ongoing",
      ),
      Tab(
        text: "History",
      ),
    ];
    SizeConfig().init(context);
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Orders",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
            physics: BouncingScrollPhysics(),
            indicatorColor: Color.fromRGBO(94, 196, 1, 1),
            indicatorWeight: 2.3,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 35),
            labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            labelColor: Color.fromRGBO(94, 196, 1, 1),
            unselectedLabelColor: Color.fromRGBO(55, 71, 79, 0.72),
            tabs: _kTabs,
          ),
        ),
        body: TabBarView(
          physics: BouncingScrollPhysics(),
          children: _kTabPages,
        ),
      ),
    );
  }
}
