import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:todo/bloc/todo/todo_bloc.dart';
import 'package:todo/controller/notification/notification.dart';
import 'package:todo/core/api.dart';
import 'package:todo/model/todo/todo.dart';
import 'package:todo/util/date.dart';
import 'package:todo/util/snackbar/snackbar.dart';

class TodoController {
  static Future<void> addToTodo(Todo todo, context) async {
    final data = todo.toJson();
    var res = await http.post(
      Uri.parse('$baseUrl/todo/add-todo'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(data),
    );
    if (res.statusCode == 200 || res.statusCode == 201) {
      final response = jsonDecode(res.body);
      if (response['status']) {
        // Scheduling the notification
        NotificationClass.scheduleNotification(
          id: todo.date.hashCode + DateTime.now().hashCode,
          title: todo.title,
          body: todo.note,
          scheduledNotificationDateTime: todo.date!,
        );
        BlocProvider.of<TodoBloc>(context).add(TodoEvent.getTodos(
          userId: data['userId'],
          date: getCurrentDateAtMidnight(
            DateTime.now(),
          ),
        ));

        Navigator.of(context).pop();
      }
      if (!response['status']) {
        return snackBar(context: context, msg: response);
      }
    }
  }

  // Function to fetch todos for a specific user
  static Future<List<Todo>> getTodo(userId, date) async {
    // Send a GET request to retrieve todos for the specified user
    var res = await http.get(
      Uri.parse('$baseUrl/todo/get-todo/$userId/$date'),
      headers: {"Content-Type": "application/json"},
    );

    if (res.statusCode == 200 || res.statusCode == 201) {
      // Decode the response body
      final response = jsonDecode(res.body);

      // Create a list to store Todo objects
      List<Todo> todoList = [];

      // Loop through the response and convert each item to a Todo object
      for (var res in response) {
        final todo = Todo.fromJson(res);
        todoList.add(todo);
      }

      // Sort the todoList by createdAt date in descending order
      todoList.sort((a, b) =>
          (b.createdAt ?? DateTime(0)).compareTo(a.createdAt ?? DateTime(0)));

      // Return the sorted todoList
      return todoList;
    } else {
      return [];
    }
  }

  static Future<List<Todo>> getDoneTodo(userId) async {
    // Send a GET request to retrieve todos for the specified user
    var res = await http.get(
      Uri.parse('$baseUrl/todo/get-donetodo/$userId'),
      headers: {"Content-Type": "application/json"},
    );

    if (res.statusCode == 201 || res.statusCode == 200) {
      // Decode the response body
      final response = jsonDecode(res.body);
      // Create a list to store Todo objects
      List<Todo> todoList = [];

      // Loop through the response and convert each item to a Todo object
      for (var res in response) {
        final todo = Todo.fromJson(res);
        todoList.add(todo);
      }
      todoList.sort((a, b) =>
          (b.createdAt ?? DateTime(0)).compareTo(a.createdAt ?? DateTime(0)));
      // Return the sorted todoList
      return todoList;
    } else {
      return [];
    }
  }

  // Function to delete a todo by its ID
  static Future<void> deleteTodo(todoId) async {
    // Send a DELETE request to delete the specified todo
    await http.delete(
      Uri.parse('$baseUrl/todo/delete-todo/$todoId'),
      headers: {"Content-Type": "application/json"},
    );
  }

  static Future<void> doneTodo(
      title, note, userId, time, date, id, BuildContext context) async {
    final todo = Todo(
      userId: userId,
      title: title,
      note: note,
      date: date,
      time: time,
    );

    var res = await http.post(
      Uri.parse('$baseUrl/todo/done-todo'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(todo.toJson()),
    );
    final response = jsonDecode(res.body);
    if (response['status']) {}
  }
}
