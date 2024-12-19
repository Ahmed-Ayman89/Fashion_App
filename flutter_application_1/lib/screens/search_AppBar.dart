import 'package:flutter/material.dart';

import '../constant.dart';

class searchAppBar extends StatelessWidget {
  const searchAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(color: Colors.black38, blurRadius: 4),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 14),
                      prefixIcon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    color: KprimaryColor,
                    borderRadius: BorderRadius.circular(16)),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.sort_by_alpha)),
              )
            ],
          )
        ],
      ),
    );
  }
}
