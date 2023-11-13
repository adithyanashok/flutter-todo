import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/bloc/todo/todo_bloc.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/view/widgets/loader.dart';
import 'package:todo/view/widgets/text.dart';

class TasksWidget extends StatelessWidget {
  const TasksWidget({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        return Column(
          children: [
            state.todos.isEmpty
                ? const SizedBox()
                : const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CustomHeadingText(
                      text: "Tasks!",
                      color: AppColor.whiteColor,
                    ),
                  ),
            Expanded(
              child: state.isLoading
                  ? const Center(
                      child: CustomMiniLoader(),
                    )
                  : state.todos.isEmpty
                      ? const Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomHeadingText(
                                text: "No Tasks!",
                                color: Color.fromARGB(255, 70, 88, 187),
                              ),
                              CustomSmallText(
                                text: "Press the + button to add a task!",
                                color: AppColor.whiteSecondary,
                              ),
                            ],
                          ),
                        )
                      : ListView.separated(
                          itemBuilder: (context, index) {
                            final todo = state.todos[index];
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Dismissible(
                                key: Key(todo.id!),
                                onDismissed: (direction) {
                                  BlocProvider.of<TodoBloc>(context)
                                      .add(TodoEvent.deleteTodos(
                                    title: todo.title,
                                    desc: todo.title,
                                    id: todo.id,
                                    userId: id,
                                  ));
                                },
                                child: Card(
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
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => SizedBox(
                            height: 10.h,
                          ),
                          itemCount: state.todos.length,
                        ),
            )
          ],
        );
      },
    );
  }
}
