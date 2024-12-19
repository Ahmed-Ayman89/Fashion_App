import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/enam.dart';

import '../bottombar.dart';
import 'Home_body.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBGColor,
      body: HomeBody(),
      bottomNavigationBar: bottomNavbar(
        selectedMenue: MenuState.home,
      ),
    );
  }
}
