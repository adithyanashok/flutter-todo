import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:todo/bloc/todo/todo_bloc.dart';
import 'package:todo/core/api.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/view/widgets/buttons.dart';
import 'package:todo/view/widgets/text.dart';
import 'package:todo/view/widgets/textform.dart';
import 'package:http/http.dart' as http;

class Dashboard extends StatefulWidget {
  final String token;
  const Dashboard({super.key, required this.token});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late String email;
  late String id;
  String _title = '';
  String _desc = '';
  bool validator = false;

  @override
  void initState() {
    super.initState();
    var jsonWebToken = JwtDecoder.decode(widget.token);
    log(jsonWebToken.toString());
    email = jsonWebToken['email'];
    id = jsonWebToken['id'];
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TodoBloc>(context).add(TodoEvent.getTodos(userId: id));
    return Scaffold(
      backgroundColor: AppColor.blueColor,
      body: SafeArea(
          child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomHeadingText(
              text: "Tasks!",
              color: AppColor.whiteColor,
            ),
          ),
          Expanded(
            child: BlocBuilder<TodoBloc, TodoState>(
              builder: (context, state) {
                return ListView.separated(
                  itemBuilder: (context, index) {
                    final todo = state.todos[index];

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ListTile(
                        tileColor: AppColor.blueSecondary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        title: Text(
                          todo.title!,
                          style: const TextStyle(
                            color: AppColor.whiteSecondary,
                          ),
                        ),
                        subtitle: CustomSmallText(
                          text: todo.desc!,
                          color: AppColor.blueWhite,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10.h,
                  ),
                  itemCount: state.todos.length,
                );
              },
            ),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.whiteColor,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return SimpleDialog(
                backgroundColor: AppColor.whiteColor,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const CustomBoldText(text: "Add Task"),
                        CustomTextField(
                          hintText: "Title",
                          icon: Icons.abc,
                          validator: validator && _title.isEmpty
                              ? 'Fill this input'
                              : null,
                          onChange: (value) {
                            _title = value;
                          },
                        ),
                        CustomTextField(
                          hintText: "Description",
                          icon: Icons.description_outlined,
                          validator: validator && _desc.isEmpty
                              ? 'Fill this input'
                              : null,
                          onChange: (value) {
                            _desc = value;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: CustomButton(
                            text: "Done",
                            onTap: () {
                              setState(() {
                                validator = true;
                              });

                              if (_title.isNotEmpty && _desc.isNotEmpty) {
                                addToTodo();
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
        },
        child: const Icon(
          Icons.add,
          color: AppColor.blueColor,
        ),
      ),
    );
  }

  Future<void> addToTodo() async {
    var data = {
      "title": _title,
      "desc": _desc,
      "userId": id,
    };

    var res = await http.post(
      Uri.parse('$baseUrl/todo/add-todo'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(data),
    );
    final response = jsonDecode(res.body);
    if (response['status']) {
      BlocProvider.of<TodoBloc>(context).add(TodoEvent.getTodos(userId: id));

      Navigator.of(context).pop();
    }
  }
}
