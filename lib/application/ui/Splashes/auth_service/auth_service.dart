// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:titanscrypto/screens/login_pages/start_home.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// abstract class Services {
//   //Function

//   Future<String?> signInwithGoogle(BuildContext context);
//   createUser(String email, String password, BuildContext context);
//   snackBarForUserNotFound(context);
//   readdata(String email, String password, BuildContext context);
//   verified(String phone, String kod, BuildContext context);
//   sendCodephone(String phonenumber);
//   Future isLogin();
//   void _writestore(String email, String password);
//   pushToHomePage(context);

//   // Variable
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//   FirebaseAuth auth = FirebaseAuth.instance;
//   TextEditingController inemailController = TextEditingController();
//   TextEditingController inpasswordController = TextEditingController();
//   TextEditingController kodController = TextEditingController();
//   var phoneController = TextEditingController();
//   String? code;
//   final GoogleSignIn _googleSignIn = GoogleSignIn();
//   String? username;
//   String? phoneNumber;
//   String? emailstr;
// }

// class Helper extends Services {
//   @override
//   createUser(String email, String password, BuildContext context) async {
//     UserCredential userCredential = await FirebaseAuth.instance
//         .createUserWithEmailAndPassword(email: email, password: password);
//     debugPrint("${userCredential.user}");

//     _writestore(email, password);
//     print("Create funksiyadasan");

//     if (auth.currentUser != null) {
//       pushToHomePage(context);
//       writeLogin();
//     }
//   }

//   @override
//   sendCodephone(String phonenumber1) async {
//     debugPrint(phonenumber1);
//     await auth.verifyPhoneNumber(
//         phoneNumber: phonenumber1,
//         verificationCompleted: (PhoneAuthCredential credential) {
//           print(credential.toString());
//         },
//         verificationFailed: (FirebaseAuthException e) {},
//         codeSent: (String verificationId, int? resendToken) {
//           print(resendToken.toString());
//           print(verificationId);
//         },
//         codeAutoRetrievalTimeout: (String verificationId) {
//           code = verificationId;
//         });
//   }

//   @override
//   readdata(String email, String password, BuildContext context) async {
//     try {
//       UserCredential userCredential = await FirebaseAuth.instance
//           .signInWithEmailAndPassword(email: email, password: password);
//       if (userCredential.user!.email != null) {
//         writeLogin();
//         username = userCredential.user!.displayName;
//         emailstr = userCredential.user!.email;
//         pushToHomePage(context);
//       } else {
//         snackBarForUserNotFound(context);
//       }
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'user-not-found') {
//         print('No user found for that email.');
//       } else if (e.code == 'wrong-password') {
//         print('Wrong password provided for that user.');
//       }
//     }
//   }

//   signinnumber(String phone, String password, context) async {
//     QuerySnapshot snapshot = await firestore.collection("collection").get();
//     for (int i = 0; i < snapshot.docs.length; i++) {
//       var data = snapshot.docs;
//       if (data[i]["eamilname"] == phone) {
//         phoneNumber = phone;
//         pushToHomePage(context);
//       }
//     }
//   }

//   @override
//   verified(String phone, String kod, BuildContext context) async {
//     var _credential =
//         await PhoneAuthProvider.credential(verificationId: code!, smsCode: kod);

//     await auth.signInWithCredential(_credential).then((dynamic result) {
//       //firestorega yoz
// // 
//       _writestore(phone, kod);
//       // writeLogin();
//       phoneNumber = phone;
//       pushToHomePage(context);
//     }).catchError((e) {
//       print(e);
//     });
//   }

// }
