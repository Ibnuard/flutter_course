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
            padding: const EdgeInsets.symmetric(vertical: 8),
            color: const Color.fromARGB(255, 226, 226, 226),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: const [
                IconWithLabel(
                  icon: Icons.call,
                  label: "Call",
                  iconColor: Colors.blue,
                  textColor: Colors.blue,
                ),
                IconWithLabel(
                  icon: Icons.send,
                  label: "Send",
                  iconColor: Colors.blue,
                  textColor: Colors.blue,
                ),
                IconWithLabel(
                  icon: Icons.share,
                  label: "Share",
                  iconColor: Colors.blue,
                  textColor: Colors.blue,
                ),
              ],
            )),
      ),
    );
  }
}

class IconWithLabel extends StatelessWidget {
  const IconWithLabel({
    Key? key,
    @required this.icon,
    required this.label,
    @required this.iconColor,
    @required this.textColor,
  }) : super(key: key);

  final IconData? icon;
  final String label;
  final Color? iconColor, textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 32,
          color: iconColor,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          label,
          style: TextStyle(color: textColor),
        ),
      ],
    );
  }
}
