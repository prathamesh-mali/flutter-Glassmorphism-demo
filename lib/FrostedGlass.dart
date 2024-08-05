import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FrostedGlass extends StatefulWidget {
  double? width;
  double? height;

  FrostedGlass({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  State<FrostedGlass> createState() => _FrostedGlassState();
}

class _FrostedGlassState extends State<FrostedGlass> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: const BoxDecoration(
          color: Color(0x00D0C4C4),
        ),
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 20,
                sigmaY: 20,
              ),
              child: Container(),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                "Hello World",
                style: TextStyle(
                    color: Color(0xB5D4D3D3),
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
