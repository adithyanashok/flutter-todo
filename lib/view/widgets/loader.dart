import 'package:flutter/material.dart';
import 'package:todo/util/colors/colors.dart';

class CustomMiniLoader extends StatelessWidget {
  const CustomMiniLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 20,
      height: 20,
      child: CircularProgressIndicator(
        color: AppColor.whiteColor,
        strokeWidth: 3,
      ),
    );
  }
}
