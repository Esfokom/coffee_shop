import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainBottomSheet extends StatelessWidget {
  const MainBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            iconSize: 35,
            icon: const Icon(
              FontAwesomeIcons.house,
              color: Color(0xFFC67C4E),
            ),
          ),
          IconButton(
            onPressed: () {},
            iconSize: 35,
            icon: const Icon(Icons.shopping_bag, color: Colors.grey),
          ),
          IconButton(
            onPressed: () {},
            iconSize: 35,
            icon: const Icon(Icons.shopping_cart, color: Colors.grey),
          ),
          IconButton(
            onPressed: () {},
            iconSize: 35,
            icon: const Icon(Icons.notifications, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
