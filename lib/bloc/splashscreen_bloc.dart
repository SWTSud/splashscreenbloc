import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'splashscreen_event.dart';
part 'splashscreen_state.dart';

class SplashscreenBloc extends Bloc<SplashscreenEvent, SplashscreenState> {
  SplashscreenBloc() : super(SplashscreenInitial()) {
    on<SetSplashEvent>((event, emit)  async { 
     emit(SplashscreenLoadingState());
     await Future.delayed(const Duration(seconds: 3));
     emit (SplashScreenLoadedState());
    });

  }
}
