part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.getTodos({userId}) = _GetTodos;
  const factory TodoEvent.getDoneTodos({userId}) = _GetDoneTodos;
  const factory TodoEvent.deleteTodos({title, desc, id, userId, context}) =
      _DeleteTodos;
}
