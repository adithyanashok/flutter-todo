import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String convertDate(DateTime date) {
  String formattedDate = DateFormat('E, d MMM').format(date);
  return formattedDate;
}

String parseDate(DateTime date) {
  final _date = DateFormat('d EEE', 'en_US').format(date);
  final _splitedDate = _date.split(' ');
  return '${_splitedDate.first}\n${_splitedDate.last}';
}

String formatTimeOfDay(TimeOfDay timeOfDay) {
  // Create a DateTime object with the given hour and minute
  DateTime dateTime = DateTime(2023, 1, 1, timeOfDay.hour, timeOfDay.minute);

  // Format the time using the intl package
  String formattedTime = DateFormat.jm().format(dateTime);

  return formattedTime;
}

String getCurrentDateAtMidnight(DateTime? date) {
  DateTime now = date ?? DateTime.now();
  DateTime midnight = DateTime(now.year, now.month, now.day, 0, 0, 0, 0);

  DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
  String formattedDate = formatter.format(midnight);

  return formattedDate;
}
