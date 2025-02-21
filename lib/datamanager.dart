import 'dart:convert';

import 'package:coffee_masters/datamodel.dart';
import 'package:coffee_masters/screens/menupage.dart';
import 'package:http/http.dart' as http;

class DataManager {
  List<Category>? _menu;
  List<ItemInCart> cart = [];

  cartAdd(Product p) {
    bool found = false;
    for (var item in cart) {
      if (item.product.id == p.id) {
          item.quantity++;
          found = true;
      }
    }
    if (!found) {
      cart.add(ItemInCart(product: p, quantity: 1));
    }
  }

  cartRemove(Product p) {
    ItemInCart? productItem;
    bool isTheLast = false;
    for (var item in cart) {
      if (item.product.id == p.id) {
        productItem = item;
        if (item.quantity == 1) {
          isTheLast = true;
        } else {
          isTheLast = false;
          item.quantity--;
        }
      }
    }
    if (isTheLast) {
      cart.remove(productItem);
    }
  }

  cartClear() {
    cart.clear();
  }

  double cartTotal() {
    double total = 0;
    for (var item in cart) {
      total += item.product.price * item.quantity;
    }
    return total;
  }

  fetchMenu() async {
    const url = "https://firtman.github.io/coffeemasters/api/menu.json";
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var body = response.body;
      _menu = [];
      var decodedData = jsonDecode(body) as List<dynamic>;

      for (var json in decodedData) {
        _menu!.add(Category.fromJson(json));
      }
    }

  }

  Future<List<Category>> get getMenu async {
    if (_menu == null) {
      await fetchMenu();
    }
    return _menu!;
  }

}