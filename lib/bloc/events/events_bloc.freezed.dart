// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventModel eventModel, BuildContext context)
        addEvent,
    required TResult Function(String userId) getEvent,
    required TResult Function(String eventId, String userId) deleteEvent,
    required TResult Function(EventModel eventModel, BuildContext context)
        editEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventModel eventModel, BuildContext context)? addEvent,
    TResult? Function(String userId)? getEvent,
    TResult? Function(String eventId, String userId)? deleteEvent,
    TResult? Function(EventModel eventModel, BuildContext context)? editEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventModel eventModel, BuildContext context)? addEvent,
    TResult Function(String userId)? getEvent,
    TResult Function(String eventId, String userId)? deleteEvent,
    TResult Function(EventModel eventModel, BuildContext context)? editEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_GetEvent value) getEvent,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_EditEvent value) editEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_GetEvent value)? getEvent,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_EditEvent value)? editEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_GetEvent value)? getEvent,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_EditEvent value)? editEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsEventCopyWith<$Res> {
  factory $EventsEventCopyWith(
          EventsEvent value, $Res Function(EventsEvent) then) =
      _$EventsEventCopyWithImpl<$Res, EventsEvent>;
}

/// @nodoc
class _$EventsEventCopyWithImpl<$Res, $Val extends EventsEvent>
    implements $EventsEventCopyWith<$Res> {
  _$EventsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddEventImplCopyWith<$Res> {
  factory _$$AddEventImplCopyWith(
          _$AddEventImpl value, $Res Function(_$AddEventImpl) then) =
      __$$AddEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventModel eventModel, BuildContext context});

  $EventModelCopyWith<$Res> get eventModel;
}

/// @nodoc
class __$$AddEventImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$AddEventImpl>
    implements _$$AddEventImplCopyWith<$Res> {
  __$$AddEventImplCopyWithImpl(
      _$AddEventImpl _value, $Res Function(_$AddEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventModel = null,
    Object? context = null,
  }) {
    return _then(_$AddEventImpl(
      eventModel: null == eventModel
          ? _value.eventModel
          : eventModel // ignore: cast_nullable_to_non_nullable
              as EventModel,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventModelCopyWith<$Res> get eventModel {
    return $EventModelCopyWith<$Res>(_value.eventModel, (value) {
      return _then(_value.copyWith(eventModel: value));
    });
  }
}

/// @nodoc

class _$AddEventImpl implements _AddEvent {
  const _$AddEventImpl({required this.eventModel, required this.context});

  @override
  final EventModel eventModel;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'EventsEvent.addEvent(eventModel: $eventModel, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEventImpl &&
            (identical(other.eventModel, eventModel) ||
                other.eventModel == eventModel) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventModel, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEventImplCopyWith<_$AddEventImpl> get copyWith =>
      __$$AddEventImplCopyWithImpl<_$AddEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventModel eventModel, BuildContext context)
        addEvent,
    required TResult Function(String userId) getEvent,
    required TResult Function(String eventId, String userId) deleteEvent,
    required TResult Function(EventModel eventModel, BuildContext context)
        editEvent,
  }) {
    return addEvent(eventModel, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventModel eventModel, BuildContext context)? addEvent,
    TResult? Function(String userId)? getEvent,
    TResult? Function(String eventId, String userId)? deleteEvent,
    TResult? Function(EventModel eventModel, BuildContext context)? editEvent,
  }) {
    return addEvent?.call(eventModel, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventModel eventModel, BuildContext context)? addEvent,
    TResult Function(String userId)? getEvent,
    TResult Function(String eventId, String userId)? deleteEvent,
    TResult Function(EventModel eventModel, BuildContext context)? editEvent,
    required TResult orElse(),
  }) {
    if (addEvent != null) {
      return addEvent(eventModel, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_GetEvent value) getEvent,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_EditEvent value) editEvent,
  }) {
    return addEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_GetEvent value)? getEvent,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_EditEvent value)? editEvent,
  }) {
    return addEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_GetEvent value)? getEvent,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_EditEvent value)? editEvent,
    required TResult orElse(),
  }) {
    if (addEvent != null) {
      return addEvent(this);
    }
    return orElse();
  }
}

abstract class _AddEvent implements EventsEvent {
  const factory _AddEvent(
      {required final EventModel eventModel,
      required final BuildContext context}) = _$AddEventImpl;

