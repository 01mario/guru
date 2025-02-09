import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yailaahi/models/restaurant.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("Your location"),
              content: TextField(
                controller: textController,
                decoration: const InputDecoration(hintText: "Enter address.."),
              ),
              actions: [
                // cancel button
                MaterialButton(
                  onPressed: (){
                    Navigator.pop(context);
                    textController.clear();

                  },
                  child: const Text('Cancel'),
                ),

                // save button
                MaterialButton(
                  onPressed: (){
                    String newAddress = textController.text;
                    context.read<Restaurant>().updateDeliveryAddress(newAddress);
                    Navigator.pop(context);
                    textController.clear();
                  },
                  child: const Text('Save'),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver now",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                // address
                Consumer<Restaurant>(
                  builder: (context, restaurant, child) => Text(
                    restaurant.deliveryAddress,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // drop down menu
                const Icon(Icons.keyboard_arrow_down)
              ],
            ),
          )
        ],
      ),
    );
  }
}

