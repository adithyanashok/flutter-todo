import 'package:intl/intl.dart';

String convertDate(DateTime date) {
  String formattedDate = DateFormat('E, d MMM').format(date);
  return formattedDate;
}
