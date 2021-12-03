import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery/application/ui/add_wishlist/add_to_wishlist.dart';
import 'package:grocery/application/ui/edit_profile/edit_profile_page.dart';
import 'package:grocery/application/ui/more_page/configurations/colors.dart';
import 'package:grocery/application/ui/more_page/configurations/size_config.dart';
import 'package:grocery/application/ui/more_page/frostedglasseffect.dart';
import 'package:grocery/application/ui/more_page/search_probability_result.dart';
import 'package:grocery/application/ui/more_page/text_setter.dart';
import 'package:grocery/application/ui/my_addresses_page/my_adresses_page.dart';
import 'package:grocery/application/ui/notification/notification_page.dart';
import 'package:grocery/application/ui/orders/orders_page.dart';
import 'package:grocery/application/ui/wishlist/wishlist_page.dart';

class MorePage extends StatelessWidget {
  MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List pages = [
      EditProfilePage(),
      MyAddressesPage(),
      OrdersPage(),
      WishListPage(),
      AddToWishlist(),
      AddToWishlist(),
      AddToWishlist(),
      NotificationPage(),
      NotificationPage(),
    ];
    SizeConfig().init(context);

    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      slivers: [
        _hiddenImage(),
        _options(pages),
      ],
    );
  }

  final List<List<dynamic>> _contents = [
    const [
      Icon(
        Icons.mode_edit_outline_outlined,
        color: Colors.blue,
      ),
      "Edit Profile"
    ],
    const [Icon(Icons.location_on_outlined), "My Address"],
    [Icon(Icons.shopping_basket_outlined), "My Orders"],
    const [Icon(Icons.bolt_outlined), "My Wishlist"],
    [
      Icon(
        Icons.chat_bubble_outline,
        color: greenColor,
      ),
      "Chat with us"
    ],
    [
      Icon(
        Icons.call_outlined,
        color: orangeColor,
      ),
      "Talk to our Support"
    ],
    const [
      Icon(
        Icons.mail_outline_outlined,
      ),
      "Notifications"
    ],
    [Icon(Icons.facebook), "Message to facebook page"],
    [
      Icon(
        Icons.power_settings_new,
        color: orangeColor,
      ),
      "Log out"
    ],
  ];

  _options(List pages) {
    return SliverToBoxAdapter(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: _contents.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => pages[index]));
            },
            child: SearchProbablityresult(
              _contents[index][0],
              _contents[index][1],
            ),
          );
        },
      ),
    );
  }

  _hiddenImage() {
    return SliverToBoxAdapter(
      child: FrostedGlassBox(
        image: "assets/images/hiddenImage.png",
        height: gpsH(210.0),
        width: gpsW(375.0),
        child: _widget(),
        alignment: Alignment.centerLeft,
        opacityy: .85,
      ),
    );
  }

  _widget() => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: gpsW(16.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SetText(
              "More",
              size: 20.0,
              fw: FontWeight.w600,
            ),
            // SizedBox(height: gpsH(40.5),),
            SizedBox(
              height: gpsH(51.0),
              width: gpsW(258.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: gpsW(25.0),
                    backgroundColor: inputFillColor,
                    child: SvgPicture.asset(
                      "assets/images/accountImagePlaceholder.svg",
                      color: Colors.grey,
                      height: gpsW(30.0),
                      width: gpsW(30.0),
                    ),
                  ),
                  SizedBox(
                    width: gpsW(16.0),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SetText(
                        "User Name",
                        size: 18.0,
                        fw: FontWeight.w600,
                      ),
                      SetText(
                        "user phone number",
                        size: 15.0,
                        fw: FontWeight.w500,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
}
