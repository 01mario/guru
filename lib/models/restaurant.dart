import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:yailaahi/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // awara
    Food(
        name: "Awara and chicken",
        description: "A juicy beans with melted tomato, and hint of  onion",
        imagePath: "lib/images/awara/awara_and_chicken.png",
        price: 1000,
        color: Colors.red, // Example color
        size: 12.0,
        category: FoodCategory.awara,
        availableAddons: [
          Addon(name: "Extra Awara", price: 1500),
          Addon(name: "Awara with pepper_chicken", price: 2500),
          Addon(name: "Zobo", price: 500),
        ]),

    Food(
        name: "Awara Only",
        description: "A juicy beans with melted tomato, and hint of  onion",
        imagePath: "lib/images/awara/awara_only.png",
        price: 1000,
        color: Colors.red, // Example color
        size: 12.0,
        category: FoodCategory.awara,
        availableAddons: [
          Addon(name: "Extra Awara", price: 1500),
          Addon(name: "Awara with pepper_chicken", price: 2500),
          Addon(name: "Zobo", price: 500),
        ]),

    Food(
        name: "Awara & Chicken medium",
        description: "A juicy beans with melted tomato, and hint of  onion",
        imagePath: "lib/images/awara/awara_with_chick_medium.png",
        price: 2000,
        color: Colors.red, // Example color
        size: 12.0,
        category: FoodCategory.awara,
        availableAddons: [
          Addon(name: "Extra Awara", price: 2500),
          Addon(name: "Awara with pepper_chicken", price: 2500),
          Addon(name: "Zobo", price: 500),
        ]),

    Food(
        name: "Awara & Chicken mini",
        description: "A juicy beans with melted tomato, and hint of  onion",
        imagePath: "lib/images/awara/awara_with_chick_small.png",
        price: 1500,
        color: Colors.red, // Example color
        size: 12.0,
        category: FoodCategory.awara,
        availableAddons: [
          Addon(name: "Extra Awara", price: 2000),
          Addon(name: "Awara with pepper_chicken", price: 2500),
          Addon(name: "Zobo", price: 500),
        ]),

    Food(
        name: "Pepper Yam-balls",
        description: "A juicy beans with melted tomato, and hint of  onion",
        imagePath: "lib/images/awara/pepper_yamballs.png",
        price: 1000,
        color: Colors.red, // Example color
        size: 12.0,
        category: FoodCategory.awara,
        availableAddons: [
          Addon(name: "Extra Awara", price: 1500),
          Addon(name: "Awara with pepper_chicken", price: 2500),
          Addon(name: "Zobo", price: 500),
        ]),

    // cake
    Food(
        name: "Chocolate Cake",
        description: "A juicy beans with melted tomato, and hint of  onion",
        imagePath: "lib/images/cake/black_chocolate_cake.png",
        price: 1000,
        color: Colors.red, // Example color
        size: 12.0,
        category: FoodCategory.cake,
        availableAddons: [
          Addon(name: "Extra Awara", price: 1500),
          Addon(name: "Awara with pepper_chicken", price: 2500),
          // Addon(name: "Zobo", price: 500),
        ]),

    Food(
        name: "Chinchin & Cake",
        description: "A juicy beans with melted tomato, and hint of  onion",
        imagePath: "lib/images/cake/chinchin_and_cake.png",
        price: 1000,
        color: Colors.red, // Example color
        size: 12.0,
        category: FoodCategory.cake,
        availableAddons: [
          Addon(name: "Extra Awara", price: 1500),
          Addon(name: "Awara with pepper_chicken", price: 2500),
          Addon(name: "Zobo", price: 500),
        ]),

    Food(
        name: "Cinnamon Rolls",
        description: "A juicy beans with melted tomato, and hint of  onion",
        imagePath: "lib/images/cake/cinnamon_rolls.png",
        price: 1000,
        color: Colors.red, // Example color
        size: 12.0,
        category: FoodCategory.cake,
        availableAddons: [
          Addon(name: "Extra Awara", price: 1500),
          Addon(name: "Awara with pepper_chicken", price: 2500),
          Addon(name: "Zobo", price: 500),
        ]),

    Food(
        name: "Cupcake",
        description: "A juicy beans with melted tomato, and hint of  onion",
        imagePath: "lib/images/cake/cupcake.png",
        price: 1000,
        color: Colors.red, // Example color
        size: 12.0,
        category: FoodCategory.cake,
        availableAddons: [
          Addon(name: "Extra Awara", price: 1500),
          Addon(name: "Awara with pepper_chicken", price: 2500),
          Addon(name: "Zobo", price: 500),
        ]),

    Food(
        name: "Round Chinchin & Cake",
        description: "A juicy beans with melted tomato, and hint of  onion",
        imagePath: "lib/images/cake/roundchinchin_cake.png",
        price: 1000,
        color: Colors.red, // Example color
        size: 12.0,
        category: FoodCategory.cake,
        availableAddons: [
          Addon(name: "Extra Awara", price: 1500),
          Addon(name: "Awara with pepper_chicken", price: 2500),
          Addon(name: "Zobo", price: 500),
        ]),

    // chicken

    Food(
        name: "Pepper Chicken1",
        description: "A juicy beans with melted tomato, and hint of  onion",
        imagePath: "lib/images/chicken/pepper_chicken.png",
        price: 1000,
        color: Colors.red, // Example color
        size: 12.0,
        category: FoodCategory.chicken,
        availableAddons: [
          Addon(name: "Extra Awara", price: 1500),
          Addon(name: "Awara with pepper_chicken", price: 2500),
          Addon(name: "Zobo", price: 500),
        ]),

    Food(
        name: "Pepper Chicken 2",
        description: "A juicy beans with melted tomato, and hint of  onion",
        imagePath: "lib/images/chicken/pepperchick.png",
        price: 1000,
        color: Colors.red, // Example color
        size: 12.0,
        category: FoodCategory.chicken,
        availableAddons: [
          Addon(name: "Extra Awara", price: 1500),
          Addon(name: "Awara with pepper_chicken", price: 2500),
          Addon(name: "Zobo", price: 500),
        ]),

    Food(
        name: "Samosa",
        description: "A juicy beans with melted tomato, and hint of  onion",
        imagePath: "lib/images/chicken/samosa.png",
        price: 1000,
        color: Colors.red, // Example color
        size: 12.0,
        category: FoodCategory.chicken,
        availableAddons: [
          Addon(name: "Extra Awara", price: 1500),
          Addon(name: "Awara with pepper_chicken", price: 2500),
          Addon(name: "Zobo", price: 500),
        ]),

    Food(
        name: "Sanwich",
        description: "A juicy beans with melted tomato, and hint of  onion",
        imagePath: "lib/images/chicken/sandwich.png",
        price: 1000,
        color: Colors.red, // Example color
        size: 12.0,
        category: FoodCategory.chicken,
        availableAddons: [
          Addon(name: "Extra Awara", price: 1500),
          Addon(name: "Awara with pepper_chicken", price: 2500),
          Addon(name: "Zobo", price: 500),
        ]),

    Food(
        name: "Shawarma",
        description: "A juicy beans with melted tomato, and hint of  onion",
        imagePath: "lib/images/chicken/shawarma.png",
        price: 1000,
        color: Colors.red, // Example color
        size: 12.0,
        category: FoodCategory.chicken,
        availableAddons: [
          Addon(name: "Extra Awara", price: 1500),
          Addon(name: "Awara with pepper_chicken", price: 2500),
          Addon(name: "Zobo", price: 500),
        ]),

    // chinchin

    Food(
        name: "Chinchin & Samosa",
        description: "A juicy beans with melted tomato, and hint of  onion",
        imagePath: "lib/images/chinchin/chinchin_and_samosa.png",
        price: 1000,
        color: Colors.red, // Example color
        size: 12.0,
        category: FoodCategory.chinchin,
        availableAddons: [
          Addon(name: "Extra Awara", price: 1500),
          Addon(name: "Awara with pepper_chicken", price: 2500),
          Addon(name: "Zobo", price: 500),
        ]),

    Food(
        name: "Chinchin only",
        description: "A juicy beans with melted tomato, and hint of  onion",
        imagePath: "lib/images/chinchin/chinchin_only.png",
        price: 1000,
        color: Colors.red, // Example color
        size: 12.0,
        category: FoodCategory.chinchin,
        availableAddons: [
          Addon(name: "Extra Awara", price: 1500),
          Addon(name: "Awara with pepper_chicken", price: 2500),
          Addon(name: "Zobo", price: 500),
        ]),

    Food(
        name: "Eggs & Chips",
        description: "A juicy beans with melted tomato, and hint of  onion",
        imagePath: "lib/images/chinchin/eggs_and_chips.png",
        price: 1000,
        color: Colors.red, // Example color
        size: 12.0,
        category: FoodCategory.chinchin,
        availableAddons: [
          Addon(name: "Extra Awara", price: 1500),
          Addon(name: "Awara with pepper_chicken", price: 2500),
          Addon(name: "Zobo", price: 500),
        ]),

    Food(
        name: "Plain Doughnut",
        description: "A juicy beans with melted tomato, and hint of  onion",
        imagePath: "lib/images/chinchin/plain_doughnut.png",
        price: 1000,
        color: Colors.red, // Example color
        size: 12.0,
        category: FoodCategory.chinchin,
        availableAddons: [
          Addon(name: "Extra Awara", price: 1500),
          Addon(name: "Awara with pepper_chicken", price: 2500),
          Addon(name: "Zobo", price: 500),
        ]),

    Food(
        name: "Sweet Chinchin",
        description: "A juicy beans with melted tomato, and hint of  onion",
        imagePath: "lib/images/chinchin/sweet_chinchin.png",
        price: 1000,
        color: Colors.red, // Example color
        size: 12.0,
        category: FoodCategory.chinchin,
        availableAddons: [
          Addon(name: "Extra Awara", price: 1500),
          Addon(name: "Awara with pepper_chicken", price: 2500),
          Addon(name: "Zobo", price: 500),
        ]),

    // meatpie

    // Food(
    //   name: "Chips & Yam Balls",
    //   description: "A juicy beans with melted tomato, and hint of  onion",
    //   imagePath: "lib/images/awara/awara_and_chicken.png",
    //   price: 1000,
    //   color: Colors.red,    // Example color
    //   size: 12.0,
    //   category: FoodCategory.awara,
    //   availableAddons: [
    //     Addon(name: "Extra Awara", price: 1500),
    //     Addon(name: "Awara with pepper_chicken", price: 2500),
    //     Addon(name: "Zobo", price: 500),
    //   ]),

    //   Food(
    //   name: "Fried-potato & Yam balls",
    //   description: "A juicy beans with melted tomato, and hint of  onion",
    //   imagePath: "lib/images/awara/awara_and_chicken.png",
    //   price: 1000,
    //   color: Colors.red,    // Example color
    //   size: 12.0,
    //   category: FoodCategory.awara,
    //   availableAddons: [
    //     Addon(name: "Extra Awara", price: 1500),
    //     Addon(name: "Awara with pepper_chicken", price: 2500),
    //     Addon(name: "Zobo", price: 500),
    //   ]),

    //   Food(
    //   name: "Meatpie1",
    //   description: "A juicy beans with melted tomato, and hint of  onion",
    //   imagePath: "lib/images/awara/awara_and_chicken.png",
    //   price: 1000,
    //   color: Colors.red,    // Example color
    //   size: 12.0,
    //   category: FoodCategory.awara,
    //   availableAddons: [
    //     Addon(name: "Extra Awara", price: 1500),
    //     Addon(name: "Awara with pepper_chicken", price: 2500),
    //     Addon(name: "Zobo", price: 500),
    //   ]),

    //   Food(
    //   name: "Meatpie",
    //   description: "A juicy beans with melted tomato, and hint of  onion",
    //   imagePath: "lib/images/awara/awara_and_chicken.png",
    //   price: 1000,
    //   color: Colors.red,    // Example color
    //   size: 12.0,
    //   category: FoodCategory.awara,
    //   availableAddons: [
    //     Addon(name: "Extra Awara", price: 1500),
    //     Addon(name: "Awara with pepper_chicken", price: 2500),
    //     Addon(name: "Zobo", price: 500),
    //   ]),

    //   Food(
    //   name: "Milk Glaze",
    //   description: "A juicy beans with melted tomato, and hint of  onion",
    //   imagePath: "lib/images/awara/awara_and_chicken.png",
    //   price: 1000,
    //   color: Colors.red,    // Example color
    //   size: 12.0,
    //   category: FoodCategory.awara,
    //   availableAddons: [
    //     Addon(name: "Extra Awara", price: 1500),
    //     Addon(name: "Awara with pepper_chicken", price: 2500),
    // //     Addon(name: "Zobo", price: 500),
    //   ]),
  ];

  // user cart
  final List<CartItem> _cart = [];
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
  // delivery address (which user can change/update)
  String _deliveryAddress = "760253 Bagadaza rd., Gombe";
  /*
   
   G E T T E R S
   
   */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*
   
   O P E R A T I O N S
   
   */

  // add to cart
  void addTocart(Food food, List<Addon> selectedAddons) {
    // seee if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    // if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(CartItem(
        food: food,
        selectedAddons: selectedAddons,
      ));
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartItem != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }
  /*
   
   H E L P E R S
   
   */

  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------");

    for (final cartItem in _cart) {
      receipt.write(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");

      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(" Addon: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("-----------");
    receipt.writeln();
    receipt.writeln("Total Item: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivery to: $deliveryAddress");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "N${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
