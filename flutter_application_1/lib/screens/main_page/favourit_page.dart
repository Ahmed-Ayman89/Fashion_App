import 'package:flutter/material.dart';

import '../../bottombar.dart';
import '../../enam.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FavouriteScreen'),
      ),
      bottomNavigationBar: bottomNavbar(
        selectedMenue: MenuState.favourite,
      ),
    );
  }
}
