import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/view/widgets/text.dart';

class EmptyMessage extends StatelessWidget {
  const EmptyMessage({
    super.key,
    required this.title,
    required this.desc,
    required this.fontSize,
  });

  final String title;
  final String desc;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomHeadingText(
            text: title,
            color: const Color.fromARGB(255, 70, 88, 187),
            fontSize: fontSize.sp,
          ),
          CustomSmallText(
            text: desc,
            color: AppColor.whiteSecondary,
          ),
        ],
      ),
    );
  }
}
