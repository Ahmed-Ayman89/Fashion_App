import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/enam.dart';
import 'package:flutter_application_1/screens/main_page/favourit_page.dart';
import 'package:flutter_application_1/screens/main_page/shopping_cart.dart';
import 'package:flutter_application_1/screens/main_page/user_page.dart';
import 'package:flutter_application_1/screens/page1.dart';

class bottomNavbar extends StatelessWidget {
  const bottomNavbar({
    super.key,
    required this.selectedMenue,
  });
  final MenuState selectedMenue;

  @override
  Widget build(BuildContext context) {
    final Color inactiveColor = Colors.grey;
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFDADADA),
              offset: Offset(0, -8),
              blurRadius: 20,
            )
          ]),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => page1(),
                    ));
              },
              icon: Icon(
                Icons.home,
                color: MenuState.home == selectedMenue
                    ? KprimaryColor
                    : inactiveColor,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FavouriteScreen(),
                    ));
              },
              icon: Icon(
                Icons.favorite,
                color: MenuState.favourite == selectedMenue
                    ? KprimaryColor
                    : inactiveColor,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShoppingCart(),
                    ));
              },
              icon: Icon(
                Icons.shopping_cart,
                color: MenuState.shoppingcart == selectedMenue
                    ? KprimaryColor
                    : inactiveColor,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserPage(),
                    ));
              },
              icon: Icon(
                Icons.person,
                color: MenuState.profile == selectedMenue
                    ? KprimaryColor
                    : inactiveColor,
              )),
        ],
      )),
    );
  }
}
