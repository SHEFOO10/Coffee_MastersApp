import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Masters',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown)
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String name = "Guest";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.coffee, color: Colors.white,),
            SizedBox(width: 10),
            Text('Coffee Masters', style: TextStyle(color: Colors.white),),
          ],
        )
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text('Welcome ${name != "" ? name : "Guest"} to Coffee Masters'),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Enter your name'
              ),
              onChanged: (value) => setState(() {
                  name = value;
                }),
            ),
          ),
        ],
      ),
    );
  }
}
