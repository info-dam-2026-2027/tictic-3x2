import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../styles/paddings.dart';
import '../../styles/sizes.dart';

class WBackButton extends StatelessWidget {
  const WBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPaddingXS),
      child: Align(
        alignment: Alignment.topLeft,
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
                color: kWhite,
                border: Border.all(color: kLightGreen, width: kBorderBackButtonWidth),
                borderRadius: BorderRadius.circular(kBackButtonBorderRadius)
            ),
            child: Padding(
              padding: const EdgeInsets.all(kPaddingS),
              child: Icon(Icons.arrow_back_rounded),
            ),
          ),
        ),
      ),
    );
  }
}