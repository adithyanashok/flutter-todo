import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/controller/events/events.dart';
import 'package:todo/model/events/events.dart';

part 'events_event.dart';
part 'events_state.dart';
part 'events_bloc.freezed.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  EventsBloc() : super(EventsState.initial()) {
    on<_AddEvent>((event, emit) async {
      emit(state.copyWith(loading: true));

      await EventController.addToTodo(event.eventModel, event.context);
      emit(state.copyWith(loading: false));
    });

    on<_GetEvent>((event, emit) async {
      emit(state.copyWith(loading: true));

      final events = await EventController.getEvents(event.userId);
      emit(state.copyWith(loading: false, events: events));
    });
  }
}
