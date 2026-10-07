
import 'package:flutter/material.dart';

import 'colors.dart';

const kBaseFontSize = 16.0;

const TextStyle kTitleWelcomePage = TextStyle(
  fontStyle: FontStyle.italic,
  fontWeight: FontWeight.w700,
  fontFamily: 'Poppins',
  fontSize: kBaseFontSize * 2,
);

const TextStyle kCarouselText = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 16,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.italic,
  color: kDarkGreen,
  height: 1.6,
  letterSpacing: 0.4,
);

const TextStyle kButtonMainColor = TextStyle(
  color: Color.fromRGBO(255, 255, 255, 1.0),
  fontFamily: 'Poppins',
  fontSize: kBaseFontSize,
);

const TextStyle kButtonMainLightColor = TextStyle(
  color: Color.fromRGBO(0, 0, 0, 1.0),
  fontFamily: 'Poppins',
  fontSize: kBaseFontSize,
);

const TextStyle kTextInputLabel = TextStyle(
  color: kBlack,
  fontSize: 24,
  fontFamily: 'Poppins',
);

const TextStyle kTextLinkStyle = TextStyle(
  fontSize: 18,
  decoration: TextDecoration.underline,
);