  EventModel get eventModel;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$AddEventImplCopyWith<_$AddEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetEventImplCopyWith<$Res> {
  factory _$$GetEventImplCopyWith(
          _$GetEventImpl value, $Res Function(_$GetEventImpl) then) =
      __$$GetEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetEventImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$GetEventImpl>
    implements _$$GetEventImplCopyWith<$Res> {
  __$$GetEventImplCopyWithImpl(
      _$GetEventImpl _value, $Res Function(_$GetEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetEventImpl implements _GetEvent {
  const _$GetEventImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'EventsEvent.getEvent(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEventImplCopyWith<_$GetEventImpl> get copyWith =>
      __$$GetEventImplCopyWithImpl<_$GetEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventModel eventModel, BuildContext context)
        addEvent,
    required TResult Function(String userId) getEvent,
    required TResult Function(String eventId, String userId) deleteEvent,
    required TResult Function(EventModel eventModel, BuildContext context)
        editEvent,
  }) {
    return getEvent(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventModel eventModel, BuildContext context)? addEvent,
    TResult? Function(String userId)? getEvent,
    TResult? Function(String eventId, String userId)? deleteEvent,
    TResult? Function(EventModel eventModel, BuildContext context)? editEvent,
  }) {
    return getEvent?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventModel eventModel, BuildContext context)? addEvent,
    TResult Function(String userId)? getEvent,
    TResult Function(String eventId, String userId)? deleteEvent,
    TResult Function(EventModel eventModel, BuildContext context)? editEvent,
    required TResult orElse(),
  }) {
    if (getEvent != null) {
      return getEvent(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_GetEvent value) getEvent,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_EditEvent value) editEvent,
  }) {
    return getEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_GetEvent value)? getEvent,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_EditEvent value)? editEvent,
  }) {
    return getEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_GetEvent value)? getEvent,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_EditEvent value)? editEvent,
    required TResult orElse(),
  }) {
    if (getEvent != null) {
      return getEvent(this);
    }
    return orElse();
  }
}

abstract class _GetEvent implements EventsEvent {
  const factory _GetEvent({required final String userId}) = _$GetEventImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$GetEventImplCopyWith<_$GetEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteEventImplCopyWith<$Res> {
  factory _$$DeleteEventImplCopyWith(
          _$DeleteEventImpl value, $Res Function(_$DeleteEventImpl) then) =
      __$$DeleteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId, String userId});
}

/// @nodoc
class __$$DeleteEventImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$DeleteEventImpl>
    implements _$$DeleteEventImplCopyWith<$Res> {
  __$$DeleteEventImplCopyWithImpl(
      _$DeleteEventImpl _value, $Res Function(_$DeleteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? userId = null,
  }) {
    return _then(_$DeleteEventImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteEventImpl implements _DeleteEvent {
  const _$DeleteEventImpl({required this.eventId, required this.userId});

  @override
  final String eventId;
  @override
  final String userId;

  @override
  String toString() {
    return 'EventsEvent.deleteEvent(eventId: $eventId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEventImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEventImplCopyWith<_$DeleteEventImpl> get copyWith =>
      __$$DeleteEventImplCopyWithImpl<_$DeleteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventModel eventModel, BuildContext context)
        addEvent,
    required TResult Function(String userId) getEvent,
    required TResult Function(String eventId, String userId) deleteEvent,
    required TResult Function(EventModel eventModel, BuildContext context)
        editEvent,
  }) {
    return deleteEvent(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventModel eventModel, BuildContext context)? addEvent,
    TResult? Function(String userId)? getEvent,
    TResult? Function(String eventId, String userId)? deleteEvent,
    TResult? Function(EventModel eventModel, BuildContext context)? editEvent,
  }) {
    return deleteEvent?.call(eventId, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventModel eventModel, BuildContext context)? addEvent,
    TResult Function(String userId)? getEvent,
    TResult Function(String eventId, String userId)? deleteEvent,
    TResult Function(EventModel eventModel, BuildContext context)? editEvent,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(eventId, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_GetEvent value) getEvent,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_EditEvent value) editEvent,
  }) {
    return deleteEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_GetEvent value)? getEvent,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_EditEvent value)? editEvent,
  }) {
    return deleteEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_GetEvent value)? getEvent,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_EditEvent value)? editEvent,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(this);
    }
    return orElse();
  }
}

abstract class _DeleteEvent implements EventsEvent {
  const factory _DeleteEvent(
      {required final String eventId,
      required final String userId}) = _$DeleteEventImpl;

  String get eventId;
  String get userId;
  @JsonKey(ignore: true)
  _$$DeleteEventImplCopyWith<_$DeleteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditEventImplCopyWith<$Res> {
  factory _$$EditEventImplCopyWith(
          _$EditEventImpl value, $Res Function(_$EditEventImpl) then) =
      __$$EditEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventModel eventModel, BuildContext context});

  $EventModelCopyWith<$Res> get eventModel;
}

