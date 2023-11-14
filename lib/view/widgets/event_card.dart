import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/util/date.dart';
import 'package:todo/view/widgets/text.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    super.key,
    required this.date,
    required this.title,
    required this.desc,
  });

  final DateTime date;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: AppColor.blueGlass,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBoldText(
              text: convertDate(date),
              color: AppColor.blueWhite,
            ),
            CustomBoldText(
              text: title,
              fontSize: 25,
              color: AppColor.blueColor,
            ),
            CustomSmallText(
              text: desc,
              color: AppColor.blueWhite,
            )
          ],
        ),
      ),
    );
  }
}
