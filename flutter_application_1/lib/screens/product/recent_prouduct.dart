import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

class RecentProdects extends StatelessWidget {
  RecentProdects({super.key});
  final productList = [
    {
      'name': 'White Shirt',
      'image': 'assets/white.png',
      'price': 50.0,
      'disc': 'Material: Georgette; Comfortable and breathable to wear',
    },
    {
      'name': 'Cbum Shirt',
      'image': 'assets/cbum.png',
      'price': 50.0,
      'disc': 'Material: Georgette; Comfortable and breathable to wear',
    },
    {
      'name': 'Red Shirt',
      'image': 'assets/redshirt.png',
      'price': 85.0,
      'disc': 'Material: Georgette; Comfortable and breathable to wear',
    },
    {
      'name': 'Women Shirt',
      'image': 'assets/women.png',
      'price': 150.0,
      'disc': 'Material: Georgette; Comfortable and breathable to wear',
    },
    {
      'name': 'Shoes',
      'image': 'assets/shoes.png',
      'price': 50.0,
      'disc': 'Material: Georgette; Comfortable and breathable to wear',
    },
    {
      'name': 'perfume',
      'image': 'assets/perhom.png',
      'price': 50.0,
      'disc': 'Material: Georgette; Comfortable and breathable to wear',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: productList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.70,
      ),
      itemBuilder: (BuildContext context, int index) {
        return RecentSignalProducts(
          recent_singl_prod_name: productList[index]['name'],
          recent_singl_prod_image: productList[index]['image'],
          recent_singl_prod_price: productList[index]['price'],
          recent_singl_prod_disc: productList[index]['disc'],
        );
      },
    );
  }
}

class RecentSignalProducts extends StatefulWidget {
  RecentSignalProducts({
    super.key,
    this.recent_singl_prod_name,
    this.recent_singl_prod_image,
    this.recent_singl_prod_price,
    this.recent_singl_prod_disc,
  });

  final recent_singl_prod_name;
  final recent_singl_prod_image;
  final recent_singl_prod_price;
  final recent_singl_prod_disc;

  @override
  State<RecentSignalProducts> createState() => _RecentSignalProductsState();
}

class _RecentSignalProductsState extends State<RecentSignalProducts> {
  bool islike = false;

  final Color inactiveColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetails(
                name: widget.recent_singl_prod_name,
                image: widget.recent_singl_prod_image,
                price: widget.recent_singl_prod_price,
                disc: widget.recent_singl_prod_disc,
              ),
            ),
          );
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 180,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: KprimaryColor,
                ),
                child: Image.asset(
                  widget.recent_singl_prod_image,
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text(widget.recent_singl_prod_name),
                subtitle: Text('\$${widget.recent_singl_prod_price}'),
                trailing: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: KprimaryColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                    icon: Icon(
                      islike ? Icons.favorite : Icons.favorite_border_outlined,
                      color: islike ? Colors.red : inactiveColor,
                      size: 15,
                    ),
                    onPressed: () {
                      setState(() {
                        islike = !islike;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  final String name;
  final String image;
  final double price;
  final String disc;

  const ProductDetails({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.disc,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
              ))
        ],
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(image,
                height: MediaQuery.of(context).size.height * 0.4,
                fit: BoxFit.cover),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(name,
                              style: const TextStyle(
                                  color: KTextColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Text('\$${price}',
                            style: const TextStyle(
                                fontSize: 20, color: Colors.green)),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Text(
                        disc,
                        style: const TextStyle(color: KTextColor),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: SizedBox(
                          width: 200,
                          height: 48,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: KprimaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text('Add to cart'))),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
