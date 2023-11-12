import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/controller/todo/todo.dart';
import 'package:todo/model/todo/todo.dart';

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
  }
}
