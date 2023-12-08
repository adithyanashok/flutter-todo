part of 'notes_bloc.dart';

@freezed
class NotesState with _$NotesState {
  const factory NotesState({
    required bool isLoading,
    required NoteModel note,
    required List<NoteModel> notes,
  }) = _NotesState;

  factory NotesState.initial() {
    return const NotesState(
      isLoading: false,
      note: NoteModel(),
      notes: [],
    );
  }
}
