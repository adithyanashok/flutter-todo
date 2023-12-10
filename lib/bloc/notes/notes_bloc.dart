import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/controller/notes/notes.dart';
import 'package:todo/model/notes/notes_model.dart';

part 'notes_event.dart';
part 'notes_state.dart';
part 'notes_bloc.freezed.dart';

class NotesBloc extends Bloc<NotesEvent, NotesState> {
  NotesBloc() : super(NotesState.initial()) {
    on<_AddNote>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await NotesContrller.addNotes(event.noteModel, event.context);
      emit(state.copyWith(isLoading: false));
    });

    on<_GetNotes>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final notesList =
          await NotesContrller.getNote(event.userId, event.context);
      emit(state.copyWith(isLoading: false, notes: notesList));
    });

    on<_DeleteNote>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      NotesContrller.deleteNote(event.noteId, event.context);
      emit(state.copyWith(isLoading: false));
    });

    on<_EditNote>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await NotesContrller.editNote(
        event.title,
        event.desc,
        event.noteId,
        event.context,
      );
      emit(state.copyWith(isLoading: false));
    });
  }
}
