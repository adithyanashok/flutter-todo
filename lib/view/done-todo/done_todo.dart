import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/bloc/todo/todo_bloc.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/view/widgets/loader.dart';
import 'package:todo/view/widgets/text.dart';

class DoneTodo extends StatelessWidget {
  const DoneTodo({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TodoBloc>(context).add(TodoEvent.getDoneTodos(userId: id));

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
                      ? Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomHeadingText(
                                text: "No Completed Tasks!",
                                color: const Color.fromARGB(255, 70, 88, 187),
                                fontSize: 25.sp,
                              ),
                              const CustomSmallText(
                                text: "Press the + button to add a task!",
                                color: AppColor.whiteSecondary,
                              ),
                            ],
                          ),
                        )
                      : ListView.separated(
                          itemBuilder: (context, index) {
                            final todo = state.doneTodos[index];
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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