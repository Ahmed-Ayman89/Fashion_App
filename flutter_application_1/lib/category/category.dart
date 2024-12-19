import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

class category extends StatefulWidget {
  const category({super.key});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        categoryProuduct(
          image: 'assets/polo.png',
          press: () {},
          text: 'Mens',
        ),
        const SizedBox(
          width: 20,
        ),
        categoryProuduct(
          image: 'assets/woman-clothes.png',
          press: () {},
          text: 'woman',
        ),
        const SizedBox(
          width: 20,
        ),
        categoryProuduct(
          image: 'assets/tshirt.png',
          press: () {},
          text: 'children',
        ),
        const SizedBox(
          width: 20,
        ),
        categoryProuduct(
          image: 'assets/boots.png',
          press: () {},
          text: 'Boots',
        ),
        const SizedBox(
          width: 20,
        ),
        categoryProuduct(
          image: 'assets/boots.png',
          press: () {},
          text: 'Boots',
        ),
        const SizedBox(
          width: 20,
        ),
        categoryProuduct(
          image: 'assets/gym.png',
          press: () {},
          text: 'sport',
        ),
      ]),
    );
  }
}

class categoryProuduct extends StatelessWidget {
  const categoryProuduct({
    super.key,
    required this.image,
    required this.text,
    required this.press,
  });
  final String image, text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: GestureDetector(
        onTap: press,
        child: Container(
          child: Chip(
              backgroundColor: KprimaryColor,
              label: Row(
                children: [
                  Image.asset(
                    image,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(text),
                ],
              )),
        ),
      ),
    );
  }
}
