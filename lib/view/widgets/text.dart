import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/util/colors/colors.dart';

class CustomSmallText extends StatelessWidget {
  const CustomSmallText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class CustomBoldText extends StatelessWidget {
  const CustomBoldText({
    super.key,
    required this.text,
    this.fontSize = 14,
  });
  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class CustomHeadingText extends StatelessWidget {
  const CustomHeadingText({
    super.key,
    required this.text,
    this.fontSize = 50,
  });
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        color: AppColor.blueColor,
      ),
    );
  }
}
