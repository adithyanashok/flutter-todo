part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.getTodos({userId, date}) = _GetTodos;
  const factory TodoEvent.getDoneTodos({userId}) = _GetDoneTodos;
  const factory TodoEvent.deleteTodos(
      {title, note, userId, time, date, id, context}) = _DeleteTodos;
}
