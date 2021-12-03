import 'package:flutter/material.dart';
import 'package:grocery/application/ui/category/category_page.dart';
import 'package:grocery/application/ui/more_page/more_page.dart';
import 'package:grocery/application/ui/my_bag/my_bag_page.dart';
import 'package:grocery/application/ui/test_page/test.dart';
import 'package:grocery/constans/size_conig.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    final _kTabPages = <Widget>[
      const GroceryPluss(),
      const CategoryPage(),
      const MyBagPage(),
      MorePage(),
    ];
    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        label: "",
        icon: Icon(Icons.home_outlined),
      ),
      BottomNavigationBarItem(
        label: "",
        icon: Icon(Icons.dashboard_outlined),
      ),
      BottomNavigationBarItem(
        label: "",
        icon: Icon(Icons.shopping_bag_outlined),
      ),
      BottomNavigationBarItem(
        label: "",
        icon: Icon(Icons.menu),
      ),
    ];
    assert(_kTabPages.length == _kBottmonNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      backgroundColor: Colors.transparent,
      type: BottomNavigationBarType.shifting,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.black,
      items: _kBottmonNavBarItems,
      currentIndex: _currentTabIndex,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Expanded(child: _kTabPages[_currentTabIndex]),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: SizedBox(
                height: getProportionateScreenHeight(110.0),
                child: bottomNavBar,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
