import 'package:flutter/material.dart';
import 'package:yailaahi/components/my_button.dart';
import 'package:yailaahi/models/restaurant.dart';
import 'package:yailaahi/pages/payment_page.dart';
import 'package:provider/provider.dart';
import '../components/my_cart_tile.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      // cart
      final userCart = restaurant.cart;

      // scaffold UI
      return Scaffold(
        //backgroundColor: Colors.transparent, // Make scaffold background transparent
        body: Stack(
          children: [
            // Background image with opacity
            Positioned.fill(
              child: Opacity(
                opacity: 0.1, // Adjust the opacity as needed
                child: Image.asset(
                  'lib/images/merbz_logo/mer01.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Foreground content
            Column(
              children: [
                // AppBar
                AppBar(
                  centerTitle: true,
                  elevation: 0,
                  title: const Text("Cart"),
                  backgroundColor: Colors.transparent,
                  foregroundColor: Theme.of(context).colorScheme.inversePrimary,
                  actions: [
                    // clear cart button
                    IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text("Are you sure you want to clear the cart?"),
                            actions: [
                              // cancel button
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text("Cancel"),
                              ),

                              // yes button
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  restaurant.clearCart();
                                },
                                child: const Text("Yes"),
                              )
                            ],
                          ),
                        );
                      },
                      icon: const Icon(Icons.delete),
                    ),
                  ],
                ),

                // list of cart
                Expanded(
                  child: Column(
                    children: [
                      userCart.isEmpty
                          ? const Expanded(
                              child: Center(
                                child: Text("Cart is empty.."),
                              ),
                            )
                          : Expanded(
                              child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (context, index) {
                                  // get individual cart item
                                  final cartItem = userCart[index];

                                  // return cart tile UI
                                  return MyCartTile(cartItem: cartItem);
                                },
                              ),
                            ),
                    ],
                  ),
                ),

                // button to pay
                MyButton(
                  text: "Go to checkout",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentPage(),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
