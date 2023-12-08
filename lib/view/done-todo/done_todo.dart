import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/bloc/todo/todo_bloc.dart';
import 'package:todo/controller/notification/notification.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/view/widgets/empty_widget.dart';
import 'package:todo/view/widgets/loader.dart';
import 'package:todo/view/widgets/text.dart';
import 'package:todo/view/widgets/todo_list_item.dart';

class DoneTodo extends StatefulWidget {
  const DoneTodo({
    super.key,
    required this.id,
  });

  final String id;

  @override
  State<DoneTodo> createState() => _DoneTodoState();
}

class _DoneTodoState extends State<DoneTodo> {
  NotificationClass notificationClass = NotificationClass();
  @override
  void initState() {
    super.initState();
    notificationClass.initializeNotifications();
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TodoBloc>(context)
        .add(TodoEvent.getDoneTodos(userId: widget.id));
    final size = MediaQuery.of(context).size;
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        // print(state.doneTodos.length.toString());
        return Column(
          children: [
            state.doneTodos.isEmpty
                ? const SizedBox()
                : const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CustomHeadingText(
                      text: "Completed Tasks!",
                      color: AppColor.whiteColor,
                      fontSize: 20,
                    ),
                  ),
            Expanded(
              child: state.isLoading
                  ? const Center(
                      child: CustomMiniLoader(),
                    )
                  : state.doneTodos.isEmpty
                      ? const EmptyMessage(
                          title: "No Completed Tasks!",
                          desc: "Press the + button to add a task!",
                          fontSize: 20,
                        )
                      : ListView.separated(
                          itemBuilder: (context, index) {
                            final todo = state.doneTodos[index];
                            print(todo);
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: TaskItem(
                                size: size,
                                dateTime: todo.date!,
                                note: "${todo.note}",
                                time: todo.time!,
                                title: "${todo.title}",
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => SizedBox(
                            height: 10.h,
                          ),
                          itemCount: state.doneTodos.length,
                        ),
            )
          ],
        );
      },
    );
  }
}
