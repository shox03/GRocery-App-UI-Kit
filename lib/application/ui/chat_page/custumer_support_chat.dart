import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:grocery/application/ui/model/notification_list_info.dart';
import 'package:grocery/constans/colors_constants.dart';
import 'package:grocery/constans/size_conig.dart';

class ChatWithus extends StatefulWidget {
  ChatWithus({Key? key, required this.indexOfCard}) : super(key: key);
  int indexOfCard;

  @override
  State<ChatWithus> createState() => _ChatWithusState();
}

class _ChatWithusState extends State<ChatWithus> {
  final TextEditingController _massageController = TextEditingController();
  final _firestore = FirebaseFirestore.instance;
  final _formKey = GlobalKey<FormState>();
  List? listOfMassages = [];
  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Color backColor = Color.fromRGBO(217, 238, 202, 1);

    SizeConfig().init(context);
    return SafeArea(
      bottom: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
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
                  "Chat with us",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                      color: Color(0xFF37474F)),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Padding(
              padding: EdgeInsets.only(
                  top: getProportionateScreenHeight(7.0),
                  left: getProportionateScreenWidth(16.0),
                  right: getProportionateScreenWidth(16.0)),
              child: Card(
                color: Color.fromRGBO(243, 122, 32, 0.14),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                elevation: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    hoverColor: backColor,
                    title: Text(
                      "Order #345",
                      style: TextStyle(
                          color: Color.fromRGBO(55, 71, 79, 1),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.0),
                      child: Text(
                        NotificationList.typeOfOrder[widget.indexOfCard],
                        style: TextStyle(
                            color: Color.fromRGBO(55, 71, 79, 1),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          "3:57 PM",
                          style: TextStyle(
                              color: Color.fromRGBO(55, 71, 79, 1),
                              fontSize: 11.0,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: getProportionateScreenHeight(6.0)),
                        NotificationList.circleAvatarList[widget.indexOfCard],
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.66,
              width: MediaQuery.of(context).size.width * 0.83,
              child: FutureBuilder(
                  future: _getMessage(),
                  builder: (context, AsyncSnapshot snap) {
                    return ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: listOfMassages!.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: index == 0
                              ? EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.height * 0.02,
                                  right:
                                      MediaQuery.of(context).size.height * 0.02,
                                  left:
                                      MediaQuery.of(context).size.height * 0.02)
                              : EdgeInsets.all(
                                  MediaQuery.of(context).size.height * 0.02,
                                ),
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 14.0,
                                bottom: 14.0,
                                left: 19.0,
                                right: 28.0),
                            decoration: BoxDecoration(
                                color: index % 2 == 0
                                    ? Color.fromRGBO(109, 197, 5, 1)
                                    : Color(0xFF236CD9),
                                borderRadius: BorderRadius.circular(9.0)),
                            child: Text(
                              "${listOfMassages![index]['text']}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        );
                      },
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  controller: _massageController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(55, 71, 79, 0.72),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                    fillColor: Color.fromRGBO(240, 241, 242, 1),
                    filled: true,
                    suffixIcon: Row(
                      children: [
                        SizedBox(width: getProportionateScreenWidth(20.0)),
                        Text(
                          "Write Message",
                          style: TextStyle(
                              color: Color.fromRGBO(55, 71, 79, 0.72),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Icon(
                          Icons.videocam_outlined,
                          color: Color.fromRGBO(55, 71, 79, 1),
                        ),
                        SizedBox(width: getProportionateScreenWidth(20.0)),
                        Icon(
                          Icons.photo_outlined,
                          color: Color.fromRGBO(55, 71, 79, 1),
                        ),
                        SizedBox(width: getProportionateScreenWidth(20.0)),
                        IconButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              await _sendMassage();
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Message is sending')),
                              );
                            }
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.send_outlined,
                            color: Color.fromRGBO(55, 71, 79, 1),
                          ),
                        ),
                        SizedBox(width: getProportionateScreenWidth(20.0)),
                      ],
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _sendMassage() async {
    await _firestore.collection('messages').add({
      'text': _massageController.text,
      'time': FieldValue.serverTimestamp()
    });
    _massageController.clear();
  }

  Future _getMessage() async {
    List allMessages = [];
    await for (var message
        in _firestore.collection('messages').orderBy('time').snapshots()) {
      for (var messages in message.docs) {
        allMessages.add(messages);
      }
      listOfMassages = allMessages;
      return listOfMassages;
    }
  }
}
