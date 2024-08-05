import 'package:flutter/material.dart';
import 'package:glassmorphism_demo/FrostedGlass.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
              filterQuality: FilterQuality.high,
              image: AssetImage('assets/bg.jpg'),
              fit: BoxFit.cover),
        ),
        child: FrostedGlass(
          width: 300.0,
          height: 500.0,
        ),
      ),
    );
  }
}
