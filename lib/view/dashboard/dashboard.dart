import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:todo/bloc/todo/todo_bloc.dart';
import 'package:todo/controller/auth/auth.dart';
import 'package:todo/controller/todo/todo.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/view/done-todo/done_todo.dart';
import 'package:todo/view/internet/internet.dart';
import 'package:todo/view/tasks/tasks.dart';
import 'package:todo/view/widgets/buttons.dart';
import 'package:todo/view/widgets/text.dart';
import 'package:todo/view/widgets/textform.dart';

class Dashboard extends StatefulWidget {
  final String token;
  const Dashboard({super.key, required this.token});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  // Variables for user data
  late String email;
  late String id;

  // Variables for form data
  String _title = '';
  String _desc = '';
  bool validator = false;

  // Variable to store the current connectivity status
  late ConnectivityResult _connectivityResult;

  @override
  void initState() {
    super.initState();

    // Initialize with a default value for connectivity status
    _connectivityResult = ConnectivityResult.mobile;

    // Check and listen for changes in internet connectivity
    _checkInternetConnection();
    Connectivity().onConnectivityChanged.listen((result) {
      setState(() {
        _connectivityResult = result;
      });
    });

    // Decode the JWT token and extract user information
    var jsonWebToken = JwtDecoder.decode(widget.token);
    email = jsonWebToken['email'];
    id = jsonWebToken['id'];
  }

  // Function to check internet connectivity
  Future<void> _checkInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    setState(() {
      _connectivityResult = connectivityResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Fetch todos and done todos when the widget is built
    BlocProvider.of<TodoBloc>(context).add(TodoEvent.getTodos(userId: id));
    BlocProvider.of<TodoBloc>(context).add(TodoEvent.getDoneTodos(userId: id));

    // Return either the InternetCheckScreen or the main scaffold based on connectivity
    return _connectivityResult == ConnectivityResult.none
        ? const InternetCheckScreen()
        : DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: AppColor.blueColor,
              appBar: AppBar(
                title: const CustomBoldText(
                  text: "TODO",
                  color: AppColor.whiteSecondary,
                  fontSize: 16,
                ),
                centerTitle: true,
                backgroundColor: AppColor.blueSecondary,
                actions: [
                  IconButton(
                    onPressed: () {
                      logout(context);
                    },
                    icon: const Icon(
                      Icons.logout,
                      color: AppColor.blueWhite,
                    ),
                  ),
                ],
              ),
              body: Column(
                children: [
                  // TabBar for switching between Tasks and Done
                  TabBar(
                    automaticIndicatorColorAdjustment: false,
                    padding: const EdgeInsets.all(5),
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorPadding: const EdgeInsets.all(5),
                    indicatorColor: AppColor.whiteColor,
                    indicator: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    tabs: [
                      // Tab for Tasks
                      Container(
                        width: .5.sw,
                        height: 45.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: CustomBoldText(
                            text: "Tasks",
                            color: Color.fromARGB(255, 4, 15, 77),
                          ),
                        ),
                      ),
                      // Tab for Done
                      Container(
                        width: .5.sw,
                        height: 45.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: CustomBoldText(
                            text: "Done",
                            color: Color.fromARGB(255, 4, 15, 77),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    // TabBarView to display the corresponding content for selected tab
                    child: TabBarView(
                      children: [
                        TasksWidget(id: id),
                        DoneTodo(id: id),
                      ],
                    ),
                  )
                ],
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: AppColor.whiteColor,
                onPressed: () {
                  tododialog(context);
                },
                child: const Icon(
                  Icons.add,
                  color: AppColor.blueColor,
                ),
              ),
            ),
          );
  }

  Future<dynamic> tododialog(BuildContext context) {
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
                  const CustomBoldText(text: "Add Task"),

                  // Text field for entering task title
                  CustomTextField(
                    hintText: "Title",
                    icon: Icons.abc, // Replace with the appropriate icon
                    // Validator for title field
                    validator:
                        validator && _title.isEmpty ? 'Fill this input' : null,
                    onChange: (value) {
                      _title = value;
                    },
                  ),

                  // Text field for entering task description
                  CustomTextField(
                    hintText: "Description",
                    icon: Icons
                        .description_outlined, // Replace with the appropriate icon
                    // Validator for description field
                    validator:
                        validator && _desc.isEmpty ? 'Fill this input' : null,
                    onChange: (value) {
                      _desc = value;
                    },
                  ),

                  // Button to submit the task
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: CustomButton(
                      text: "Done",
                      onTap: () {
                        setState(() {
                          validator = true;
                        });

                        // Check if title and description are not empty
                        if (_title.isNotEmpty && _desc.isNotEmpty) {
                          TodoController.addToTodo(_title, _desc, id, context);
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
