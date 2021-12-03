import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery/application/ui/Registrations/choose_password_page.dart';
import 'package:grocery/application/ui/more_page/configurations/colors.dart';
import 'package:grocery/application/ui/more_page/configurations/hint_style.dart';
import 'package:grocery/application/ui/more_page/configurations/size_config.dart';
import 'package:grocery/application/ui/more_page/frostedglasseffect.dart';
import 'package:grocery/application/ui/more_page/text_setter.dart';

class NewRegistrationPage extends StatefulWidget {
  const NewRegistrationPage({Key? key}) : super(key: key);

  @override
  _NewRegistrationPageState createState() => _NewRegistrationPageState();
}

class _NewRegistrationPageState extends State<NewRegistrationPage> {
  final TextEditingController _fullNameController = TextEditingController();
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
                  _mainPart(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _mainPart() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: gpsW(16.0)),
      child: Column(
        children: [
          _topText(),
          _userAvatarBox(),
          _syncWithFacebookButton(),
          _inputField(),
          _nextButton(),
        ],
      ),
    );
  }

  _appBar() {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        SetText(
          "Your Information",
          size: 20.0,
          fw: FontWeight.w600,
        ),
      ],
    );
  }

  _topText() {
    return Padding(
      padding: EdgeInsets.only(top: gpsH(117.0)),
      child: SetText(
          "It looks like you don't have account in this \n number. Please let us know some information for\nsecure service"),
    );
  }

  _userAvatarBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: inputFillColor,
        radius: gpsW(59.0),
        child: SvgPicture.asset(
          "assets/images/accountImagePlaceholder.svg",
          color: blackColor,
          height: gpsH(78.0),
          width: gpsW(78.0),
        ),
      ),
    );
  }

  _syncWithFacebookButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          gpsW(343.0),
          gpsH(48.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Divider(),
          SetText(
            "Sync From Facebook",
            color: Colors.white,
          ),
          SvgPicture.asset(
            "assets/images/facebookLogo.svg",
            color: Colors.white,
            height: gpsH(24.0),
            width: gpsW(24.0),
          ),
        ],
      ),
    );
  }

  _inputField() => Padding(
        padding: EdgeInsets.only(
          bottom: gpsH(224.0),
          top: gpsH(18.0),
        ),
        child: SizedBox(
          height: gpsH(52.0),
          width: gpsW(343.0),
          child: TextFormField(
            controller: _fullNameController,
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
              hintText: "Full Name",
              prefixIcon: const Icon(
                Icons.account_circle,
              ),
            ),
          ),
        ),
      );
  _nextButton() => ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ChoosePasswordPage()));
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
              "Next",
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
