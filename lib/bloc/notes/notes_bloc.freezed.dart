// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotesEvent {
  dynamic get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic noteModel, dynamic context) addNote,
    required TResult Function(String userId, BuildContext context) getNotes,
    required TResult Function(String noteId, BuildContext context) deleteNote,
    required TResult Function(
            String title, String desc, String noteId, BuildContext context)
        editNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic noteModel, dynamic context)? addNote,
    TResult? Function(String userId, BuildContext context)? getNotes,
    TResult? Function(String noteId, BuildContext context)? deleteNote,
    TResult? Function(
            String title, String desc, String noteId, BuildContext context)?
        editNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic noteModel, dynamic context)? addNote,
    TResult Function(String userId, BuildContext context)? getNotes,
    TResult Function(String noteId, BuildContext context)? deleteNote,
    TResult Function(
            String title, String desc, String noteId, BuildContext context)?
        editNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNote value) addNote,
    required TResult Function(_GetNotes value) getNotes,
    required TResult Function(_DeleteNote value) deleteNote,
    required TResult Function(_EditNote value) editNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNote value)? addNote,
    TResult? Function(_GetNotes value)? getNotes,
    TResult? Function(_DeleteNote value)? deleteNote,
    TResult? Function(_EditNote value)? editNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNote value)? addNote,
    TResult Function(_GetNotes value)? getNotes,
    TResult Function(_DeleteNote value)? deleteNote,
    TResult Function(_EditNote value)? editNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesEventCopyWith<$Res> {
  factory $NotesEventCopyWith(
          NotesEvent value, $Res Function(NotesEvent) then) =
      _$NotesEventCopyWithImpl<$Res, NotesEvent>;
}

/// @nodoc
class _$NotesEventCopyWithImpl<$Res, $Val extends NotesEvent>
    implements $NotesEventCopyWith<$Res> {
  _$NotesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddNoteImplCopyWith<$Res> {
  factory _$$AddNoteImplCopyWith(
          _$AddNoteImpl value, $Res Function(_$AddNoteImpl) then) =
      __$$AddNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic noteModel, dynamic context});
}

/// @nodoc
class __$$AddNoteImplCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$AddNoteImpl>
    implements _$$AddNoteImplCopyWith<$Res> {
  __$$AddNoteImplCopyWithImpl(
      _$AddNoteImpl _value, $Res Function(_$AddNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteModel = freezed,
    Object? context = freezed,
  }) {
    return _then(_$AddNoteImpl(
      noteModel: freezed == noteModel ? _value.noteModel! : noteModel,
      context: freezed == context ? _value.context! : context,
    ));
  }
}

/// @nodoc

class _$AddNoteImpl implements _AddNote {
  const _$AddNoteImpl({this.noteModel, this.context});

  @override
  final dynamic noteModel;
  @override
  final dynamic context;

  @override
  String toString() {
    return 'NotesEvent.addNote(noteModel: $noteModel, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNoteImpl &&
            const DeepCollectionEquality().equals(other.noteModel, noteModel) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(noteModel),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNoteImplCopyWith<_$AddNoteImpl> get copyWith =>
      __$$AddNoteImplCopyWithImpl<_$AddNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic noteModel, dynamic context) addNote,
    required TResult Function(String userId, BuildContext context) getNotes,
    required TResult Function(String noteId, BuildContext context) deleteNote,
    required TResult Function(
            String title, String desc, String noteId, BuildContext context)
        editNote,
  }) {
    return addNote(noteModel, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic noteModel, dynamic context)? addNote,
    TResult? Function(String userId, BuildContext context)? getNotes,
    TResult? Function(String noteId, BuildContext context)? deleteNote,
    TResult? Function(
            String title, String desc, String noteId, BuildContext context)?
        editNote,
  }) {
    return addNote?.call(noteModel, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic noteModel, dynamic context)? addNote,
    TResult Function(String userId, BuildContext context)? getNotes,
    TResult Function(String noteId, BuildContext context)? deleteNote,
    TResult Function(
            String title, String desc, String noteId, BuildContext context)?
        editNote,
    required TResult orElse(),
  }) {
    if (addNote != null) {
      return addNote(noteModel, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNote value) addNote,
    required TResult Function(_GetNotes value) getNotes,
    required TResult Function(_DeleteNote value) deleteNote,
    required TResult Function(_EditNote value) editNote,
  }) {
    return addNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNote value)? addNote,
    TResult? Function(_GetNotes value)? getNotes,
    TResult? Function(_DeleteNote value)? deleteNote,
    TResult? Function(_EditNote value)? editNote,
  }) {
    return addNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNote value)? addNote,
    TResult Function(_GetNotes value)? getNotes,
    TResult Function(_DeleteNote value)? deleteNote,
    TResult Function(_EditNote value)? editNote,
    required TResult orElse(),
  }) {
    if (addNote != null) {
      return addNote(this);
    }
    return orElse();
  }
}

