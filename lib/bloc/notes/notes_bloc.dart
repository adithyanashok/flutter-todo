import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/controller/notes/notes.dart';
import 'package:todo/model/notes/notes_model.dart';
import 'package:todo/view/add-notes/add_notes_screen.dart';

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
  }
}
