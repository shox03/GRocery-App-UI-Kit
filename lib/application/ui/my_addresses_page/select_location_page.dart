
import 'package:flutter/material.dart';

class SelectLocationPage extends StatefulWidget {
  const SelectLocationPage({Key? key}) : super(key: key);

  @override
  _SelectLocationPageState createState() => _SelectLocationPageState();
}

class _SelectLocationPageState extends State<SelectLocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/Map.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 35.0,
                  left: 25.0,
                ),
                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(50.0, 50.0),
                    primary: Colors.white,
                    shape: CircleBorder(
                    ),
                  ),

                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                height: 250.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search for location",
                          labelStyle: TextStyle(
                            fontSize: 16.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                8.0,
                              ),
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(9.0),
                                ),
                              ),
                              minimumSize: Size(103, 52),
                              primary: Colors.grey.shade300,
                            ),
                            child: Text(
                              "Home",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(9.0),
                                ),
                              ),
                              minimumSize: Size(103, 52),
                              primary: Colors.grey.shade300,
                            ),
                            child: Text(
                              "Office",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(9.0),
                                ),
                              ),
                              minimumSize: Size(103, 52),
                              primary: Colors.grey.shade300,
                            ),
                            child: Text(
                              "Other",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ),
                        ],
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
                              "Save This Location",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
