import 'package:flutter/material.dart';

class Space extends SizedBox {
  const Space({super.key, super.width, super.height});
}

class Circle {
  static Container build({required double size, required Color color}) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
