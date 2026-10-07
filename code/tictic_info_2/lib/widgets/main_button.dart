import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/texts.dart';

class MainButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final String label;
  final String color;

  const MainButton({
    super.key,
    required this.onTap,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color == 'dark' ? kDarkGreen : kLightGreen,
          border: Border.all(
            width: 2,
            color: color == 'dark' ? kDarkGreen : kLightGreen,
          ),
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.16),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            label,
            style: color == 'dark' ? kButtonMainColor : kButtonMainLightColor,
          ),
        ),
      ),
    );
  }
}
