import 'package:flutter/material.dart';
import 'package:grocery/application/ui/more_page/configurations/colors.dart';
import 'package:grocery/application/ui/more_page/configurations/hint_style.dart';
import 'package:grocery/application/ui/more_page/configurations/size_config.dart';
import 'package:grocery/application/ui/more_page/frostedglasseffect.dart';
import 'package:grocery/application/ui/more_page/text_setter.dart';
import 'package:grocery/application/ui/test_page/main_page.dart';

class ChoosePasswordPage extends StatelessWidget {
  ChoosePasswordPage({Key? key}) : super(key: key);
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: SafeArea(
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  _hiddenImage(),
                  _mainPart(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _mainPart(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: gpsW(16.0)),
      child: Column(
        children: [
          _topText(),
          _imageBox(),
          _inputFieldPassword(),
          _inputFieldPasswordConfirm(),
          _finishButton(context),
        ],
      ),
    );
  }

  _appBar() {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        SetText(
          "Choose a Password",
          size: 20.0,
          fw: FontWeight.w600,
        ),
      ],
    );
  }

  _topText() {
    return Padding(
      padding: EdgeInsets.only(
        top: gpsH(80.0),
        bottom: gpsH(20.0),
      ),
      child: SetText("For the security & safety please choose a\npassword"),
    );
  }

  _imageBox() => Padding(
        padding: EdgeInsets.only(
          left: gpsW(10.9),
          right: gpsW(10.9),
          bottom: gpsH(45.0),
        ),
        child: Image.asset(
          "assets/images/choosePasswordPage.png",
          fit: BoxFit.contain,
          height: gpsH(294.0),
          width: gpsW(353.0),
        ),
      );

  _inputFieldPassword() => Padding(
        padding: EdgeInsets.only(
          bottom: gpsH(18.0),
        ),
        child: SizedBox(
          height: gpsH(52.0),
          width: gpsW(343.0),
          child: TextFormField(
            controller: _passwordController,
            validator: (v) {
              if (v!.isEmpty) {
                return "Field can't be empty";
              }
            },
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                filled: true,
                fillColor: inputFillColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                hintStyle: hintStyle,
                hintText: "Password",
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: const Icon(Icons.visibility)),
          ),
        ),
      );

  _inputFieldPasswordConfirm() => Padding(
        padding: EdgeInsets.only(
          bottom: gpsH(31.0),
        ),
        child: SizedBox(
          height: gpsH(52.0),
          width: gpsW(343.0),
          child: TextFormField(
            controller: _passwordConfirmController,
            validator: (v) {
              if (v!.isEmpty) {
                return "Field can't be empty";
              }
            },
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                filled: true,
                fillColor: inputFillColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                hintStyle: hintStyle,
                hintText: "Confirm Password",
                prefixIcon: const Icon(
                  Icons.lock,
                ),
                suffixIcon: const Icon(Icons.visibility)),
          ),
        ),
      );
  _finishButton(BuildContext context) => ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainPage()));
        },
        style: ElevatedButton.styleFrom(
          fixedSize: Size(
            gpsW(343.0),
            gpsH(48.0),
          ),
          primary: greenColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Divider(),
            SetText(
              "Finish, Good to go",
              size: 16.0,
              fw: FontWeight.w500,
              color: Colors.white,
            ),
            const Icon(Icons.arrow_forward),
          ],
        ),
      );
  _hiddenImage() {
    return FrostedGlassBox(
      image: "assets/images/hiddenImage.png",
      height: gpsH(140.0),
      width: gpsW(375.0),
      child: _appBar(),
      alignment: Alignment.topLeft,
      opacityy: .8,
    );
  }
}
