part of 'events_bloc.dart';

@freezed
class EventsEvent with _$EventsEvent {
  const factory EventsEvent.addEvent(
      {required EventModel eventModel,
      required BuildContext context}) = _AddEvent;

  const factory EventsEvent.getEvent({required String userId}) = _GetEvent;
}
