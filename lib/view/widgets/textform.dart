import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/util/colors/colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    required this.icon,
    this.onChange,
    this.validator,
  });

  final String hintText;
  final IconData icon;
  final Function(String value)? onChange;
  final String? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.poppins(color: AppColor.blueColor),
      onChanged: (value) {
        onChange!(value);
      },
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon),
        prefixIconColor: AppColor.blueColor,
        errorText: validator,
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.blueColor,
          ),
        ),
      ),
    );
  }
}
