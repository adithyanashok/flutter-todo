import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/events/events_bloc.dart';
import 'package:todo/model/events/events.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/util/date.dart';
import 'package:todo/view/widgets/buttons.dart';
import 'package:todo/view/widgets/text.dart';
import 'package:todo/view/widgets/textform.dart';

Future<dynamic> eventDialog(String userId, event, BuildContext context) {
  String title = event.title;
  String desc = event.desc;
  DateTime date = event.date;
  DateTime selectedDate = event.date;
  print(event.date);

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(), // Restrict to today and future dates
      lastDate: DateTime(
          DateTime.now().year + 1), // Allow selection for a year from today
    );

    if (picked != null) {
      date = picked;
    }
  }

  return showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        backgroundColor: AppColor.whiteColor,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // Dialog title
                const CustomBoldText(text: "Edit Event"),

                // Text field for entering task title
                CustomTextField(
                  hintText: "Title",
                  icon: Icons.abc, // Replace with the appropriate icon
                  initialValue: title,
                  onChange: (value) {
                    title = value;
                  },
                ),

                // Text field for entering task description
                CustomTextField(
                  hintText: "Description",
                  initialValue: desc,
                  icon: Icons
                      .description_outlined, // Replace with the appropriate icon
                  onChange: (value) {
                    desc = value;
                  },
                ),

                CustomBoldText(text: convertDate(date)),

                ElevatedButton.icon(
                    onPressed: () {
                      selectDate(context);
                    },
                    icon: const Icon(
                      Icons.calendar_month,
                      color: AppColor.blueColor,
                    ),
                    label: const CustomBoldText(
                      text: "Date",
                      color: AppColor.blueColor,
                    )),

                // Button to submit the task
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: CustomButton(
                    text: "Done",
                    onTap: () {
                      // Check if title and description are not empty
                      if (title.isNotEmpty && desc.isNotEmpty) {
                        BlocProvider.of<EventsBloc>(context).add(
                          EventsEvent.editEvent(
                            eventModel: EventModel(
                              userId: userId,
                              date: date,
                              title: title,
                              desc: desc,
                              id: event.id,
                            ),
                            context: context,
                          ),
                        );
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      );
    },
  );
}
