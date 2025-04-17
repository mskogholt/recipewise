part of 'authentication_bloc.dart';

sealed class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

final class SignOutRequested extends AuthenticationEvent {
  const SignOutRequested();
}

final class UserChanged extends AuthenticationEvent {
  final User user;

  const UserChanged(this.user);
}
