import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:grocery/constans/size_conig.dart';
import 'package:image_picker/image_picker.dart';

class AddToWishlist extends StatefulWidget {
  const AddToWishlist({Key? key}) : super(key: key);

  @override
  State<AddToWishlist> createState() => _AddToWishlistState();
}

class _AddToWishlistState extends State<AddToWishlist> {
  final _formKey = GlobalKey<FormState>();
  final ImagePicker _picker = ImagePicker();
  TextEditingController _productName = TextEditingController();
  TextEditingController _amout = TextEditingController();
  TextEditingController _brand = TextEditingController();
  XFile? image;
  List<XFile> _listOfImages = [];
  @override
  Widget build(BuildContext context) {
    double widthPage = MediaQuery.of(context).size.width;
    double heightPage = MediaQuery.of(context).size.height;

    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(17.0)),
              Row(
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(17.0),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color(0xFF37474F),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(21.0),
                  ),
                  Text(
                    "Notifications",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                        color: Color(0xFF37474F)),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getProportionateScreenHeight(42.0),
                  left: getProportionateScreenHeight(16.0),
                  right: getProportionateScreenHeight(16.0),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: getProportionateScreenHeight(16.0)),
                        child: TextFormField(
                          controller: _productName,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "Product Name",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(55, 71, 79, 0.72),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400),
                            fillColor: Color.fromRGBO(240, 241, 242, 1),
                            filled: true,
                            prefixIcon: Icon(
                              Icons.shopping_basket_outlined,
                              color: Color.fromRGBO(55, 71, 79, 1),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: getProportionateScreenHeight(16.0)),
                        child: TextFormField(
                          controller: _amout,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "Amount",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(55, 71, 79, 0.72),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400),
                            fillColor: Color.fromRGBO(240, 241, 242, 1),
                            filled: true,
                            prefixIcon: Icon(
                              Icons.code_outlined,
                              color: Color.fromRGBO(55, 71, 79, 1),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: _brand,
                        decoration: InputDecoration(
                          hintText: "Brand (Optional )",
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(55, 71, 79, 0.72),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400),
                          fillColor: Color.fromRGBO(240, 241, 242, 1),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.label_outline,
                            color: Color.fromRGBO(55, 71, 79, 1),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: getProportionateScreenHeight(20.0)),
                        child: SizedBox(
                          height:
                              _listOfImages.length == 0 ? 0 : heightPage * 0.4,
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            itemCount: _listOfImages.length,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                height: heightPage * 0.4,
                                child: Image.file(
                                    File(_listOfImages[index].path),
                                    fit: BoxFit.contain),
                              );
                            },
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          image = await _picker.pickImage(
                              source: ImageSource.gallery);
                          _listOfImages.add(image!);
                          setState(() {});
                        },
                        child: Container(
                          width: widthPage,
                          height: getProportionateScreenHeight(191.0),
                          decoration: BoxDecoration(
                            border: Border.all(style: BorderStyle.solid),
                          ),
                        ),
                      ),
                      SizedBox(
                          height: _listOfImages.length != 0
                              ? heightPage * 0.026
                              : heightPage * 0.27),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9.0)),
                            fixedSize: Size(widthPage, 46),
                            primary: Color.fromRGBO(94, 196, 1, 1)),
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            await _uploadToStorage();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                          }
                          setState(() {});
                        },
                        child: Row(
                          children: [
                            Spacer(),
                            Text(
                              "Save to Wishlist",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0),
                            ),
                            Spacer(),
                            Icon(Icons.save_outlined)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _uploadToStorage() async {
    final Reference postImageRef =
        FirebaseStorage.instance.ref().child('wishlist');
    DateTime _timeOfUpload = DateTime.now();
    final UploadTask uploadTask = postImageRef
        .child(_timeOfUpload.toString() + '.png')
        .putFile(File(image!.path));

    var urlOfImage =
        await (await uploadTask.whenComplete(() {})).ref.getDownloadURL();
    _uploadToFireStore(urlOfImage);
    // debugPrint("${urlOfImage.toString()}EEEEEEEEEEE"); PRINT
  }

  _uploadToFireStore(String url) async {
    CollectionReference ref = FirebaseFirestore.instance.collection('wishlist');
    //AuthUser.currentusser.email for example
    var data = {
      'Product Name': _productName.text,
      'Amout': _amout.text,
      'Brand': _brand.text,
      'image': url,
      'time': FieldValue.serverTimestamp(),
    };
    ref.add(data);
  }
}
