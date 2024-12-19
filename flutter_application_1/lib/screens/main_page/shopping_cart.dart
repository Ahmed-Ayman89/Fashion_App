import 'package:flutter/material.dart';

import '../../bottombar.dart';
import '../../enam.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShoppingCart'),
      ),
      bottomNavigationBar: bottomNavbar(
        selectedMenue: MenuState.shoppingcart,
      ),
    );
  }
}
