import 'package:coffee_masters/screens/homepage.dart';
import 'package:coffee_masters/screens/offerspage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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


  int _currentIndex = 0;
  Widget currentPage = const OffersPage();

  @override
  Widget build(BuildContext context) {
    switch(_currentIndex) {
      case 0:
        currentPage = const Homepage();
      case 1:
        currentPage = const OffersPage();
      case 2:
        currentPage = const Placeholder();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.coffee, color: Colors.white,),
            SizedBox(width: 10),
            Text('Coffee Masters', style: TextStyle(color: Colors.white),),
          ],
        )
      ),
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() {
          _currentIndex = index;
        }),
        items: const[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings'
        ),
      ]),
    );
  }
}
