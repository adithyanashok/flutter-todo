// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/controller/todo/todo.dart';
import 'package:todo/model/todo/todo.dart';
import 'package:todo/util/date.dart';
import 'package:todo/util/snackbar/snackbar.dart';
import 'package:todo/view/widgets/buttons.dart';
import 'package:todo/view/widgets/text.dart';

import 'package:todo/util/colors/colors.dart';
import 'package:todo/view/widgets/textform.dart';

class AddTaskScreen extends StatefulWidget {
  final String id;
  const AddTaskScreen({super.key, required this.id});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();
  DateTime date = DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  String newTime = DateFormat("hh:mm a").format(DateTime.now());

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(), // Restrict to today and future dates
      lastDate: DateTime(
          DateTime.now().year + 1), // Allow selection for a year from today
    );

    if (picked != null) {
      setState(() {
        date = picked;
      });
    }
  }

  Future<void> selectTime(BuildContext context) async {
    TimeOfDay selectedTime = TimeOfDay.now();

    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (pickedTime != null && pickedTime != selectedTime) {
      setState(() {
        time = pickedTime;
        newTime = formatTimeOfDay(time);
      });
    }
  }

// Function to combine date and time
  DateTime? combineDateTime(DateTime? date, TimeOfDay? time) {
    if (date != null && time != null) {
      return DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      );
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blueColor,
      appBar: AppBar(
        backgroundColor: AppColor.blueColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColor.whiteColor,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const CustomHeadingText(
                  text: "Add Task",
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 5),
              CustomTextForm(
                iconData: Icons.task_alt,
                helperText: "Task name",
                label: "Title",
                controller: _titleController,
              ),
              const SizedBox(height: 10),
              CustomTextForm(
                iconData: Icons.description,
                helperText: "Task description",
                label: "Note",
                controller: _noteController,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomDatePicker(
                    helperText: convertDate(date),
                    label: "Date",
                    iconData: Icons.calendar_month_outlined,
                    onTap: () {
                      selectDate(context);
                    },
                  ),
                  const SizedBox(width: 10),
                  CustomDatePicker(
                    helperText: newTime,
                    label: "Time",
                    iconData: Icons.access_time,
                    onTap: () {
                      selectTime(context);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton2(onTap: () {
                    if (_titleController.text.isNotEmpty &&
                        _noteController.text.isNotEmpty) {
                      TodoController.addToTodo(
                        Todo(
                          title: _titleController.text,
                          note: _noteController.text,
                          time: newTime,
                          date: combineDateTime(date, time),
                          dateString: getCurrentDateAtMidnight(date),
                          userId: widget.id,
                        ),
                        context,
                      );
                    } else {
                      snackBar(context: context, msg: "Fill all the fields");
                    }
                  }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
