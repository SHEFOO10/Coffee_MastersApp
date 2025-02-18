import 'package:coffee_masters/datamanager.dart';
import 'package:coffee_masters/datamodel.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  final DataManager dataManager;

  const MenuPage({super.key, required this.dataManager});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: dataManager.getMenu,
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            var categories = snapshot.data! as List<Category>;
            return ListView.builder(
                itemCount: categories.length,
                itemBuilder: ((context, index) {
              return Column(
                children: [
                  Text(categories[index].name),
                  ListView.builder(
                  itemCount: categories[index].products.length,
                    itemBuilder: (context, productIndex) {
                      return ProductItem(product: categories[index].products[productIndex], onAdd: (product) {
                        dataManager.cartAdd(product);
                      },);
                  },
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  )
                ],
              );
            }));
          } else {
            if (snapshot.hasError) {
              return const Text('Error happened');
            } else {
              return const CircularProgressIndicator();
            }
          }
        })
      );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;
  final Function onAdd;

  const ProductItem({super.key, required this.product, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Column(
          children: [
            Image.network(
              product.imageUrl
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        product.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("\$${product.price.toStringAsFixed(2)} ea"),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        onAdd(product);
                      },
                      child: const Text("Add"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
