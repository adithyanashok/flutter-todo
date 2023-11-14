import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:todo/core/api.dart';
import 'package:todo/model/events/events.dart';
import 'package:todo/util/snackbar/snackbar.dart';

class EventController {
  static Future<void> addToTodo(EventModel eventModel, context) async {
    var data = {
      "userId": eventModel.userId,
      "date": eventModel.date.toString(),
      "title": eventModel.title,
      "desc": eventModel.desc,
    };

    log("DATA: $data");

    var res = await http.post(
      Uri.parse('$baseUrl/event/create-event'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(data),
    );
    final response = jsonDecode(res.body);
    log("REsponse: ${res.body}");
    if (response['status']) {
      // BlocProvider.of<TodoBloc>(context)
      //     .add(TodoEvent.getTodos(userId: userId));
      print(response['success']);

      Navigator.of(context).pop();
    }
    if (!response['status']) {
      return snackBar(context: context, msg: response);
    }
  }

  // Function to fetch events for a specific user
  static Future<List<EventModel>> getEvents(userId) async {
    // Send a GET request to retrieve event for the specified user
    var res = await http.get(
      Uri.parse('$baseUrl/event/get-events/$userId'),
      headers: {"Content-Type": "application/json"},
    );

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
  }
}
