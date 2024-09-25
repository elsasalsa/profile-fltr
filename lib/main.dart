import 'package:flutter/material.dart';
import 'package:profile/more.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    ));

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("image/bg.jpeg"), fit: BoxFit.cover)),
            child: Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.shortestSide,
                  padding: EdgeInsets.all(90.0),
                  margin: EdgeInsets.only(top: 10.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 1),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 30.0), // Padding atas
                          child: CircleAvatar(
                            radius: 60.0,
                            backgroundImage: AssetImage('image/elsa3.jpg'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                          top: 10.0), 
                          child: Text(
                            "Elsa Salsa Billa",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 5.0,
                          ),
                          child: Text(
                            "Vocational High School Student at SMK Wikrama Bogor",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFFA87676)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0, right: 30.0),
                          child: Align(
                            alignment:
                                Alignment.centerRight, 
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Detail()),
                                );
                              },
                              child: Text(
                                "See more ->",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xFFFF8787)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
