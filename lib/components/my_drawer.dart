import 'package:flutter/material.dart';
import 'package:yailaahi/components/my_drawer_tile.dart';
import 'package:yailaahi/components/settings_page.dart';
import 'package:yailaahi/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 250, 
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('lib/images/merbz_logo/merbz.jpeg'), 
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), 
                  BlendMode.dstATop,
                ),
              ),
            ),
            child: Container()
          ),

          MyDrawerTile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          MyDrawerTile(
            text: "S E T T I N G S",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),
          const Spacer(),
          MyDrawerTile(
            text: "L O G O U T",
            icon: Icons.logout,
            onTap: () {
              logout();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 25.0,
          ),
        ],
      ),
    );
  }
}
