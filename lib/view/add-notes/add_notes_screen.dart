import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/notes/notes_bloc.dart';
import 'package:todo/controller/notes/notes.dart';
import 'package:todo/model/notes/notes_model.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/util/date.dart';
import 'package:todo/view/widgets/text.dart';

class AddNotes extends StatelessWidget {
  final String userId;
  AddNotes({super.key, required this.userId});

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blueColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.blueColor,
        title: const CustomBoldText(
          text: "Note",
          color: AppColor.whiteColor,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColor.whiteColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              NoteModel noteModel = NoteModel(
                userId: userId,
                title: titleController.text,
                desc: descController.text,
              );
              NotesContrller.addNotes(noteModel, context);
              // BlocProvider.of<NotesBloc>(context).add(NotesEvent.addNote(
              //   noteModel: noteModel,
              //   context: context,
              // ));
            },
            icon: const Icon(
              Icons.check,
              color: AppColor.whiteColor,
              size: 25,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: titleController,
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: AppColor.whiteColor,
                  ),
                  autofocus: true,
                  cursorHeight: 50,
                  cursorColor: AppColor.blueWhite,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    hintText: "Title",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: CustomBoldText(
                  text: convertDate(DateTime.now()),
                  color: AppColor.blueWhite,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  height: 500,
                  child: TextFormField(
                    controller: descController,
                    maxLines: 100,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: AppColor.whiteColor,
                    ),
                    autofocus: true,
                    cursorColor: AppColor.blueWhite,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 207, 205, 205),
                      ),
                      hintText: "Description",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void addTodo(
    String title,
    String desc,
    context,
  ) {
    NoteModel noteModel = NoteModel(userId: userId, title: title, desc: desc);
    BlocProvider.of<NotesBloc>(context).add(NotesEvent.addNote(
      noteModel: noteModel,
      context: context,
    ));
  }
}
