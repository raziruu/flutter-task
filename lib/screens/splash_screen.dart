import 'dart:async';

import 'package:class_test/screens/grid_view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  final String name = "Nawaraj";
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) => const GridViewScreen(
                  nameData: 'Rajil',
                )),
      ),
    );
    return const Scaffold(
      body: Center(
        child: Text(
          "Welcome Rajil",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
