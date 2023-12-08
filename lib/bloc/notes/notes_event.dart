part of 'notes_bloc.dart';

@freezed
class NotesEvent with _$NotesEvent {
  const factory NotesEvent.addNote({
    noteModel,
    context,
  }) = _AddNote;
}
