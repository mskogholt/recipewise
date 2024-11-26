import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  //
  final AuthenticationRepository authenticationRepository;
  late final StreamSubscription<User> userSubscription;

  AuthenticationBloc({required this.authenticationRepository})
      : super(
          authenticationRepository.currentUser.isEmpty
              ? const AuthenticationState.unauthenticated()
              : AuthenticationState.authenticated(
                  authenticationRepository.currentUser,
                ),
        ) {
    //
    userSubscription = authenticationRepository.user.listen(
      (user) => add(UserChanged(user)),
    );

    on<UserChanged>(
      (event, emit) {
        emit(
          event.user.isEmpty
              ? const AuthenticationState.unauthenticated()
              : AuthenticationState.authenticated(event.user),
        );
      },
    );

    on<SignOutRequested>(
      (event, emit) {
        // Signing out updates the stream and triggers an user changed event.
        // This is why nothing needs to be emitted here.
        authenticationRepository.signOut();
      },
    );
  }

  @override
  Future<void> close() {
    userSubscription.cancel();
    return super.close();
  }
}
