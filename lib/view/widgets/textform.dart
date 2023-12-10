import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/view/widgets/text.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.icon,
    this.onChange,
    this.validator,
    this.obscureText = false,
    this.initialValue = '',
    this.suffix,
  });

  final String hintText;
  final IconData icon;
  final Function(String value)? onChange;
  final String? validator;
  final bool obscureText;
  final String initialValue;
  final Widget? suffix;

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
      style: GoogleFonts.poppins(color: AppColor.blueColor, fontSize: 14),
      onChanged: (value) {
        widget.onChange!(value);
      },
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: Icon(widget.icon),
        suffixIcon: widget.suffix,
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

class CustomTextForm extends StatelessWidget {
  const CustomTextForm(
      {Key? key,
      required this.iconData,
      required this.helperText,
      required this.controller,
      this.maxLines = 1,
      this.minLines = 1,
      this.maxLength,
      required this.label})
      : super(key: key);
  final IconData iconData;
  final String helperText;
  final String label;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSmallText(
            text: label,
            color: Colors.white,
            fontSize: 15,
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColor.blueGlass,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              maxLines: maxLines,
              minLines: maxLines,
              maxLength: maxLength,
              controller: controller,
              cursorColor: AppColor.blueColor,
              style: const TextStyle(color: AppColor.whiteColor),
              decoration: InputDecoration(
                helperStyle: const TextStyle(color: Colors.white),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(
                  iconData,
                  color: const Color.fromARGB(255, 206, 206, 206),
                ),
                isDense: true,
                hintText: helperText,
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 206, 206, 206),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({
    Key? key,
    required this.helperText,
    this.maxLines = 1,
    this.minLines = 1,
    this.maxLength,
    required this.label,
    required this.iconData,
    this.onTap,
  }) : super(key: key);
  final IconData iconData;
  final String helperText;
  final String label;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSmallText(
          text: label,
          color: Colors.white,
          fontSize: 15,
        ),
        Container(
          width: size.width / 2.3,
          decoration: BoxDecoration(
            color: AppColor.blueGlass,
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextFormField(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
              onTap!();
            },
            readOnly: true,
            maxLines: maxLines,
            minLines: maxLines,
            maxLength: maxLength,
            cursorColor: AppColor.blueColor,
            style: const TextStyle(color: AppColor.whiteColor),
            decoration: InputDecoration(
              helperStyle: const TextStyle(color: Colors.white),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              isDense: true,
              suffixIconConstraints:
                  const BoxConstraints(minWidth: 0, minHeight: 0),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  iconData,
                  color: AppColor.whiteColor,
                  size: 22,
                ),
              ),
              hintText: helperText,
              hintStyle: const TextStyle(
                color: Color.fromARGB(255, 206, 206, 206),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