abstract class _AddNote implements NotesEvent {
  const factory _AddNote({final dynamic noteModel, final dynamic context}) =
      _$AddNoteImpl;

  dynamic get noteModel;
  @override
  dynamic get context;
  @JsonKey(ignore: true)
  _$$AddNoteImplCopyWith<_$AddNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNotesImplCopyWith<$Res> {
  factory _$$GetNotesImplCopyWith(
          _$GetNotesImpl value, $Res Function(_$GetNotesImpl) then) =
      __$$GetNotesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, BuildContext context});
}

/// @nodoc
class __$$GetNotesImplCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$GetNotesImpl>
    implements _$$GetNotesImplCopyWith<$Res> {
  __$$GetNotesImplCopyWithImpl(
      _$GetNotesImpl _value, $Res Function(_$GetNotesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? context = null,
  }) {
    return _then(_$GetNotesImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$GetNotesImpl implements _GetNotes {
  const _$GetNotesImpl({required this.userId, required this.context});

  @override
  final String userId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'NotesEvent.getNotes(userId: $userId, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotesImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotesImplCopyWith<_$GetNotesImpl> get copyWith =>
      __$$GetNotesImplCopyWithImpl<_$GetNotesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic noteModel, dynamic context) addNote,
    required TResult Function(String userId, BuildContext context) getNotes,
    required TResult Function(String noteId, BuildContext context) deleteNote,
    required TResult Function(
            String title, String desc, String noteId, BuildContext context)
        editNote,
  }) {
    return getNotes(userId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic noteModel, dynamic context)? addNote,
    TResult? Function(String userId, BuildContext context)? getNotes,
    TResult? Function(String noteId, BuildContext context)? deleteNote,
    TResult? Function(
            String title, String desc, String noteId, BuildContext context)?
        editNote,
  }) {
    return getNotes?.call(userId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic noteModel, dynamic context)? addNote,
    TResult Function(String userId, BuildContext context)? getNotes,
    TResult Function(String noteId, BuildContext context)? deleteNote,
    TResult Function(
            String title, String desc, String noteId, BuildContext context)?
        editNote,
    required TResult orElse(),
  }) {
    if (getNotes != null) {
      return getNotes(userId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNote value) addNote,
    required TResult Function(_GetNotes value) getNotes,
    required TResult Function(_DeleteNote value) deleteNote,
    required TResult Function(_EditNote value) editNote,
  }) {
    return getNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNote value)? addNote,
    TResult? Function(_GetNotes value)? getNotes,
    TResult? Function(_DeleteNote value)? deleteNote,
    TResult? Function(_EditNote value)? editNote,
  }) {
    return getNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNote value)? addNote,
    TResult Function(_GetNotes value)? getNotes,
    TResult Function(_DeleteNote value)? deleteNote,
    TResult Function(_EditNote value)? editNote,
    required TResult orElse(),
  }) {
    if (getNotes != null) {
      return getNotes(this);
    }
    return orElse();
  }
}

abstract class _GetNotes implements NotesEvent {
  const factory _GetNotes(
      {required final String userId,
      required final BuildContext context}) = _$GetNotesImpl;

  String get userId;
  @override
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$GetNotesImplCopyWith<_$GetNotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteNoteImplCopyWith<$Res> {
  factory _$$DeleteNoteImplCopyWith(
          _$DeleteNoteImpl value, $Res Function(_$DeleteNoteImpl) then) =
      __$$DeleteNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String noteId, BuildContext context});
}

