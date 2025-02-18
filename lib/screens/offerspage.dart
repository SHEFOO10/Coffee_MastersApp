import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView(
        children: const [
          Offer(name: "Buy 1 Get 1 Free", description: "Buy one coffee and get another one for free!"),
          Offer(name: "50% Off", description: "Get 50% off on all coffee orders!"),
          Offer(name: "Free Delivery", description: "Get free delivery on all orders!"),
          Offer(name: "Buy 1 Get 1 Free", description: "Buy one coffee and get another one for free!"),
          Offer(name: "50% Off", description: "Get 50% off on all coffee orders!"),
          Offer(name: "Free Delivery", description: "Get free delivery on all orders!"),
          Offer(name: "Buy 1 Get 1 Free", description: "Buy one coffee and get another one for free!"),
          Offer(name: "50% Off", description: "Get 50% off on all coffee orders!"),
          Offer(name: "Free Delivery", description: "Get free delivery on all orders!"),
          Offer(name: "Buy 1 Get 1 Free", description: "Buy one coffee and get another one for free!"),
          Offer(name: "50% Off", description: "Get 50% off on all coffee orders!"),
          Offer(name: "Free Delivery", description: "Get free delivery on all orders!"),
          Offer(name: "Buy 1 Get 1 Free", description: "Buy one coffee and get another one for free!"),
          Offer(name: "50% Off", description: "Get 50% off on all coffee orders!"),
          Offer(name: "Free Delivery", description: "Get free delivery on all orders!"),
        ],
      ),
    );
  }
}

class Offer extends StatelessWidget {
  //properties
  final String name;
  final String description;

  const Offer({super.key, required this.name, required this.description});


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurple,
      shadowColor: Colors.black,
      surfaceTintColor: Colors.black,
      elevation: 15,
      child: SizedBox(
        width: 400,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
            const SizedBox(height: 20),
            Text(description, style: const TextStyle(fontSize: 16, color: Colors.white),),
          ],
        ),
      ),
    );
  }
}