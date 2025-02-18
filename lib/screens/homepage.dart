import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  String name = "Guest";

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          const SizedBox(height: 20),
          Text('Welcome ${name != "" ? name : "Guest"} to Coffee Masters'),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              onChanged: (value) => setState(() {
                  name = value;
                }),
            ),
          ),
        ],
      );
  }
}