/// @nodoc
class __$$DeleteNoteImplCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$DeleteNoteImpl>
    implements _$$DeleteNoteImplCopyWith<$Res> {
  __$$DeleteNoteImplCopyWithImpl(
      _$DeleteNoteImpl _value, $Res Function(_$DeleteNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteId = null,
    Object? context = null,
  }) {
    return _then(_$DeleteNoteImpl(
      noteId: null == noteId
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$DeleteNoteImpl implements _DeleteNote {
  const _$DeleteNoteImpl({required this.noteId, required this.context});

  @override
  final String noteId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'NotesEvent.deleteNote(noteId: $noteId, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNoteImpl &&
            (identical(other.noteId, noteId) || other.noteId == noteId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNoteImplCopyWith<_$DeleteNoteImpl> get copyWith =>
      __$$DeleteNoteImplCopyWithImpl<_$DeleteNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic noteModel, dynamic context) addNote,
    required TResult Function(String userId, BuildContext context) getNotes,
    required TResult Function(String noteId, BuildContext context) deleteNote,
    required TResult Function(
            String title, String desc, String noteId, BuildContext context)
        editNote,
  }) {
    return deleteNote(noteId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic noteModel, dynamic context)? addNote,
    TResult? Function(String userId, BuildContext context)? getNotes,
    TResult? Function(String noteId, BuildContext context)? deleteNote,
    TResult? Function(
            String title, String desc, String noteId, BuildContext context)?
        editNote,
  }) {
    return deleteNote?.call(noteId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic noteModel, dynamic context)? addNote,
    TResult Function(String userId, BuildContext context)? getNotes,
    TResult Function(String noteId, BuildContext context)? deleteNote,
    TResult Function(
            String title, String desc, String noteId, BuildContext context)?
        editNote,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(noteId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNote value) addNote,
    required TResult Function(_GetNotes value) getNotes,
    required TResult Function(_DeleteNote value) deleteNote,
    required TResult Function(_EditNote value) editNote,
  }) {
    return deleteNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNote value)? addNote,
    TResult? Function(_GetNotes value)? getNotes,
    TResult? Function(_DeleteNote value)? deleteNote,
    TResult? Function(_EditNote value)? editNote,
  }) {
    return deleteNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNote value)? addNote,
    TResult Function(_GetNotes value)? getNotes,
    TResult Function(_DeleteNote value)? deleteNote,
    TResult Function(_EditNote value)? editNote,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(this);
    }
    return orElse();
  }
}

abstract class _DeleteNote implements NotesEvent {
  const factory _DeleteNote(
      {required final String noteId,
      required final BuildContext context}) = _$DeleteNoteImpl;

  String get noteId;
  @override
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$DeleteNoteImplCopyWith<_$DeleteNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditNoteImplCopyWith<$Res> {
  factory _$$EditNoteImplCopyWith(
          _$EditNoteImpl value, $Res Function(_$EditNoteImpl) then) =
      __$$EditNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String desc, String noteId, BuildContext context});
}

/// @nodoc
class __$$EditNoteImplCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$EditNoteImpl>
    implements _$$EditNoteImplCopyWith<$Res> {
  __$$EditNoteImplCopyWithImpl(
      _$EditNoteImpl _value, $Res Function(_$EditNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? desc = null,
    Object? noteId = null,
    Object? context = null,
  }) {
    return _then(_$EditNoteImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      noteId: null == noteId
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$EditNoteImpl implements _EditNote {
  const _$EditNoteImpl(
      {required this.title,
      required this.desc,
      required this.noteId,
      required this.context});

  @override
  final String title;
  @override
  final String desc;
  @override
  final String noteId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'NotesEvent.editNote(title: $title, desc: $desc, noteId: $noteId, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditNoteImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.noteId, noteId) || other.noteId == noteId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, desc, noteId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditNoteImplCopyWith<_$EditNoteImpl> get copyWith =>
      __$$EditNoteImplCopyWithImpl<_$EditNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic noteModel, dynamic context) addNote,
    required TResult Function(String userId, BuildContext context) getNotes,
    required TResult Function(String noteId, BuildContext context) deleteNote,
    required TResult Function(
            String title, String desc, String noteId, BuildContext context)
        editNote,
  }) {
    return editNote(title, desc, noteId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic noteModel, dynamic context)? addNote,
    TResult? Function(String userId, BuildContext context)? getNotes,
    TResult? Function(String noteId, BuildContext context)? deleteNote,
    TResult? Function(
            String title, String desc, String noteId, BuildContext context)?
        editNote,
  }) {
    return editNote?.call(title, desc, noteId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic noteModel, dynamic context)? addNote,
    TResult Function(String userId, BuildContext context)? getNotes,
    TResult Function(String noteId, BuildContext context)? deleteNote,
    TResult Function(
            String title, String desc, String noteId, BuildContext context)?
        editNote,
    required TResult orElse(),
  }) {
    if (editNote != null) {
      return editNote(title, desc, noteId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNote value) addNote,
    required TResult Function(_GetNotes value) getNotes,
    required TResult Function(_DeleteNote value) deleteNote,
    required TResult Function(_EditNote value) editNote,
  }) {
    return editNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNote value)? addNote,
    TResult? Function(_GetNotes value)? getNotes,
    TResult? Function(_DeleteNote value)? deleteNote,
    TResult? Function(_EditNote value)? editNote,
  }) {
    return editNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNote value)? addNote,
    TResult Function(_GetNotes value)? getNotes,
    TResult Function(_DeleteNote value)? deleteNote,
    TResult Function(_EditNote value)? editNote,
    required TResult orElse(),
  }) {
    if (editNote != null) {
      return editNote(this);
    }
    return orElse();
  }
}

