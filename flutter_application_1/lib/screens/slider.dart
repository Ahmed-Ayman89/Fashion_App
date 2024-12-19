import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class productSlider extends StatefulWidget {
  const productSlider({super.key});

  @override
  State<productSlider> createState() => _productSliderState();
}

class _productSliderState extends State<productSlider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: CarouselSlider(
        options: CarouselOptions(
          height: 200,
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 16 / 9,
          enableInfiniteScroll: true,
          autoPlayInterval: Duration(seconds: 3),
        ),
        items: [
          'assets/image2.jpg',
          'assets/image3.jpg',
          'assets/image4.jpg',
        ].map((assets) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(assets),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          );
        }).toList(),
      )),
    );
  }
}
