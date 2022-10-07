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
        body: Container(
          color: Colors.blue,
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Halo ini teks 2"),
                  const Icon(Icons.access_time_filled_outlined),
                ],
              ),
              const Text("Halo ini teks kebawah")
            ],
          ),
        )
        // body: Container(
        //   color: Colors.blue,
        //   padding: const EdgeInsets.all(24),
        //   child: const Icon(Icons.ac_unit),
        // ),
        );
  }
}
