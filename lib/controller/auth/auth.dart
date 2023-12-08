import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/controller/notification/notification.dart';
import 'package:todo/core/api.dart';
import 'package:todo/util/snackbar/snackbar.dart';
import 'package:todo/view/main_screen/main_screen.dart';

// Function to register a user
Future<void> registerUser(email, password, context) async {
  // Prepare data to send in the request
  var data = {
    "email": email,
    "password": password,
  };

  // Send a POST request to the registration endpoint
  var res = await http.post(
    Uri.parse('$baseUrl/register'),
    headers: {"Content-Type": "application/json"},
    body: jsonEncode(data),
  );

  // Decode the response body
  final response = jsonDecode(res.body);

  // Check the status of the registration
  if (!response['status']) {
    // Show a snackbar with the error message if registration fails
    return snackBar(context: context, msg: response['message']);
  }

  // If registration is successful, store the token in SharedPreferences
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (response['status']) {
    await NotificationClass.requestNotificationPermission();
    String token = response['token'];
    prefs.setString('token', token);

    // Navigate to the Dashboard and remove the registration screen from the stack
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => MainScreen(token: token),
        ),
        (route) => false);
  }
}

// Function to authenticate user login
Future<void> loginUser(email, password, context) async {
  // Obtain an instance of SharedPreferences
  SharedPreferences prefs = await SharedPreferences.getInstance();

  // Create a Map containing user email and password
  var data = {
    "email": email,
    "password": password,
  };

  // Send a POST request to the login endpoint
  var res = await http.post(
    Uri.parse('$baseUrl/login'),
    headers: {"Content-Type": "application/json"},
    body: jsonEncode(data),
  );

  // Decode the response body
  final response = jsonDecode(res.body);

  // Check if the login was unsuccessful
  if (!response['status']) {
    // Show a snackbar with the error message
    return snackBar(context: context, msg: response['message']);
  }

  // If login was successful
  if (response['status']) {
    await NotificationClass.requestNotificationPermission();
    // Extract the token from the response
    String token = response['token'];

    // Save the token to SharedPreferences
    prefs.setString('token', token);

    // Navigate to the Dashboard screen and remove the login screen from the stack
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => MainScreen(token: token),
        ),
        (route) => false);
  }
}

// Function to log out the user
Future<void> logout(context) async {
  // Get SharedPreferences instance
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  // Remove the token from SharedPreferences
  await prefs.remove('token');

  // Navigate to the login screen and remove all other screens from the stack
  Navigator.of(context).pushNamedAndRemoveUntil('login', (route) => false);
}
