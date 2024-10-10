import 'package:coffee_shop/components/coffee_grid.dart';
import 'package:coffee_shop/components/coffee_types_bar.dart';
import 'package:coffee_shop/components/custom_search_bar.dart';
import 'package:coffee_shop/components/main_bottom_sheet.dart';
import 'package:coffee_shop/components/profile_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const MainBottomSheet(),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFF313131),
                  Color(0xFF131313),
                ], begin: Alignment.centerLeft, end: Alignment.topRight),
              ),
              child: const Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  ProfileBar(),
                  SizedBox(
                    height: 25,
                  ),
                  CustomSearchBar()
                ],
              ),
            ),
          ),
          const Expanded(
            flex: 6,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                CoffeeTypesBar(),
                SizedBox(
                  height: 10,
                ),
                Expanded(child: CoffeeGrid())
              ],
            ),
          )
        ],
      ),
    );
  }
}
