import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:todo/bloc/todo/todo_bloc.dart';
import 'package:todo/controller/auth/auth.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/util/date.dart';
import 'package:todo/view/add_task/add_task_screen.dart';
import 'package:todo/view/done-todo/done_todo.dart';
import 'package:todo/view/internet/internet.dart';
import 'package:todo/view/tasks/tasks.dart';
import 'package:todo/view/widgets/loader.dart';
import 'package:todo/view/widgets/text.dart';

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
    BlocProvider.of<TodoBloc>(context).add(TodoEvent.getTodos(
      userId: id,
      date: getCurrentDateAtMidnight(DateTime.now()),
    ));
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
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColor.blueGlass,
                                  borderRadius: BorderRadius.circular(10),
                                  border: const Border(
                                    bottom: BorderSide(
                                      color: AppColor.blueGlass,
                                    ),
                                    top: BorderSide(
                                      color: AppColor.blueGlass,
                                    ),
                                    left: BorderSide(
                                      color: AppColor.blueGlass,
                                    ),
                                    right: BorderSide(
                                      color: AppColor.blueGlass,
                                    ),
                                  ),
                                ),
                                child: DatePicker(
                                  DateTime.now(),
                                  initialSelectedDate: DateTime.now(),
                                  height: 90,
                                  dateTextStyle: const TextStyle(
                                    color: AppColor.whiteColor,
                                  ),
                                  dayTextStyle: const TextStyle(
                                    color: AppColor.whiteColor,
                                  ),
                                  monthTextStyle: const TextStyle(
                                    color: AppColor.whiteColor,
                                  ),
                                  selectionColor: AppColor.blueSecondary,
                                  onDateChange: (selectedDate) {
                                    BlocProvider.of<TodoBloc>(context)
                                        .add(TodoEvent.getTodos(
                                      userId: id,
                                      date: selectedDate.toString(),
                                    ));
                                  },
                                ),
                              ),
                            ),
                            BlocBuilder<TodoBloc, TodoState>(
                              builder: (context, state) {
                                return state.isLoading
                                    ? const Center(
                                        child: CustomMiniLoader(),
                                      )
                                    : TasksWidget(id: id);
                              },
                            ),
                          ],
                        ),
                        DoneTodo(id: id),
                      ],
                    ),
                  )
                ],
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: AppColor.whiteColor,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddTaskScreen(id: id),
                      ));
                },
                child: const Icon(
                  Icons.add,
                  color: AppColor.blueColor,
                ),
              ),
            ),
          );
  }
}
