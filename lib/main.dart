import 'package:coffee_shop/screens/delivery.dart';
import 'package:coffee_shop/screens/home.dart';
import 'package:coffee_shop/screens/onboarding.dart';
import 'package:coffee_shop/screens/order.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Onboarding(),
      routes: {
        '/onboarding': (context) => const Onboarding(),
        '/home': (context) => const Home(),
        '/order': (context) => const Order(),
        '/delivery': (context) => const Delivery(),
      },
    );
  }
}
