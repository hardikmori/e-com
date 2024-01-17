import 'package:e_com_app/screen/after_authentication/account.dart';
import 'package:e_com_app/screen/after_authentication/cart.dart';
import 'package:e_com_app/screen/after_authentication/explopre.dart';
import 'package:e_com_app/screen/after_authentication/home.dart';
import 'package:e_com_app/screen/after_authentication/offer.dart';
import 'package:flutter/material.dart';
import 'package:inkblob_navigation_bar/inkblob_navigation_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: index == 0
          ? const Home()
          : index == 1
              ? const Explopre()
              : index == 2
                  ? const Cart()
                  : index == 3
                      ? const Offer()
                      : const Account(),
      bottomNavigationBar: InkblobNavigationBar(
        onItemSelected: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          // Simple Icon with a Title & Color
          InkblobBarItem(
            title: const Text('Home'),
            filledIcon: const Icon(Icons.home),
            emptyIcon: const Icon(Icons.home),
            color: Colors.blue,
          ),
          // Custom Containers
          InkblobBarItem(
            title: const Text('Explore'),
            filledIcon: const Icon(Icons.search),
            emptyIcon: const Icon(Icons.search),
            color: Colors.blue,
          ),
          // Custom Containers
          InkblobBarItem(
            title: const Text('Cart'),
            filledIcon: const Icon(Icons.shopping_cart),
            emptyIcon: const Icon(Icons.shopping_cart),
            color: Colors.blue,
          ),
          // Custom Containers
          InkblobBarItem(
            title: const Text('Offer'),
            filledIcon: const Icon(Icons.shopping_bag_outlined),
            emptyIcon: const Icon(Icons.shopping_bag_outlined),
            color: Colors.blue,
          ),
          // Custom Containers
          InkblobBarItem(
            title: const Text('Account', style: TextStyle(fontSize: 12)),
            filledIcon: const Icon(Icons.account_circle_outlined),
            emptyIcon: const Icon(Icons.account_circle_outlined),
            color: Colors.blue,
          ),
        ],
        selectedIndex: index,
      ),
    );
  }
}
