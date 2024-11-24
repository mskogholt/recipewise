import 'package:recipewise/authentication/data/providers/authentication_api.dart';
import 'package:recipewise/authentication/data/repository/user.dart';

class AuthenticationRepository {
  final AuthenticationApi authenticationApi;

  AuthenticationRepository({required this.authenticationApi});

  Stream<User> get user {
    return authenticationApi.user;
  }

  User get currentUser {
    return authenticationApi.currentUser;
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
