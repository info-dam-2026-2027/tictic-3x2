import 'package:flutter/material.dart';

import '../../styles/texts.dart';

class TextLink extends StatelessWidget {
  const TextLink({
    super.key,
    required this.link,
    required this.text,
    required this.cta,
  });

  final GestureTapCallback link;
  final String text;
  final String cta;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: link,
      child: Column(
        children: [
          Text(text),
          Text(
            cta,
            style: kTextLinkStyle,
          ),
        ],
      ),
    );
  }
}