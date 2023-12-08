import 'package:flutter/material.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/util/date.dart';
import 'package:todo/view/widgets/text.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    super.key,
    required this.size,
    required this.dateTime,
    required this.time,
    required this.title,
    required this.note,
  });

  final Size size;
  final DateTime dateTime;
  final String time;
  final String title;
  final String note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 100,
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBoldText(
                  text: parseDate(dateTime),
                  fontSize: 25,
                  color: AppColor.blueGlass,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Card(
              child: SizedBox(
                width: size.width,
                height: 100,
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tileColor: AppColor.blueGlass,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomBoldText(
                        text: title,
                        fontSize: 15,
                        color: AppColor.whiteColor,
                      ),
                      CustomBoldText(
                        text: time,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColor.whiteColor,
                      ),
                    ],
                  ),
                  subtitle: CustomBoldText(
                    text: note,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blueWhite,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
