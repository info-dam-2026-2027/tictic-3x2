import 'package:flutter/material.dart';
import 'package:tictic_info_2/styles/colors.dart';
import 'package:tictic_info_2/styles/texts.dart';

class CustomBtn extends StatelessWidget {
  final GestureTapCallback? onTap;
  final String label;
  final bool isDark;

  const CustomBtn({
    super.key,
    required this.onTap,
    required this.label,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isDark ? kDarkGreen : kLightGreen,
          borderRadius: BorderRadius.circular(32), //mn
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0), //mn
          child: Text(label, style: isDark ? kBtnDarkText : kBtnLightText),
        ),
      ),
    );
  }
}