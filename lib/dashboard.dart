import 'package:flutter/material.dart';
import 'package:profile/more.dart';

class Dashboard extends StatelessWidget {
  final String name;
  final String school;
  final String about;
  final String history;
  final String skill;

  const Dashboard({
    super.key,
    required this.name,
    required this.school,
    required this.about,
    required this.history,
    required this.skill,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("image/bg.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: const EdgeInsets.all(90.0),
              margin: const EdgeInsets.only(top: 10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: const Color.fromRGBO(255, 255, 255, 1),
                child: Column(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(top: 30.0), // Padding atas
                      child: CircleAvatar(
                        radius: 60.0,
                        backgroundImage: AssetImage('image/elsa3.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        name, // Nama dinamis
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        school,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFFA87676),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, right: 30.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Detail(
                                  name: name,
                                  about: about,
                                  history: history,
                                  skill: skill,
                                ),
                              ),
                            );
                          },
                          child: const Text(
                            "See more ->",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFFF8787),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
