// googleauth_state.dart
part of 'googleauth_cubit.dart';

@immutable
sealed class GoogleauthState {}

final class GoogleauthInitial extends GoogleauthState {}

class AuthLoading extends GoogleauthState {}

class AuthSuccess extends GoogleauthState {
  final User user;

  AuthSuccess(this.user);
}

class AuthError extends GoogleauthState {
  final String message;

  AuthError(this.message);
}

class AuthSignedOut extends GoogleauthState {}
