import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/sizes.dart';
import '../styles/texts.dart';

class MyTextInput extends StatelessWidget {
  const MyTextInput({
    super.key,
    required this.controller,
    required this.label,
    required this.placeholder,
    required this.validation,
  });

  final TextEditingController controller;
  final String label;
  final String placeholder;
  final FormFieldValidator<String> validation;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validation,
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: kTextInputLabel,
        hintText: placeholder,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(kTextInputBorderRadius)),
        filled: true,
        fillColor: kWhite,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kTextInputBorderRadius),
          borderSide: const BorderSide(
            color: kGrey,
            width: kBorderInputWidth,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kTextInputBorderRadius),
          borderSide: const BorderSide(
            color: kDarkGreen,
            width: kBorderInputWidth,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kTextInputBorderRadius),
          borderSide: const BorderSide(
            color: kRed,
            width: kBorderInputWidth,
          ),
        ),
      ),
    );
  }
}