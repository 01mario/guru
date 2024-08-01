//import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:yailaahi/components/my_description_box.dart';
import 'package:yailaahi/components/my_silver_app_bar.dart';
import 'package:yailaahi/components/my_tab_bar.dart';
import 'package:yailaahi/models/food.dart';
import 'package:yailaahi/models/restaurant.dart';

import '../components/my_current_location.dart';
import "../components/my_drawer.dart";
import 'package:provider/provider.dart';
import '../components/my_food_tile.dart';
// import '../themes/theme_provider.dart';
import 'food_page.dart'; // Import your theme provider

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage>  with SingleTickerProviderStateMixin{

  // tab controller
  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // sort out and return a list of food items that belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu){
    return fullMenu.where((food) => food.category == category).toList();
  }

  // return list of foods in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu){
    return FoodCategory.values.map((category){

      // get category menu
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {

          // get individual food
          final food = categoryMenu[index];

          // return food title UI
          return FoodTile(
            food: food, 
            onTap: () => Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => FoodPage(food: food),
              )
            ),
          );
        },
      );
    }).toList();
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: 
        // children: [
          
          // Background image with opacity
          // Positioned.fill(
          //   child: Opacity(
          //     opacity: 0.1,
          //     child: Image.asset(
          //       'lib/images/merbz_logo/delight.png',
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          
          // Main content
          NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              MySliverAppBar(
                title: MyTabBar(tabController: _tabController),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    // switch
                    const MyCurrentLocation(),
                    // description box
                    const MyDescriptionBox(),
                  ],
                ),
              ),
            ],
            body: Consumer<Restaurant>(
              builder: (context, restaurant, child) => TabBarView(
                controller: _tabController,
                children: getFoodInThisCategory(restaurant.menu),
              ),
            ),
          ),
       // ],
      //),
    );
  }
}