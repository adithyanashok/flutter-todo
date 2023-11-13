// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoEvent {
  dynamic get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic userId) getTodos,
    required TResult Function(dynamic userId) getDoneTodos,
    required TResult Function(
            dynamic title, dynamic desc, dynamic id, dynamic userId)
        deleteTodos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic userId)? getTodos,
    TResult? Function(dynamic userId)? getDoneTodos,
    TResult? Function(dynamic title, dynamic desc, dynamic id, dynamic userId)?
        deleteTodos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic userId)? getTodos,
    TResult Function(dynamic userId)? getDoneTodos,
    TResult Function(dynamic title, dynamic desc, dynamic id, dynamic userId)?
        deleteTodos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTodos value) getTodos,
    required TResult Function(_GetDoneTodos value) getDoneTodos,
    required TResult Function(_DeleteTodos value) deleteTodos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTodos value)? getTodos,
    TResult? Function(_GetDoneTodos value)? getDoneTodos,
    TResult? Function(_DeleteTodos value)? deleteTodos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTodos value)? getTodos,
    TResult Function(_GetDoneTodos value)? getDoneTodos,
    TResult Function(_DeleteTodos value)? deleteTodos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoEventCopyWith<TodoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
  @useResult
  $Res call({dynamic userId});
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetTodosImplCopyWith<$Res>
    implements $TodoEventCopyWith<$Res> {
  factory _$$GetTodosImplCopyWith(
          _$GetTodosImpl value, $Res Function(_$GetTodosImpl) then) =
      __$$GetTodosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic userId});
}

/// @nodoc
class __$$GetTodosImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$GetTodosImpl>
    implements _$$GetTodosImplCopyWith<$Res> {
  __$$GetTodosImplCopyWithImpl(
      _$GetTodosImpl _value, $Res Function(_$GetTodosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_$GetTodosImpl(
      userId: freezed == userId ? _value.userId! : userId,
    ));
  }
}

/// @nodoc

class _$GetTodosImpl implements _GetTodos {
  const _$GetTodosImpl({this.userId});

  @override
  final dynamic userId;

  @override
  String toString() {
    return 'TodoEvent.getTodos(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTodosImpl &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTodosImplCopyWith<_$GetTodosImpl> get copyWith =>
      __$$GetTodosImplCopyWithImpl<_$GetTodosImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic userId) getTodos,
    required TResult Function(dynamic userId) getDoneTodos,
    required TResult Function(
            dynamic title, dynamic desc, dynamic id, dynamic userId)
        deleteTodos,
  }) {
    return getTodos(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic userId)? getTodos,
    TResult? Function(dynamic userId)? getDoneTodos,
    TResult? Function(dynamic title, dynamic desc, dynamic id, dynamic userId)?
        deleteTodos,
  }) {
    return getTodos?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic userId)? getTodos,
    TResult Function(dynamic userId)? getDoneTodos,
    TResult Function(dynamic title, dynamic desc, dynamic id, dynamic userId)?
        deleteTodos,
    required TResult orElse(),
  }) {
    if (getTodos != null) {
      return getTodos(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTodos value) getTodos,
    required TResult Function(_GetDoneTodos value) getDoneTodos,
    required TResult Function(_DeleteTodos value) deleteTodos,
  }) {
    return getTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTodos value)? getTodos,
    TResult? Function(_GetDoneTodos value)? getDoneTodos,
    TResult? Function(_DeleteTodos value)? deleteTodos,
  }) {
    return getTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTodos value)? getTodos,
    TResult Function(_GetDoneTodos value)? getDoneTodos,
    TResult Function(_DeleteTodos value)? deleteTodos,
    required TResult orElse(),
  }) {
    if (getTodos != null) {
      return getTodos(this);
    }
    return orElse();
  }
}

abstract class _GetTodos implements TodoEvent {
  const factory _GetTodos({final dynamic userId}) = _$GetTodosImpl;

  @override
  dynamic get userId;
  @override
  @JsonKey(ignore: true)
  _$$GetTodosImplCopyWith<_$GetTodosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDoneTodosImplCopyWith<$Res>
    implements $TodoEventCopyWith<$Res> {
  factory _$$GetDoneTodosImplCopyWith(
          _$GetDoneTodosImpl value, $Res Function(_$GetDoneTodosImpl) then) =
      __$$GetDoneTodosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic userId});
}

