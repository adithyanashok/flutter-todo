import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/util/colors/colors.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    required this.icon,
    this.onChange,
    this.validator,
    this.obscureText = false,
    this.initialValue = '',
  });

  final String hintText;
  final IconData icon;
  final Function(String value)? onChange;
  final String? validator;
  final bool obscureText;
  final String initialValue;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      style: GoogleFonts.poppins(color: AppColor.blueColor),
      onChanged: (value) {
        widget.onChange!(value);
      },
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: Icon(widget.icon),
        prefixIconColor: AppColor.blueColor,
        errorText: widget.validator,
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.blueColor,
          ),
        ),
      ),
    );
  }
}
