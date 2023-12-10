import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:todo/bloc/notes/notes_bloc.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/view/note_screen/note_screen.dart';
import 'package:todo/view/widgets/empty_widget.dart';
import 'package:todo/view/widgets/note_card.dart';
import 'package:todo/view/widgets/loader.dart';
import 'package:todo/view/widgets/text.dart';

class NotesScreen extends StatelessWidget {
  final String token;
  const NotesScreen({super.key, required this.token});

  @override
  Widget build(BuildContext context) {
// Decode the JWT token and extract user information
    var jsonWebToken = JwtDecoder.decode(token);
    final userId = jsonWebToken['id'];
    BlocProvider.of<NotesBloc>(context)
        .add(NotesEvent.getNotes(userId: userId, context: context));
    return Scaffold(
      backgroundColor: AppColor.blueColor,
      appBar: AppBar(
        title: const CustomBoldText(
          text: "Notes",
          color: AppColor.whiteSecondary,
          fontSize: 16,
        ),
        centerTitle: true,
        backgroundColor: AppColor.blueSecondary,
      ),
      body: BlocBuilder<NotesBloc, NotesState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: state.isLoading
                    ? const Center(child: CustomMiniLoader())
                    : state.notes.isEmpty
                        ? const EmptyMessage(
                            title: "No Notes!",
                            desc: "Press the + button to write a note!",
                            fontSize: 45)
                        : ListView.separated(
                            itemBuilder: (context, index) {
                              final notes = state.notes[index];
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => NoteScreen(
                                      userId: userId,
                                      title: notes.title,
                                      desc: notes.desc,
                                      date: notes.createdAt,
                                      noteId: notes.id,
                                    ),
                                  ));
                                },
                                child: NotesCard(
                                  date: notes.createdAt!,
                                  desc: notes.desc!,
                                  title: notes.title!,
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                height: 10,
                              );
                            },
                            itemCount: state.notes.length,
                          ),
              )
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppColor.whiteColor,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => NoteScreen(userId: userId),
            ));
          },
          child: const Icon(
            Icons.add,
            color: AppColor.blueColor,
          )),
    );
  }
}
