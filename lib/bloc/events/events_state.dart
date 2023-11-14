part of 'events_bloc.dart';

@freezed
class EventsState with _$EventsState {
  const factory EventsState({
    required bool loading,
    required List<EventModel> events,
  }) = _EventState;
  factory EventsState.initial() {
    return const EventsState(loading: false, events: []);
  }
}
