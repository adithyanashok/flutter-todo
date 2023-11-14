import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:todo/bloc/events/events_bloc.dart';
import 'package:todo/model/events/events.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/util/date.dart';
import 'package:todo/view/widgets/buttons.dart';
import 'package:todo/view/widgets/event_card.dart';
import 'package:todo/view/widgets/text.dart';
import 'package:todo/view/widgets/textform.dart';

class EventsScreen extends StatelessWidget {
  final String token;
  const EventsScreen({super.key, required this.token});

  @override
  Widget build(BuildContext context) {
// Decode the JWT token and extract user information
    var jsonWebToken = JwtDecoder.decode(token);
    final userId = jsonWebToken['id'];
    BlocProvider.of<EventsBloc>(context)
        .add(EventsEvent.getEvent(userId: userId));
    return Scaffold(
      backgroundColor: AppColor.blueColor,
      appBar: AppBar(
        title: const CustomBoldText(
          text: "Events",
          color: AppColor.whiteSecondary,
          fontSize: 16,
        ),
        centerTitle: true,
        backgroundColor: AppColor.blueSecondary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomBoldText(
            text: "Upcoming Events",
            color: AppColor.whiteColor,
          ),
          Expanded(
            child: BlocBuilder<EventsBloc, EventsState>(
              builder: (context, state) {
                return ListView.separated(
                  itemBuilder: (context, index) {
                    final event = state.events[index];
                    return Dismissible(
                      key: Key(event.title),
                      child: EventCard(
                        date: event.date,
                        desc: event.desc,
                        title: event.title,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: state.events.length,
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.blueSecondary,
        onPressed: () {
          eventDialog(userId, context);
        },
        child: const Icon(
          Icons.add,
          color: AppColor.whiteColor,
          weight: 5,
        ),
      ),
    );
  }

  Future<dynamic> eventDialog(String userId, BuildContext context) {
    String title = '';
    String desc = '';
    DateTime date = DateTime.now();
    DateTime selectedDate = DateTime.now();

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
                  const CustomBoldText(text: "Add Event"),

                  // Text field for entering task title
                  CustomTextField(
                    hintText: "Title",
                    icon: Icons.abc, // Replace with the appropriate icon
                    onChange: (value) {
                      title = value;
                    },
                  ),

                  // Text field for entering task description
                  CustomTextField(
                    hintText: "Description",
                    icon: Icons
                        .description_outlined, // Replace with the appropriate icon
                    onChange: (value) {
                      desc = value;
                    },
                  ),

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
                            EventsEvent.addEvent(
                              eventModel: EventModel(
                                userId: userId,
                                date: date,
                                title: title,
                                desc: desc,
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
}
