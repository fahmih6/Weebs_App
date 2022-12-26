import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_screen_event.dart';
part 'splash_screen_state.dart';
part 'splash_screen_bloc.freezed.dart';

class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  SplashScreenBloc() : super(const _Initial()) {
    /// Started
    on<_Started>((event, emit) {
      emit(const _LoggedIn());
    });
  }
}
