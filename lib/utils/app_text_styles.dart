import "package:flutter/material.dart" show TextStyle, FontWeight, Colors;
import "package:google_fonts/google_fonts.dart";
import "package:vie_app_ui/utils/app_consts/app_constants.dart";
import "package:vie_app_ui/utils/colors/color_constants.dart";

class AppTextStyles {
  static TextStyle kBodyMediumDark = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  static TextStyle kBodySmallDark = GoogleFonts.inter(
    letterSpacing: -0.6,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static TextStyle kBodyLargeDark = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static TextStyle kHeadingMediumDark = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static TextStyle kHeadingSmallDark = GoogleFonts.inter(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static TextStyle kHeadingLargeDark = GoogleFonts.inter(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static TextStyle kHeadingSmallMediumDark = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
}
