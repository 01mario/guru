import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../pages/cart_page.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySliverAppBar({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        // cart button
        IconButton(
          onPressed: () {
            // go to cart page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CartPage(),
              ),
            );
          },
          icon: const Icon(
            Icons.shopping_cart,
          ),
        )
      ],
      backgroundColor: Color.fromARGB(255, 235, 229, 194),
      foregroundColor: Color.fromARGB(255, 217, 51, 51), //Theme.of(context).colorScheme.inversePrimary,
      centerTitle: true,
      title: const Text(
        "Sunset Dinner",
        
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(fit: StackFit.expand, children: [
          // Background image
          Opacity(
            opacity: 0.3,
            child: Image.asset(
              'lib/images/merbz_logo/mer03.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 0.0, right: 0.0, top: 50.0, bottom: 50.0),
            child: child,
          ),
        ]),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0.1, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
