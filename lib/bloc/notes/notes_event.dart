part of 'notes_bloc.dart';

@freezed
class NotesEvent with _$NotesEvent {
  const factory NotesEvent.addNote({
    noteModel,
    context,
  }) = _AddNote;

  const factory NotesEvent.getNotes({
    required String userId,
    required BuildContext context,
  }) = _GetNotes;

  const factory NotesEvent.deleteNote({
    required String noteId,
    required BuildContext context,
  }) = _DeleteNote;

  const factory NotesEvent.editNote({
    required String title,
    required String desc,
    required String noteId,
    required BuildContext context,
  }) = _EditNote;
}
