import 'dart:convert';
import 'dart:async';
import 'dart:core';

Future<String> fetchUserOrders(String id) async {
  var orders = {
    "7ee9a243-01ca-47c9-aa14-0149789764c3": ["pizza", "orange"]
  };
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => json.encode(orders[id]));
  } catch (err) {
    return "error caught : $err";
  }
}

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<String> fetchProductPrice(product) async {
  var products = {"pizza": 20.30, "orange": 10, "water": 5, "soda": 8.5};
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => json.encode(products[product]));
  } catch (err) {
    return "error caught : $err";
  }
}

calculateTotal() async {
    try {
        double price = 0;
	
        final Map<String, dynamic> userData = json.decode(await fetchUserData());
        final String data = userData['id'];
        final List<dynamic> userOrder = json.decode(await fetchUserOrders(data));
        for (int idx = 0; idx < userOrder.length; idx++) {
            price += json.decode(await fetchProductPrice(userOrder[idx]));
        }
        return price;
    } catch (err) {
        print('error caught: $err');
        return -1;
    }
}