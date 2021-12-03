import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery/application/ui/Registrations/new_registration_page.dart';
import 'package:grocery/application/ui/Splashes/splash_phone_number_preregistered.dart';
import 'package:grocery/application/ui/more_page/configurations/colors.dart';
import 'package:grocery/application/ui/more_page/configurations/hint_style.dart';
import 'package:grocery/application/ui/more_page/configurations/size_config.dart';
import 'package:grocery/application/ui/more_page/frostedglasseffect.dart';
import 'package:grocery/application/ui/more_page/text_setter.dart';

class OTPPhoneNumberPage extends StatefulWidget {
  String? phone;

  OTPPhoneNumberPage({Key? key, this.phone}) : super(key: key);

  @override
  State<OTPPhoneNumberPage> createState() => _OTPPhoneNumberPageState();
}

class _OTPPhoneNumberPageState extends State<OTPPhoneNumberPage> {
  TextEditingController otpCode = TextEditingController();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  FirebaseAuth _auth = FirebaseAuth.instance;
  bool? isLoading = false;

  String? _verificationId;
  @override
  void initState() {
    super.initState();
    debugPrint(widget.phone.toString());
  }

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
          "assets/images/enterNumber.png",
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
              "Enter Verification Code",
              size: 20.0,
              fw: FontWeight.w500,
            ),
            SetText("We have sent SMS to:"),
            SetText(
              "998XXXXXXXXX",
              size: 16.0,
              fw: FontWeight.w700,
            )
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
          child: Form(
            key: _formKey,
            child: TextFormField(
              controller: otpCode,
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
                  hintText: "Verification code",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: const Icon(Icons.visibility)),
            ),
          ),
        ),
      );

  _forgotPasswordButton() => Padding(
        padding: EdgeInsets.only(bottom: gpsH(49.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: SetText(
                "Resend OTP",
                color: orangeColor,
              ),
            ),
            TextButton(
              onPressed: () async {
                // await FirebaseAuth.instance.verifyPhoneNumber(
                //   phoneNumber: widget.phone.toString(),
                //   verificationCompleted: (PhoneAuthCredential credential) {},
                //   verificationFailed: (FirebaseAuthException e) {},
                //   codeSent: (String verificationId, int? resernToken) {
                //     _verificationId = verificationId;
                //   },
                //   codeAutoRetrievalTimeout: (String verificationIder) {},
                // );
              },
              child: SetText(
                "Change Phone Number",
              ),
            ),
          ],
        ),
      );

  _submitButton(BuildContext context) => ElevatedButton(
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            try {
              final AuthCredential credential = PhoneAuthProvider.credential(
                  verificationId: _verificationId!, smsCode: otpCode.text);
              final User user =
                  (await FirebaseAuth.instance.signInWithCredential(credential))
                      .user!;
            } catch (e) {
              print(e);
            }
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PreRegisterredPhoneNumber()));
          }
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

  // Future<void> phoneSignIn({required String phoneNumber}) async {
  //   await _auth.verifyPhoneNumber(
  //       phoneNumber: phoneNumber,
  //       verificationCompleted: _onVerificationCompleted,
  //       verificationFailed: _onVerificationFailed,
  //       codeSent: _onCodeSent,
  //       codeAutoRetrievalTimeout: _onCodeTimeout);
  // }

  // _onVerificationCompleted(PhoneAuthCredential authCredential) async {
  //   print("verification completed ${authCredential.smsCode}");
  //   User? user = FirebaseAuth.instance.currentUser;
  //   setState(() {
  //     this.otpCode.text = authCredential.smsCode!;
  //   });
  //   if (authCredential.smsCode != null) {
  //     try {
  //       UserCredential credential =
  //           await user!.linkWithCredential(authCredential);
  //     } on FirebaseAuthException catch (e) {
  //       if (e.code == 'provider-already-linked') {
  //         await _auth.signInWithCredential(authCredential);
  //       }
  //     }
  //     setState(() {
  //       isLoading = false;
  //     });
  //     Navigator.push(context,
  //         MaterialPageRoute(builder: (context) => PreRegisterredPhoneNumber()));
  //   }
  // }

  // _onVerificationFailed(FirebaseAuthException exception) {
  //   if (exception.code == 'invalid-phone-number') {
  //     showMessage("The phone number entered is invalid!");
  //   }
  // }

  // _onCodeSent(String verificationId, int? forceResendingToken) {
  //   this._verificationId = verificationId;
  //   print(forceResendingToken);
  //   print("code sent");
  // }

  // _onCodeTimeout(String timeout) {
  //   return null;
  // }

  // void showMessage(String errorMessage) {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext builderContext) {
  //         return AlertDialog(
  //           title: Text("Error"),
  //           content: Text(errorMessage),
  //           actions: [
  //             TextButton(
  //               child: Text("Ok"),
  //               onPressed: () async {
  //                 Navigator.of(builderContext).pop();
  //               },
  //             )
  //           ],
  //         );
  //       }).then((value) {
  //     setState(() {
  //       isLoading = false;
  //     });
  //   });
  // }
}
