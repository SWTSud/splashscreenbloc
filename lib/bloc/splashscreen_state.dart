part of 'splashscreen_bloc.dart';

@immutable
abstract class SplashscreenState {}

class SplashscreenInitial extends SplashscreenState {}

class SplashscreenLoadingState extends SplashscreenState {}

class SplashScreenLoadedState extends SplashscreenState{}