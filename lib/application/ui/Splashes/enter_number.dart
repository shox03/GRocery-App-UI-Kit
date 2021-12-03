import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery/application/ui/Splashes/otp_phone_number.dart';
import 'package:grocery/application/ui/Splashes/splash_phone_number_preregistered.dart';
import 'package:grocery/application/ui/more_page/configurations/colors.dart';
import 'package:grocery/application/ui/more_page/configurations/hint_style.dart';
import 'package:grocery/application/ui/more_page/configurations/size_config.dart';
import 'package:grocery/application/ui/more_page/frostedglasseffect.dart';
import 'package:grocery/application/ui/more_page/text_setter.dart';

class EnterNumberPage extends StatefulWidget {
  EnterNumberPage({Key? key}) : super(key: key);

  @override
  State<EnterNumberPage> createState() => _EnterNumberPageState();
}

class _EnterNumberPageState extends State<EnterNumberPage> {
  TextEditingController otpCode = TextEditingController();

  final TextEditingController _phoneNumberController = TextEditingController();

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  FirebaseAuth _auth = FirebaseAuth.instance;
  bool isLoading = false;
  String? verificationId;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: scaffoldColor,
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
      child: const Text(" "),
      alignment: Alignment.center,
      opacityy: .8,
    );
  }

  _mainPart(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          _imageBox(),
          _textBox(),
          _inputField(),
          _nextButton(context),
        ],
      ),
    );
  }

  _imageBox() => Padding(
        padding: EdgeInsets.only(
          top: gpsH(119.0),
          left: gpsW(10.9),
          right: gpsW(10.9),
          bottom: gpsH(45.0),
        ),
        child: Image.asset(
          "assets/images/enterNumber.png",
          fit: BoxFit.cover,
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
              "Enter your mobile number",
              size: 20.0,
              fw: FontWeight.w500,
            ),
            SetText(
              "We need to verify you. We will send you a one\n time verification code.",
            ),
          ],
        ),
      );

  _inputField() => Padding(
        padding: EdgeInsets.only(
          bottom: gpsH(105.0),
          top: gpsH(30.0),
        ),
        child: SizedBox(
          height: gpsH(52.0),
          width: gpsW(343.0),
          child: Form(
            key: _formKey,
            child: TextFormField(
              controller: _phoneNumberController,
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
                hintText: "Phone Number",
                prefixIcon: SizedBox(
                  width: gpsW(82.0),
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: gpsW(12.0),
                      left: gpsW(12.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.call),
                        Image.asset(
                          "assets/images/prefixIcon.png",
                          fit: BoxFit.cover,
                          height: gpsH(18.0),
                          width: gpsW(27.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  _nextButton(BuildContext context) => ElevatedButton(
        onPressed: () async {
          // await phoneSignIn(phoneNumber: _phoneNumberController.text);
          await FirebaseAuth.instance.verifyPhoneNumber(
            phoneNumber: _phoneNumberController.toString(),
            verificationCompleted: (PhoneAuthCredential credential) {},
            verificationFailed: (FirebaseAuthException e) {},
            codeSent: (String verificationId, int? resernToken) {
              verificationId = verificationId;
            },
            codeAutoRetrievalTimeout: (String verificationIder) {},
          );

          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => OTPPhoneNumberPage(
                        phone: _phoneNumberController.text,
                      )));
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
              "Next",
              size: 16.0,
              fw: FontWeight.w500,
              color: Colors.white,
            ),
            const Icon(Icons.arrow_forward),
          ],
        ),
      );

  Future<void> phoneSignIn({required String phoneNumber}) async {
    await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: _onVerificationCompleted,
        verificationFailed: _onVerificationFailed,
        codeSent: _onCodeSent,
        codeAutoRetrievalTimeout: _onCodeTimeout);
  }

  _onVerificationCompleted(PhoneAuthCredential authCredential) async {
    print("verification completed ${authCredential.smsCode}");
    User? user = FirebaseAuth.instance.currentUser;
    setState(() {
      this.otpCode.text = authCredential.smsCode!;
    });
    if (authCredential.smsCode != null) {
      try {
        UserCredential credential =
            await user!.linkWithCredential(authCredential);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'provider-already-linked') {
          await _auth.signInWithCredential(authCredential);
        }
      }
      setState(() {
        isLoading = false;
      });
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => PreRegisterredPhoneNumber()));
    }
  }

  _onVerificationFailed(FirebaseAuthException exception) {
    if (exception.code == 'invalid-phone-number') {
      showMessage("The phone number entered is invalid!");
    }
  }

  _onCodeSent(String verificationId, int? forceResendingToken) {
    this.verificationId = verificationId;
    print(forceResendingToken);
    print("code sent");
  }

  _onCodeTimeout(String timeout) {
    return null;
  }

  void showMessage(String errorMessage) {
    showDialog(
        context: context,
        builder: (BuildContext builderContext) {
          return AlertDialog(
            title: Text("Error"),
            content: Text(errorMessage),
            actions: [
              TextButton(
                child: Text("Ok"),
                onPressed: () async {
                  Navigator.of(builderContext).pop();
                },
              )
            ],
          );
        }).then((value) {
      setState(() {
        isLoading = false;
      });
    });
  }
}
