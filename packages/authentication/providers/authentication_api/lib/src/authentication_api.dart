import 'package:authentication_api/authentication_api.dart';

/// An exception when signing up fails.
class SignUpWithEmailAndPasswordFailure implements Exception {
  /// Create an exception with [SignUpWithEmailAndPasswordFailure.new]
  ///
  /// Use [message] to pass in a custom message about the exception
  const SignUpWithEmailAndPasswordFailure([
    this.message = 'An unknown exception occurred.',
  ]);

  /// The [message] describing what went wrong
  final String message;
}

/// An exception when signing in fails.
class SignInWithEmailAndPasswordFailure implements Exception {
  /// Create an exception with [SignInWithEmailAndPasswordFailure.new]
  ///
  /// Use [message] to pass in a custom message about the exception
  const SignInWithEmailAndPasswordFailure([
    this.message = 'An unknown exception occurred.',
  ]);

  /// The [message] describing what went wrong
  final String message;
}

/// An exception when signing out fails
class SignOutFailure implements Exception {}

/// An API to authenticate users
///
/// Used to [signUp], [signIn] and [signOut]
abstract interface class AuthenticationApi {
  /// A stream of [User] that are authenticated.
  ///
  /// Updates whenever the authentication state changes
  Stream<User> get user;

  /// The currently authenticated [User]
  User get currentUser;

  /// Signs up
  Future<void> signUp({
    required String email,
    required String password,
  });

  /// Signs in
  Future<void> signIn({
    required String email,
    required String password,
  });

  /// Signs the currently authenticated [User] out.
  Future<void> signOut();
}
