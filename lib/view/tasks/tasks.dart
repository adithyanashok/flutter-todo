import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/bloc/todo/todo_bloc.dart';
import 'package:todo/view/widgets/empty_widget.dart';
import 'package:todo/view/widgets/todo_list_item.dart';

class TasksWidget extends StatelessWidget {
  const TasksWidget({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        return Expanded(
          child: state.todos.isEmpty
              ? const EmptyMessage(
                  title: "No Tasks!",
                  desc: "Press the + button to add a task!",
                  fontSize: 45,
                )
              : ListView.separated(
                  itemBuilder: (context, index) {
                    final todo = state.todos[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Dismissible(
                        key: UniqueKey(),
                        onDismissed: (direction) {
                          BlocProvider.of<TodoBloc>(context).add(
                            TodoEvent.deleteTodos(
                              title: todo.title,
                              note: todo.note,
                              userId: id,
                              id: todo.id,
                              date: todo.date,
                              time: todo.time,
                              context: context,
                            ),
                          );
                        },
                        child: TaskItem(
                          size: size,
                          dateTime: todo.date!,
                          note: "${todo.note}",
                          time: todo.time!,
                          title: "${todo.title}",
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10.h,
                  ),
                  itemCount: state.todos.length,
                ),
        );
      },
    );
  }
}
