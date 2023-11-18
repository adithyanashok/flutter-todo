import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:todo/bloc/events/events_bloc.dart';
import 'package:todo/controller/notification/notification.dart';
import 'package:todo/core/api.dart';
import 'package:todo/model/events/events.dart';
import 'package:todo/util/snackbar/snackbar.dart';

class EventController {
  static Future<void> addEvent(EventModel eventModel, context) async {
    var data = {
      "userId": eventModel.userId,
      "date": eventModel.date.toString(),
      "title": eventModel.title,
      "desc": eventModel.desc,
    };

    var res = await http.post(
      Uri.parse('$baseUrl/event/create-event'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(data),
    );

    if (res.statusCode == 200 || res.statusCode == 201) {
      final response = jsonDecode(res.body);
      if (response['status']) {
        BlocProvider.of<EventsBloc>(context)
            .add(EventsEvent.getEvent(userId: eventModel.userId));

        NotificationClass.scheduleNotification(
          title: eventModel.title,
          body: eventModel.desc,
          scheduledNotificationDateTime: eventModel.date,
        );

        Navigator.of(context).pop();
      }
      if (!response['status']) {
        return snackBar(context: context, msg: response);
      }
    }
  }

  // Function to fetch events for a specific user
  static Future<List<EventModel>> getEvents(userId) async {
    // Send a GET request to retrieve event for the specified user
    var res = await http.get(
      Uri.parse('$baseUrl/event/get-events/$userId'),
      headers: {"Content-Type": "application/json"},
    );

    if (res.statusCode == 200) {
      // Decode the response body
      final response = jsonDecode(res.body);
      // Create a list to store event objects
      List<EventModel> eventList = [];

      // Loop through the response and convert each item to a Event object
      for (var res in response['success']) {
        final event = EventModel.fromJson(res);
        eventList.add(event);
      }

      // Sort the eventList by createdAt date in descending order
      eventList.sort((a, b) => (a.date).compareTo(b.date));

      // Return the sorted eventList
      return eventList;
    } else {
      return [];
    }
  }

  // Function to delete a todo by its ID
  static Future<void> deleteEvent(eventId) async {
    // Send a DELETE request to delete the specified todo
    await http.delete(
      Uri.parse('$baseUrl/event/delete-event/$eventId'),
      headers: {"Content-Type": "application/json"},
    );
  }

  static Future<void> editEvent(EventModel eventModel, context) async {
    var data = {
      "date": eventModel.date.toIso8601String(),
      "title": eventModel.title,
      "desc": eventModel.desc,
    };
    final res = await http.put(
        Uri.parse('$baseUrl/event/update-event/${eventModel.id}'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(data));
    final response = jsonDecode(res.body);
    if (response['status']) {
      Navigator.of(context).pop();
    }
  }
}
