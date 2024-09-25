import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Detail(),
    ));

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/bg.jpeg"), fit: BoxFit.cover)),
        child: ListView(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  SizedBox(height: 50),
                  CircleAvatar(
                    radius: 60.0,
                    backgroundImage: AssetImage('assets/image/elsa3.jpg'),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Elsa Salsa Billa",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Positioned(
              top: 500,
              left: 10,
              right: 10,
              child: Column(
                children: [
                  Container(
                    width: 400,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Color(0xFFCA8787),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "About",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "My name is Elsa Salsa Billa, born in Bogor on February 3 2007. I am a student at SMK Wikrama Bogor majoring in Software and Games Development",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 400,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "History",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "SMK Wikrama Bogor ( 2022 - 2025 )",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 400,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Color(0xFFCA8787),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Skill",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceAround, // Atur jarak antar gambar
                              children: [
                                CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage:
                                      AssetImage('image/velcpy.png'),
                                ),
                                CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage:
                                      AssetImage('image/phpcpy.png'),
                                ),
                                CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage:
                                      AssetImage('image/reactcpy.png'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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
