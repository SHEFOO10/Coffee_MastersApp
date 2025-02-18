import 'package:coffee_masters/datamanager.dart';
import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key, required this.dataManager});

  final DataManager dataManager;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView(
        children: const [
          Offer(title: "Buy 1 Get 1 Free", description: "Buy one coffee and get another one for free!"),
          Offer(title: "50% Off", description: "Get 50% off on all coffee orders!"),
          Offer(title: "Free Delivery", description: "Get free delivery on all orders!"),
          Offer(title: "Buy 1 Get 1 Free", description: "Buy one coffee and get another one for free!"),
          Offer(title: "50% Off", description: "Get 50% off on all coffee orders!"),
          Offer(title: "Free Delivery", description: "Get free delivery on all orders!"),
          Offer(title: "Buy 1 Get 1 Free", description: "Buy one coffee and get another one for free!"),
          Offer(title: "50% Off", description: "Get 50% off on all coffee orders!"),
          Offer(title: "Free Delivery", description: "Get free delivery on all orders!"),
          Offer(title: "Buy 1 Get 1 Free", description: "Buy one coffee and get another one for free!"),
          Offer(title: "50% Off", description: "Get 50% off on all coffee orders!"),
          Offer(title: "Free Delivery", description: "Get free delivery on all orders!"),
          Offer(title: "Buy 1 Get 1 Free", description: "Buy one coffee and get another one for free!"),
          Offer(title: "50% Off", description: "Get 50% off on all coffee orders!"),
          Offer(title: "Free Delivery", description: "Get free delivery on all orders!"),
        ],
      ),
    );
  }
}

class Offer extends StatelessWidget {
  final String title;
  final String description;

  const Offer({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 2,
          color: Colors.amber.shade50,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                        child: Container(
                          color: Colors.amber.shade50,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(title,
                                style: Theme.of(context).textTheme.headlineMedium),
                          ),
                        )),
                    Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            color: Colors.amber.shade50,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(description,
                                  style: Theme.of(context).textTheme.bodyLarge),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
    ));
  }
}