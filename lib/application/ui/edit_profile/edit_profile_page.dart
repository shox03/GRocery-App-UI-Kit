import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  List leadinglar = [
    Icon(
      Icons.person,
      color: Colors.black,
    ),
    Icon(
      CupertinoIcons.padlock,
      color: Colors.black,
    ),
    Icon(
      Icons.phone,
      color: Colors.black,
    ),
  ];

  List titlelar = [
    "Full name",
    "Password",
    "Phone Number",
  ];

  List subtitelar = [
    "Robert Miles",
    "1234567",
    "01XXXXXXXXXX",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30.0,
                    ),
                  ),
                  Text(
                    "  Edit Profile",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage(
                  "assets/images/profile_image.png",
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            color: Colors.grey.shade200,
                            elevation: 0,
                            margin: EdgeInsets.all(1),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ListTile(
                                leading: leadinglar[index],
                                title: Text(titlelar[index]),
                                subtitle: Text(
                                  subtitelar[index],
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      );
                    }),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(94, 196, 1, 1),
                minimumSize: Size(20, 48.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Save",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
