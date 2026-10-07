import 'package:flutter/material.dart';
import 'package:tictic_info_2/styles/colors.dart';
import 'package:tictic_info_2/styles/paddings.dart';
import 'package:tictic_info_2/styles/texts.dart';

class SeparatorText extends StatelessWidget {
  final String text;
  final Color color;
  final double thickness;

  const SeparatorText({
    super.key,
    this.text = 'Ou',
    this.color = kDarkGreen,
    this.thickness = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kPaddingXL,
        vertical: kPaddingL,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(height: thickness, color: color),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPaddingM),
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: kBaseFontSize,
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
          ),

          Expanded(
            child: Container(height: thickness, color: color),
          ),
        ],
      ),
    );
  }
}
