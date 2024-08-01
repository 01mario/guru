import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    // textstyle
    var myPrimaryTextStyle = 
        const TextStyle(color: Color.fromARGB(255, 157, 49, 49),);  //Theme.of(context).colorScheme.inversePrimary
    var mySecondaryTextStyle = 
        const TextStyle(color: Color.fromARGB(255, 115, 113, 113)); //Theme.of(context).colorScheme.primary

    return Padding(
      padding: const EdgeInsets.only(left:25, right: 25, top: 0, bottom: 25),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary),
            borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.only(left: 5, right: 5, bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // delivery fee
            Column(
              children: [
                Text('\N500', style: myPrimaryTextStyle,),
                Text('Delivery fee', style: mySecondaryTextStyle,),
              ],
            ),
    
            // delivery time
            Column(
              children: [
                Text('15 - 30 min', style: myPrimaryTextStyle),
                Text('Delivery time', style: mySecondaryTextStyle),
              ],
            )
          ],
        ),
      ),
    );
  }
}