abstract class _EditNote implements NotesEvent {
  const factory _EditNote(
      {required final String title,
      required final String desc,
      required final String noteId,
      required final BuildContext context}) = _$EditNoteImpl;

  String get title;
  String get desc;
  String get noteId;
  @override
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$EditNoteImplCopyWith<_$EditNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotesState {
  bool get isLoading => throw _privateConstructorUsedError;
  NoteModel get note => throw _privateConstructorUsedError;
  List<NoteModel> get notes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotesStateCopyWith<NotesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesStateCopyWith<$Res> {
  factory $NotesStateCopyWith(
          NotesState value, $Res Function(NotesState) then) =
      _$NotesStateCopyWithImpl<$Res, NotesState>;
  @useResult
  $Res call({bool isLoading, NoteModel note, List<NoteModel> notes});

  $NoteModelCopyWith<$Res> get note;
}

/// @nodoc
class _$NotesStateCopyWithImpl<$Res, $Val extends NotesState>
    implements $NotesStateCopyWith<$Res> {
  _$NotesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? note = null,
    Object? notes = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteModel,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<NoteModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteModelCopyWith<$Res> get note {
    return $NoteModelCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotesStateImplCopyWith<$Res>
    implements $NotesStateCopyWith<$Res> {
  factory _$$NotesStateImplCopyWith(
          _$NotesStateImpl value, $Res Function(_$NotesStateImpl) then) =
      __$$NotesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, NoteModel note, List<NoteModel> notes});

  @override
  $NoteModelCopyWith<$Res> get note;
}

/// @nodoc
class __$$NotesStateImplCopyWithImpl<$Res>
    extends _$NotesStateCopyWithImpl<$Res, _$NotesStateImpl>
    implements _$$NotesStateImplCopyWith<$Res> {
  __$$NotesStateImplCopyWithImpl(
      _$NotesStateImpl _value, $Res Function(_$NotesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? note = null,
    Object? notes = null,
  }) {
    return _then(_$NotesStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteModel,
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<NoteModel>,
    ));
  }
}

/// @nodoc

class _$NotesStateImpl implements _NotesState {
  const _$NotesStateImpl(
      {required this.isLoading,
      required this.note,
      required final List<NoteModel> notes})
      : _notes = notes;

  @override
  final bool isLoading;
  @override
  final NoteModel note;
  final List<NoteModel> _notes;
  @override
  List<NoteModel> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'NotesState(isLoading: $isLoading, note: $note, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.note, note) || other.note == note) &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, note,
      const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesStateImplCopyWith<_$NotesStateImpl> get copyWith =>
      __$$NotesStateImplCopyWithImpl<_$NotesStateImpl>(this, _$identity);
}

abstract class _NotesState implements NotesState {
  const factory _NotesState(
      {required final bool isLoading,
      required final NoteModel note,
      required final List<NoteModel> notes}) = _$NotesStateImpl;

  @override
  bool get isLoading;
  @override
  NoteModel get note;
  @override
  List<NoteModel> get notes;
  @override
  @JsonKey(ignore: true)
  _$$NotesStateImplCopyWith<_$NotesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