/// @nodoc
class __$$GetDoneTodosImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$GetDoneTodosImpl>
    implements _$$GetDoneTodosImplCopyWith<$Res> {
  __$$GetDoneTodosImplCopyWithImpl(
      _$GetDoneTodosImpl _value, $Res Function(_$GetDoneTodosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_$GetDoneTodosImpl(
      userId: freezed == userId ? _value.userId! : userId,
    ));
  }
}

/// @nodoc

class _$GetDoneTodosImpl implements _GetDoneTodos {
  const _$GetDoneTodosImpl({this.userId});

  @override
  final dynamic userId;

  @override
  String toString() {
    return 'TodoEvent.getDoneTodos(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDoneTodosImpl &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDoneTodosImplCopyWith<_$GetDoneTodosImpl> get copyWith =>
      __$$GetDoneTodosImplCopyWithImpl<_$GetDoneTodosImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic userId) getTodos,
    required TResult Function(dynamic userId) getDoneTodos,
    required TResult Function(
            dynamic title, dynamic desc, dynamic id, dynamic userId)
        deleteTodos,
  }) {
    return getDoneTodos(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic userId)? getTodos,
    TResult? Function(dynamic userId)? getDoneTodos,
    TResult? Function(dynamic title, dynamic desc, dynamic id, dynamic userId)?
        deleteTodos,
  }) {
    return getDoneTodos?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic userId)? getTodos,
    TResult Function(dynamic userId)? getDoneTodos,
    TResult Function(dynamic title, dynamic desc, dynamic id, dynamic userId)?
        deleteTodos,
    required TResult orElse(),
  }) {
    if (getDoneTodos != null) {
      return getDoneTodos(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTodos value) getTodos,
    required TResult Function(_GetDoneTodos value) getDoneTodos,
    required TResult Function(_DeleteTodos value) deleteTodos,
  }) {
    return getDoneTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTodos value)? getTodos,
    TResult? Function(_GetDoneTodos value)? getDoneTodos,
    TResult? Function(_DeleteTodos value)? deleteTodos,
  }) {
    return getDoneTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTodos value)? getTodos,
    TResult Function(_GetDoneTodos value)? getDoneTodos,
    TResult Function(_DeleteTodos value)? deleteTodos,
    required TResult orElse(),
  }) {
    if (getDoneTodos != null) {
      return getDoneTodos(this);
    }
    return orElse();
  }
}

abstract class _GetDoneTodos implements TodoEvent {
  const factory _GetDoneTodos({final dynamic userId}) = _$GetDoneTodosImpl;

  @override
  dynamic get userId;
  @override
  @JsonKey(ignore: true)
  _$$GetDoneTodosImplCopyWith<_$GetDoneTodosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTodosImplCopyWith<$Res>
    implements $TodoEventCopyWith<$Res> {
  factory _$$DeleteTodosImplCopyWith(
          _$DeleteTodosImpl value, $Res Function(_$DeleteTodosImpl) then) =
      __$$DeleteTodosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic title, dynamic desc, dynamic id, dynamic userId});
}

/// @nodoc
class __$$DeleteTodosImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$DeleteTodosImpl>
    implements _$$DeleteTodosImplCopyWith<$Res> {
  __$$DeleteTodosImplCopyWithImpl(
      _$DeleteTodosImpl _value, $Res Function(_$DeleteTodosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? desc = freezed,
    Object? id = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$DeleteTodosImpl(
      title: freezed == title ? _value.title! : title,
      desc: freezed == desc ? _value.desc! : desc,
      id: freezed == id ? _value.id! : id,
      userId: freezed == userId ? _value.userId! : userId,
    ));
  }
}

/// @nodoc

class _$DeleteTodosImpl implements _DeleteTodos {
  const _$DeleteTodosImpl({this.title, this.desc, this.id, this.userId});

  @override
  final dynamic title;
  @override
  final dynamic desc;
  @override
  final dynamic id;
  @override
  final dynamic userId;

