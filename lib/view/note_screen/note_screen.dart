import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/notes/notes_bloc.dart';
import 'package:todo/model/notes/notes_model.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/util/date.dart';
import 'package:todo/view/widgets/text.dart';

class NoteScreen extends StatelessWidget {
  final String userId;
  final String? title;
  final String? desc;
  final DateTime? date;
  final String? noteId;
  const NoteScreen(
      {super.key,
      required this.userId,
      this.title,
      this.desc,
      this.date,
      this.noteId});

  @override
  Widget build(BuildContext context) {
    // Text Edtiting controllers
    final TextEditingController titleController = TextEditingController(
      text: title,
    );
    final TextEditingController descController = TextEditingController(
      text: desc,
    );
    // Scaffold
    return Scaffold(
      backgroundColor: AppColor.blueColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.blueColor,
        title: const CustomBoldText(
          text: "Note",
          color: AppColor.whiteColor,
        ),
        // Icon for to go back
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColor.whiteColor,
          ),
        ),
        // Icons
        actions: [
          // If we are creating a new note just show a check icon or if we are editing a existing note show a save icon
          title == null
              ? IconButton(
                  onPressed: () {
                    // Create a note
                    addNote(
                      titleController.text,
                      descController.text,
                      context,
                    );
                  },
                  icon: const Icon(
                    Icons.check,
                    color: AppColor.whiteColor,
                    size: 25,
                  ),
                )
              // Icon for save
              : IconButton(
                  onPressed: () {
                    // Edit Note event
                    BlocProvider.of<NotesBloc>(context).add(
                      NotesEvent.editNote(
                        title: titleController.text,
                        desc: descController.text,
                        noteId: noteId!,
                        context: context,
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.save,
                    color: AppColor.whiteColor,
                    size: 25,
                  ),
                ),
          // Icon for delete
          title == null
              ? const SizedBox()
              : IconButton(
                  onPressed: () {
                    // Call the delete even
                    BlocProvider.of<NotesBloc>(context).add(
                      NotesEvent.deleteNote(
                        noteId: noteId!,
                        context: context,
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: AppColor.whiteColor,
                    size: 25,
                  ),
                ),
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
                  text: convertDate(date ?? DateTime.now()),
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

  void addNote(
    String title,
    String desc,
    context,
  ) {
    if (title.isNotEmpty && desc.isNotEmpty) {
      NoteModel noteModel = NoteModel(userId: userId, title: title, desc: desc);
      BlocProvider.of<NotesBloc>(context).add(NotesEvent.addNote(
        noteModel: noteModel,
        context: context,
      ));
    } else {
      return;
    }
  }
}
