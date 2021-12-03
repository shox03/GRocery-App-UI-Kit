import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/application/ui/my_addresses_page/select_location_page.dart';

class MyAddressesPage extends StatefulWidget {
  const MyAddressesPage({Key? key}) : super(key: key);

  @override
  _MyAddressesPageState createState() => _MyAddressesPageState();
}

class _MyAddressesPageState extends State<MyAddressesPage> {
  List<String> titles = ["Home", "Work"];
  List<String> subtitles = [
    "51.5A, Road: 7, Pallabi,Dhaka",
    "Dingi Technologies Ltd, Wakil T",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  Text(
                    "  My addresses",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Card(
                            elevation: 0,
                            margin: EdgeInsets.all(1),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ListTile(
                                title: Text(titles[index]),
                                subtitle: Text(
                                  subtitles[index],
                                ),
                                trailing: Container(
                                  width: 100.0,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              primary: Color.fromRGBO(
                                                  243, 122, 32, 1),
                                              shape: CircleBorder(),
                                              minimumSize: Size(50.0, 50.0)),
                                          child: Icon(
                                            Icons.edit,
                                            size: 20.0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Expanded(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.red,
                                            shape: CircleBorder(),
                                            minimumSize: Size(
                                              50.0,
                                              50.0,
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: Icon(
                                            CupertinoIcons.trash,
                                            size: 20.0,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 5.0,
                            color: Colors.black,
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
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SelectLocationPage(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Add New Address",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
