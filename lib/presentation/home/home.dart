import 'package:flutter/material.dart';
import 'package:halo_flutter/presentation/dashboard/dashboard.dart';

import '../../widgets/icon_with_label.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Dashboard()));
              },
              child: Text("Go to Dashboard"),
            ),
          ),
          Container(
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
        ],
      ),
    );
  }
}
