import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/controller/todo/todo.dart';
import 'package:todo/model/todo/todo.dart';
import 'package:todo/util/date.dart';
import 'package:todo/util/snackbar/snackbar.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoState.initial()) {
    on<_GetTodos>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final todos = await TodoController.getTodo(event.userId, event.date);
      emit(state.copyWith(isLoading: false, todos: todos));
    });

    on<_DeleteTodos>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await TodoController.doneTodo(
        event.title,
        event.note,
        event.userId,
        event.time,
        event.date,
        event.id,
        event.context,
      );

      await TodoController.deleteTodo(event.id);

      // final doneTodos = await TodoController.getDoneTodo(event.userId);

      final todos = await TodoController.getTodo(
          event.userId, getCurrentDateAtMidnight(DateTime.now()));

      emit(state.copyWith(isLoading: false, todos: todos));
      emit(state.copyWith(isLoading: false));
    });

    on<_GetDoneTodos>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final todos = await TodoController.getDoneTodo(event.userId);

      emit(state.copyWith(isLoading: false, doneTodos: todos));
    });
  }
}
