import 'package:flutter/material.dart';
import 'package:flutter_application_1/category/category.dart';
import 'package:flutter_application_1/screens/product/recent_prouduct.dart';
import 'package:flutter_application_1/screens/slider.dart';
import 'custom_AppBar.dart';
import 'search_AppBar.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const customAppBar(),
              const SizedBox(
                height: 20,
              ),
              const searchAppBar(),
              const SizedBox(
                height: 20,
              ),
              const productSlider(),
              const SizedBox(
                height: 20,
              ),
              const category(),
              const SizedBox(
                height: 20,
              ),
              Container(height: 200, child: RecentProdects())
            ],
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
