part of 'splash_bloc.dart';

abstract class SplashState {
  const SplashState();
}

class SplashInitial extends SplashState {}

class SplashCompleted extends SplashState {}