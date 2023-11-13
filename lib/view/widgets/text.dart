import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/util/colors/colors.dart';

class CustomSmallText extends StatelessWidget {
  const CustomSmallText({
    super.key,
    required this.text,
    this.color = Colors.black,
  });
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: color,
      ),
    );
  }
}

class CustomBoldText extends StatelessWidget {
  const CustomBoldText({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.color = Colors.black,
  });
  final String text;
  final double fontSize;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize.sp,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}

class CustomHeadingText extends StatelessWidget {
  const CustomHeadingText({
    super.key,
    required this.text,
    this.fontSize = 45,
    this.color = AppColor.blueColor,
  });
  final String text;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize.sp,
        fontWeight: FontWeight.w600,
        color: color,
      ),
    );
  }
}
