import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:todo/core/api.dart';
import 'package:todo/model/notes/notes_model.dart';
import 'package:todo/util/snackbar/snackbar.dart';

class NotesContrller {
  static Future<void> addNotes(NoteModel note, context) async {
    final data = note.toJson();
    var res = await http.post(
      Uri.parse('$baseUrl/notes/add-note'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(data),
    );
    if (res.statusCode == 200 || res.statusCode == 201) {
      final response = jsonDecode(res.body);
      if (response['status']) {
        Navigator.of(context).pop();
      }
      if (!response['status']) {
        return snackBar(context: context, msg: response);
      }
    }
  }

  // Function to fetch notes for a specific user
  static Future<List<NoteModel>> getNote(userId, context) async {
    try {
      // Send a GET request to retrieve Notes for the specified user
      var res = await http.get(
        Uri.parse('$baseUrl/notes/get-note/$userId'),
        headers: {"Content-Type": "application/json"},
      );

      if (res.statusCode == 200 || res.statusCode == 201) {
        // Decode the response body
        final response = jsonDecode(res.body);

        // Create a list to store Note objects
        List<NoteModel> noteList = [];

        // Loop through the response and convert each item to a Note object
        for (var res in response) {
          final note = NoteModel.fromJson(res);
          noteList.add(note);
        }

        // Sort the noteList by createdAt date in descending order
        noteList.sort((a, b) =>
            (b.createdAt ?? DateTime(0)).compareTo(a.createdAt ?? DateTime(0)));

        // Return the sorted noteList
        return noteList;
      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }

  // Function to delete a update by its ID
  static Future<void> deleteNote(noteId, context) async {
    try {
      // Send a DELETE request to delete the specified todo
      final response = await http.delete(
        Uri.parse('$baseUrl/notes/delete-note/$noteId'),
        headers: {"Content-Type": "application/json"},
      );
      if (response.statusCode == 200) {
        Navigator.pop(context);
        snackBar(context: context, msg: "Deleted");
      }
    } catch (e) {
      snackBar(context: context, msg: "Can't delete");
    }
  }

  // Function to update a note by its ID
  static Future<void> editNote(title, desc, noteId, context) async {
    try {
      final Map<String, dynamic> data = {
        "title": title,
        "desc": desc,
      };
      final response = await http.put(
        Uri.parse('$baseUrl/notes/edit-note/$noteId'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(data),
      );
      if (response.statusCode == 200) {
        Navigator.pop(context);
        snackBar(context: context, msg: "Edited");
      }
    } catch (e) {
      snackBar(context: context, msg: "Can't edit");
    }
  }
}
