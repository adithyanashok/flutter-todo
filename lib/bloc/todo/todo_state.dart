part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState({
    required bool isLoading,
    required List<Todo> todos,
    required List<Todo> doneTodos,
  }) = _TodoState;

  factory TodoState.initial() {
    return const TodoState(
      isLoading: false,
      todos: [],
      doneTodos: [],
    );
  }
}