  @override
  String toString() {
    return 'TodoEvent.deleteTodos(title: $title, desc: $desc, id: $id, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTodosImpl &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTodosImplCopyWith<_$DeleteTodosImpl> get copyWith =>
      __$$DeleteTodosImplCopyWithImpl<_$DeleteTodosImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic userId) getTodos,
    required TResult Function(dynamic userId) getDoneTodos,
    required TResult Function(
            dynamic title, dynamic desc, dynamic id, dynamic userId)
        deleteTodos,
  }) {
    return deleteTodos(title, desc, id, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic userId)? getTodos,
    TResult? Function(dynamic userId)? getDoneTodos,
    TResult? Function(dynamic title, dynamic desc, dynamic id, dynamic userId)?
        deleteTodos,
  }) {
    return deleteTodos?.call(title, desc, id, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic userId)? getTodos,
    TResult Function(dynamic userId)? getDoneTodos,
    TResult Function(dynamic title, dynamic desc, dynamic id, dynamic userId)?
        deleteTodos,
    required TResult orElse(),
  }) {
    if (deleteTodos != null) {
      return deleteTodos(title, desc, id, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTodos value) getTodos,
    required TResult Function(_GetDoneTodos value) getDoneTodos,
    required TResult Function(_DeleteTodos value) deleteTodos,
  }) {
    return deleteTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTodos value)? getTodos,
    TResult? Function(_GetDoneTodos value)? getDoneTodos,
    TResult? Function(_DeleteTodos value)? deleteTodos,
  }) {
    return deleteTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTodos value)? getTodos,
    TResult Function(_GetDoneTodos value)? getDoneTodos,
    TResult Function(_DeleteTodos value)? deleteTodos,
    required TResult orElse(),
  }) {
    if (deleteTodos != null) {
      return deleteTodos(this);
    }
    return orElse();
  }
}

abstract class _DeleteTodos implements TodoEvent {
  const factory _DeleteTodos(
      {final dynamic title,
      final dynamic desc,
      final dynamic id,
      final dynamic userId}) = _$DeleteTodosImpl;

  dynamic get title;
  dynamic get desc;
  dynamic get id;
  @override
  dynamic get userId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteTodosImplCopyWith<_$DeleteTodosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Todo> get todos => throw _privateConstructorUsedError;
  List<Todo> get doneTodos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
  @useResult
  $Res call({bool isLoading, List<Todo> todos, List<Todo> doneTodos});
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? todos = null,
    Object? doneTodos = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      doneTodos: null == doneTodos
          ? _value.doneTodos
          : doneTodos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoStateImplCopyWith<$Res>
    implements $TodoStateCopyWith<$Res> {
  factory _$$TodoStateImplCopyWith(
          _$TodoStateImpl value, $Res Function(_$TodoStateImpl) then) =
      __$$TodoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Todo> todos, List<Todo> doneTodos});
}

/// @nodoc
class __$$TodoStateImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoStateImpl>
    implements _$$TodoStateImplCopyWith<$Res> {
  __$$TodoStateImplCopyWithImpl(
      _$TodoStateImpl _value, $Res Function(_$TodoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? todos = null,
    Object? doneTodos = null,
  }) {
    return _then(_$TodoStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      doneTodos: null == doneTodos
          ? _value._doneTodos
          : doneTodos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$TodoStateImpl implements _TodoState {
  const _$TodoStateImpl(
      {required this.isLoading,
      required final List<Todo> todos,
      required final List<Todo> doneTodos})
      : _todos = todos,
        _doneTodos = doneTodos;

  @override
  final bool isLoading;
  final List<Todo> _todos;
  @override
  List<Todo> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  final List<Todo> _doneTodos;
  @override
  List<Todo> get doneTodos {
    if (_doneTodos is EqualUnmodifiableListView) return _doneTodos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doneTodos);
  }

  @override
  String toString() {
    return 'TodoState(isLoading: $isLoading, todos: $todos, doneTodos: $doneTodos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            const DeepCollectionEquality()
                .equals(other._doneTodos, _doneTodos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_todos),
      const DeepCollectionEquality().hash(_doneTodos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoStateImplCopyWith<_$TodoStateImpl> get copyWith =>
      __$$TodoStateImplCopyWithImpl<_$TodoStateImpl>(this, _$identity);
}

abstract class _TodoState implements TodoState {
  const factory _TodoState(
      {required final bool isLoading,
      required final List<Todo> todos,
      required final List<Todo> doneTodos}) = _$TodoStateImpl;

  @override
  bool get isLoading;
  @override
  List<Todo> get todos;
  @override
  List<Todo> get doneTodos;
  @override
  @JsonKey(ignore: true)
  _$$TodoStateImplCopyWith<_$TodoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
