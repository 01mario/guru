import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yailaahi/pages/home_page.dart';
import 'package:provider/provider.dart';

import '../themes/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.1,
              child: Image.asset(
                'lib/images/merbz_logo/mer01.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              AppBar(
                elevation: 0.0,
                centerTitle: true,
                title: Text(
                  "Settings",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  color: Theme.of(context)
                      .colorScheme
                      .inversePrimary, // Change color of back arrow icon
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(25),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.all(25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // dark mode
                          Text(
                            "Dark Mode",
                            style: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                            ),
                          ),
                          // switch
                          CupertinoSwitch(
                            value: Provider.of<ThemeProvider>(context,
                                    listen: false)
                                .isDarkMode,
                            onChanged: (value) => Provider.of<ThemeProvider>(
                                    context,
                                    listen: false)
                                .toggleTheme(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
