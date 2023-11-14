import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/controller/todo/todo.dart';
import 'package:todo/model/todo/todo.dart';
import 'package:todo/util/snackbar/snackbar.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoState.initial()) {
    on<_GetTodos>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final todos = await TodoController.getTodo(event.userId);
      emit(state.copyWith(isLoading: false, todos: todos));
    });

    on<_DeleteTodos>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await TodoController.doneTodo(
          event.title, event.desc, event.userId, event.context);

      await TodoController.deleteTodo(event.id);
      emit(state.copyWith(isLoading: false));

      final doneTodos = await TodoController.getDoneTodo(event.userId);

      final todos = await TodoController.getTodo(event.userId);

      emit(
          state.copyWith(isLoading: false, todos: todos, doneTodos: doneTodos));
    });

    on<_GetDoneTodos>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final todos = await TodoController.getDoneTodo(event.userId);

      emit(state.copyWith(isLoading: false, doneTodos: todos));
    });
  }
}
