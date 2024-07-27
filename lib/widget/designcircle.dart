import 'package:ecomerce/color.dart';
import 'package:flutter/material.dart';

class DesignCricle extends StatelessWidget {
  const DesignCricle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 380,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(400),
          color: circle.withOpacity(0.3)),
    );
  }
}
