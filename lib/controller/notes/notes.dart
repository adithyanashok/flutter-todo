import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:todo/core/api.dart';
import 'package:todo/model/notes/notes_model.dart';
import 'package:todo/util/snackbar/snackbar.dart';

class NotesContrller {
  static Future<void> addNotes(NoteModel note, context) async {
    final data = note.toJson();
    print(data);
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
}
