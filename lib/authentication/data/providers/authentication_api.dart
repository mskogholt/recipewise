import 'package:recipewise/authentication/data/providers/user.dart';

class SignUpWithEmailAndPasswordFailure implements Exception {
  final String message;

  const SignUpWithEmailAndPasswordFailure([
    this.message = 'An unknown exception occurred.',
  ]);
}

class SignInWithEmailAndPasswordFailure implements Exception {
  /// Thrown during the login process if a failure occurs.
  /// https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/signInWithEmailAndPassword.html
  final String message;

  const SignInWithEmailAndPasswordFailure([
    this.message = 'An unknown exception occurred.',
  ]);
}

class SignOutFailure implements Exception {}

abstract interface class AuthenticationApi {
  Stream<User> get user;

  User get currentUser;

  Future<void> signUp({
    required String email,
    required String password,
  });

  Future<void> signIn({
    required String email,
    required String password,
  });

  Future<void> signOut();
}