/// @nodoc
class __$$EditEventImplCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$EditEventImpl>
    implements _$$EditEventImplCopyWith<$Res> {
  __$$EditEventImplCopyWithImpl(
      _$EditEventImpl _value, $Res Function(_$EditEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventModel = null,
    Object? context = null,
  }) {
    return _then(_$EditEventImpl(
      eventModel: null == eventModel
          ? _value.eventModel
          : eventModel // ignore: cast_nullable_to_non_nullable
              as EventModel,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventModelCopyWith<$Res> get eventModel {
    return $EventModelCopyWith<$Res>(_value.eventModel, (value) {
      return _then(_value.copyWith(eventModel: value));
    });
  }
}

/// @nodoc

class _$EditEventImpl implements _EditEvent {
  const _$EditEventImpl({required this.eventModel, required this.context});

  @override
  final EventModel eventModel;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'EventsEvent.editEvent(eventModel: $eventModel, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditEventImpl &&
            (identical(other.eventModel, eventModel) ||
                other.eventModel == eventModel) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventModel, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditEventImplCopyWith<_$EditEventImpl> get copyWith =>
      __$$EditEventImplCopyWithImpl<_$EditEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventModel eventModel, BuildContext context)
        addEvent,
    required TResult Function(String userId) getEvent,
    required TResult Function(String eventId, String userId) deleteEvent,
    required TResult Function(EventModel eventModel, BuildContext context)
        editEvent,
  }) {
    return editEvent(eventModel, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventModel eventModel, BuildContext context)? addEvent,
    TResult? Function(String userId)? getEvent,
    TResult? Function(String eventId, String userId)? deleteEvent,
    TResult? Function(EventModel eventModel, BuildContext context)? editEvent,
  }) {
    return editEvent?.call(eventModel, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventModel eventModel, BuildContext context)? addEvent,
    TResult Function(String userId)? getEvent,
    TResult Function(String eventId, String userId)? deleteEvent,
    TResult Function(EventModel eventModel, BuildContext context)? editEvent,
    required TResult orElse(),
  }) {
    if (editEvent != null) {
      return editEvent(eventModel, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEvent value) addEvent,
    required TResult Function(_GetEvent value) getEvent,
    required TResult Function(_DeleteEvent value) deleteEvent,
    required TResult Function(_EditEvent value) editEvent,
  }) {
    return editEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEvent value)? addEvent,
    TResult? Function(_GetEvent value)? getEvent,
    TResult? Function(_DeleteEvent value)? deleteEvent,
    TResult? Function(_EditEvent value)? editEvent,
  }) {
    return editEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEvent value)? addEvent,
    TResult Function(_GetEvent value)? getEvent,
    TResult Function(_DeleteEvent value)? deleteEvent,
    TResult Function(_EditEvent value)? editEvent,
    required TResult orElse(),
  }) {
    if (editEvent != null) {
      return editEvent(this);
    }
    return orElse();
  }
}

abstract class _EditEvent implements EventsEvent {
  const factory _EditEvent(
      {required final EventModel eventModel,
      required final BuildContext context}) = _$EditEventImpl;

  EventModel get eventModel;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$EditEventImplCopyWith<_$EditEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventsState {
  bool get loading => throw _privateConstructorUsedError;
  List<EventModel> get events => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventsStateCopyWith<EventsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsStateCopyWith<$Res> {
  factory $EventsStateCopyWith(
          EventsState value, $Res Function(EventsState) then) =
      _$EventsStateCopyWithImpl<$Res, EventsState>;
  @useResult
  $Res call({bool loading, List<EventModel> events});
}

/// @nodoc
class _$EventsStateCopyWithImpl<$Res, $Val extends EventsState>
    implements $EventsStateCopyWith<$Res> {
  _$EventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventStateImplCopyWith<$Res>
    implements $EventsStateCopyWith<$Res> {
  factory _$$EventStateImplCopyWith(
          _$EventStateImpl value, $Res Function(_$EventStateImpl) then) =
      __$$EventStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, List<EventModel> events});
}

/// @nodoc
class __$$EventStateImplCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$EventStateImpl>
    implements _$$EventStateImplCopyWith<$Res> {
  __$$EventStateImplCopyWithImpl(
      _$EventStateImpl _value, $Res Function(_$EventStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? events = null,
  }) {
    return _then(_$EventStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
    ));
  }
}

/// @nodoc

class _$EventStateImpl implements _EventState {
  const _$EventStateImpl(
      {required this.loading, required final List<EventModel> events})
      : _events = events;

  @override
  final bool loading;
  final List<EventModel> _events;
  @override
  List<EventModel> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'EventsState(loading: $loading, events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, loading, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventStateImplCopyWith<_$EventStateImpl> get copyWith =>
      __$$EventStateImplCopyWithImpl<_$EventStateImpl>(this, _$identity);
}

abstract class _EventState implements EventsState {
  const factory _EventState(
      {required final bool loading,
      required final List<EventModel> events}) = _$EventStateImpl;

  @override
  bool get loading;
  @override
  List<EventModel> get events;
  @override
  @JsonKey(ignore: true)
  _$$EventStateImplCopyWith<_$EventStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
