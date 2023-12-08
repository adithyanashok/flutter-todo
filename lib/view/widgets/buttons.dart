import 'package:flutter/material.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/view/widgets/loader.dart';
import 'package:todo/view/widgets/text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.color = Colors.blueAccent,
    this.textColor = Colors.white,
    this.height = 50,
    this.width = 360,
    required this.text,
    this.onTap,
    this.loading = false,
  });

  final Color color;
  final Color textColor;
  final double height;
  final double width;
  final String text;
  final Function()? onTap;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onTap!();
      },
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            color,
          ),
          minimumSize: MaterialStatePropertyAll(
            Size(width, height),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          shadowColor: const MaterialStatePropertyAll(Colors.white),
          elevation: const MaterialStatePropertyAll(10)),
      child: loading
          ? const CustomMiniLoader()
          : Text(
              text,
              style: TextStyle(
                color: textColor,
              ),
            ),
    );
  }
}

class CustomButton2 extends StatelessWidget {
  const CustomButton2({
    super.key,
    this.onTap,
  });

  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        width: 360,
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 44, 70, 219),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: CustomBoldText(
            text: "Create Task",
            color: AppColor.whiteColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
