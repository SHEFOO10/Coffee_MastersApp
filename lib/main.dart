import 'package:coffee_masters/datamanager.dart';
import 'package:coffee_masters/screens/menupage.dart';
import 'package:coffee_masters/screens/offerspage.dart';
import 'package:coffee_masters/screens/orderpage.dart';
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

  DataManager dataManager = DataManager();

  int _currentIndex = 0;
  late Widget currentPage;

  @override
  Widget build(BuildContext context) {
    switch(_currentIndex) {
      case 0:
        currentPage = MenuPage(dataManager: dataManager,);
      case 1:
        currentPage = OffersPage(dataManager: dataManager,);
      case 2:
        currentPage = OrderPage(dataManager: dataManager);
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(
            child: Image.asset('images/2.0x/logo.png', scale: 1.2,)),
      ),
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 24,
        selectedItemColor: Colors.yellow.shade400,
        unselectedItemColor: Colors.brown.shade50,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.coffee),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Order'
          ),
        ],
      ),
    );
  }
}
