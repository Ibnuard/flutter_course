import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text(
          "Halo Flutter",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(Icons.access_time),
          Icon(Icons.grade),
        ],
      ),
      body: Center(
        child: Container(
            color: const Color.fromARGB(255, 226, 226, 226),
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.call, size: 32, color: Colors.blueAccent),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "CALL",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.send, size: 32, color: Colors.blueAccent),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "SEND",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.share, size: 32, color: Colors.blueAccent),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "SHARE",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
