import 'package:flutter/material.dart';

class CotamTyphography {
  CotamTyphography._();

  static const String fontFamily = 'PretendardJP';

  // H1 Styles
  static const TextStyle h1Bold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.4,
    letterSpacing: -0.48,
  );

  static const TextStyle h1SemiBold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.4,
    letterSpacing: -0.48,
  );

  static const TextStyle h1Medium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w500,
    height: 1.4,
    letterSpacing: -0.48,
  );

  // Body Styles
  static const TextStyle bodyRegular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.4,
    letterSpacing: -0.32,
  );

  static const TextStyle bodySemiBold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.4,
    letterSpacing: -0.32,
  );
}
