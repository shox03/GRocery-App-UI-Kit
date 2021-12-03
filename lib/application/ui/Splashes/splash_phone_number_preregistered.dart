import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery/application/ui/Registrations/new_registration_page.dart';
import 'package:grocery/application/ui/Splashes/otp_phone_number.dart';
import 'package:grocery/application/ui/more_page/configurations/colors.dart';
import 'package:grocery/application/ui/more_page/configurations/hint_style.dart';
import 'package:grocery/application/ui/more_page/configurations/size_config.dart';
import 'package:grocery/application/ui/more_page/frostedglasseffect.dart';
import 'package:grocery/application/ui/more_page/text_setter.dart';

class PreRegisterredPhoneNumber extends StatelessWidget {
  PreRegisterredPhoneNumber({Key? key}) : super(key: key);
  final TextEditingController _passwordController = TextEditingController();

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  String? code;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: CustomScrollView(
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
    );
  }

  _hiddenImage() {
    return FrostedGlassBox(
      image: "assets/images/hiddenImage.png",
      height: gpsH(140.0),
      width: gpsW(375.0),
      child: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
      alignment: Alignment.centerLeft,
      opacityy: .8,
    );
  }

  _mainPart(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _imageBox(),
          _textBox(),
          _inputField(),
          _forgotPasswordButton(),
          _submitButton(context),
        ],
      ),
    );
  }

  _imageBox() => Padding(
        padding: EdgeInsets.only(
          top: gpsH(82.0),
          left: gpsW(10.9),
          right: gpsW(10.9),
          bottom: gpsH(45.0),
        ),
        child: Image.asset(
          "assets/images/passwordPage.png",
          fit: BoxFit.contain,
          height: gpsH(294.0),
          width: gpsW(353.0),
        ),
      );

  _textBox() => SizedBox(
        height: gpsH(80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SetText(
              "Enter the password",
              size: 20.0,
              fw: FontWeight.w500,
            ),
            SetText(
                "It looks like you already have an occount in this\nnumber. please enter the password to proceed")
          ],
        ),
      );

  _inputField() => Padding(
        padding: EdgeInsets.only(
          bottom: gpsH(35.0),
          top: gpsH(30.0),
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
  _forgotPasswordButton() => Padding(
        padding: EdgeInsets.only(bottom: gpsH(49.0)),
        child: TextButton(
          onPressed: () {},
          child: SetText(
            "Forgot Password?",
            color: orangeColor,
          ),
        ),
      );
  _submitButton(BuildContext context) => ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => NewRegistrationPage()));
        },
        style: ElevatedButton.styleFrom(
          fixedSize: Size(gpsW(343.0), gpsH(48.0)),
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
              "Submit",
              size: 16.0,
              fw: FontWeight.w500,
              color: Colors.white,
            ),
            const Icon(Icons.arrow_forward),
          ],
        ),
      );
}
