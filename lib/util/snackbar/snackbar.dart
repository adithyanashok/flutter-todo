import 'package:flutter/material.dart';
import 'package:todo/util/colors/colors.dart';

snackBar({
  required BuildContext context,
  required String msg,
}) {
  final snackBar = SnackBar(
    content: Text(
      msg,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
    ),
    elevation: 2,
    backgroundColor: AppColor.blueColor,
    duration: const Duration(seconds: 5),
    behavior: SnackBarBehavior.floating,
  );
  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
