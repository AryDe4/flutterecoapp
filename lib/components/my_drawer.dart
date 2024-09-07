import 'package:flutter/material.dart';
import 'package:login_pj/components/listtile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //drawer header : logo
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //shop tile

              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: MyListTile(
                  text: "Shop",
                  icon: Icons.home,
                  onTap: () => Navigator.pop(context),
                ),
              ),

              //cart tile
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: MyListTile(
                  text: "Cart",
                  icon: Icons.shopping_cart,
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.pushNamed(context, '/cart_page');
                  },
                ),
              ),
            ],
          ),
          //shop tile
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: MyListTile(
              text: "Exit",
              icon: Icons.logout,
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/landing_page', (Route) => false),
            ),
          ),
        ],
      ),
    );
  }
}
