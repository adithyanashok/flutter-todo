import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/controller/auth/auth.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<_Login>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await loginUser(event.email, event.password, event.context);
      emit(state.copyWith(isLoading: false));
    });

    on<_Signup>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await registerUser(event.email, event.password, event.context);
      emit(state.copyWith(isLoading: false));
    });
  }
}
