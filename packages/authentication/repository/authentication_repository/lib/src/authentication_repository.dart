import 'package:authentication_repository/authentication_repository.dart';
import 'package:authentication_api/authentication_api.dart' as auth_api;

class AuthenticationRepository {
  final auth_api.AuthenticationApi authenticationApi;

  AuthenticationRepository({required this.authenticationApi});

  User convertAuthenticationUser(auth_api.User authenticationUser) {
    final user = User(
      id: authenticationUser.id,
      email: authenticationUser.email,
    );
    return user;
  }

  Stream<User> get user {
    return authenticationApi.user.map(
      convertAuthenticationUser,
    );
  }

  User get currentUser {
    return convertAuthenticationUser(authenticationApi.currentUser);
  }

  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    await authenticationApi.signUp(
      email: email,
      password: password,
    );
  }

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await authenticationApi.signIn(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() async {
    await authenticationApi.signOut();
  }
}
