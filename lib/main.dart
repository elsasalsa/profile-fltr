import 'package:flutter/material.dart';
import 'package:profile/dashboard.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Login(),
    ));

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController schoolController = TextEditingController();
  final TextEditingController aboutController = TextEditingController();
  final TextEditingController historyController = TextEditingController();
  final TextEditingController skillController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color(0xFFEDDFE0),
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: const EdgeInsets.all(50),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Icon(Icons.person), // Ikon di luar form
                          const SizedBox(width: 20), // Jarak diperbesar menjadi 20
                          Expanded(
                            child: TextFormField(
                              controller: nameController,
                              decoration: const InputDecoration(
                                labelText: "Name",
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const Icon(Icons.school),
                          const SizedBox(width: 20),
                          Expanded(
                            child: TextFormField(
                              controller: schoolController,
                              decoration: const InputDecoration(
                                labelText: "School",
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const Icon(Icons.info),
                          const SizedBox(width: 20),
                          Expanded(
                            child: TextFormField(
                              controller: aboutController,
                              decoration: const InputDecoration(
                                labelText: "About",
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const Icon(Icons.history),
                          const SizedBox(width: 20),
                          Expanded(
                            child: TextFormField(
                              controller: historyController,
                              decoration: const InputDecoration(
                                labelText: "History",
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const Icon(Icons.build),
                          const SizedBox(width: 20),
                          Expanded(
                            child: TextFormField(
                              controller: skillController,
                              decoration: const InputDecoration(
                                labelText: "Skill",
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Dashboard(
                                name: nameController.text,
                                school: schoolController.text,
                                about: aboutController.text,
                                history: historyController.text,
                                skill: skillController.text,
                              ),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFE7CCCC),
                          foregroundColor: Colors.white,
                        ),
                        child: const Text("Login"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: const Color(0xFFEF1D3CE),
              child: const Icon(
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
