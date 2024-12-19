import 'package:flutter/material.dart';

import '../constant.dart';

class customAppBar extends StatefulWidget {
  const customAppBar({
    super.key,
  });

  @override
  State<customAppBar> createState() => _customAppBarState();
}

bool isDarkMode = false;

class _customAppBarState extends State<customAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.dashboard,
                color: KprimaryColor,
              ),
            ),
          ),
        ),
        const Column(
          children: [
            Text('Ahmed'),
            Text(
              'Welcome to ours',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const CircleAvatar(
          backgroundColor: KprimaryColor,
          backgroundImage: AssetImage('assets/cbum.png'),
        )
      ],
    );
  }
}
