import 'package:flutter/material.dart';
import 'package:grocery/application/ui/category/category_page.dart';
import 'package:grocery/application/ui/grocery_plus/grocery_plus.dart';
import 'package:grocery/constans/size_conig.dart';

class BuildBottomNavBar extends StatefulWidget {
  const BuildBottomNavBar({Key? key}) : super(key: key);

  @override
  _BuildBottomNavBarState createState() => _BuildBottomNavBarState();
}

class _BuildBottomNavBarState extends State<BuildBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    SizeConfig().init(context);

    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: SizedBox(
        height: getProportionateScreenHeight(110.0),
        child: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.shifting,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              label: "",
              icon: IconButton(
                icon: Icon(Icons.home_outlined),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => GroceryPlus()));
                },
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: IconButton(
                icon: Icon(Icons.dashboard_outlined),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => CategoryPage()));
                },
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.shopping_bag_outlined),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.menu),
            ),
          ],
        ),
      ),
    );
  }
}
