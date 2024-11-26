import 'package:authentication_api/authentication_api.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
// import 'package:firebase_auth/firebase_auth.dart' as firebaseUser show User;

class FirebaseSignUpWithEmailAndPasswordFailure
    extends SignUpWithEmailAndPasswordFailure {
  /// Thrown during the sign up process if a failure occurs.
  /// https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/createUserWithEmailAndPassword.html

  const FirebaseSignUpWithEmailAndPasswordFailure([
    super.message = 'An unknown exception occurred.',
  ]);

  factory FirebaseSignUpWithEmailAndPasswordFailure.fromCode(String code) {
    switch (code) {
      case 'email-already-in-use':
        return const FirebaseSignUpWithEmailAndPasswordFailure(
          'An account already exists for that email.',
        );
      case 'invalid-email':
        return const FirebaseSignUpWithEmailAndPasswordFailure(
          'Email is not valid or badly formatted.',
        );
      case 'operation-not-allowed':
        return const FirebaseSignUpWithEmailAndPasswordFailure(
          'Operation is not allowed.  Please contact support.',
        );
      case 'weak-password':
        return const FirebaseSignUpWithEmailAndPasswordFailure(
          'Please enter a stronger password.',
        );
      default:
        return FirebaseSignUpWithEmailAndPasswordFailure(
          'Unknown Exception occurred with code $code',
        );
    }
  }
}

class FirebaseSignInWithEmailAndPasswordFailure
    extends SignInWithEmailAndPasswordFailure {
  /// Thrown during the login process if a failure occurs.
  /// https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/signInWithEmailAndPassword.html

  const FirebaseSignInWithEmailAndPasswordFailure([
    super.message = 'An unknown exception occurred.',
  ]);

  factory FirebaseSignInWithEmailAndPasswordFailure.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const FirebaseSignInWithEmailAndPasswordFailure(
          'Email is not valid or badly formatted.',
        );
      case 'user-disabled':
        return const FirebaseSignInWithEmailAndPasswordFailure(
          'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return const FirebaseSignInWithEmailAndPasswordFailure(
          'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return const FirebaseSignInWithEmailAndPasswordFailure(
          'Incorrect password, please try again.',
        );
      default:
        return FirebaseSignInWithEmailAndPasswordFailure(
          'Unknown Excpetion occurred with code $code',
        );
    }
  }
}

class FirebaseAuthenticationApi implements AuthenticationApi {
  final firebase_auth.FirebaseAuth _firebaseAuth;

  FirebaseAuthenticationApi({
    firebase_auth.FirebaseAuth? firebaseAuth,
  }) : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance;

  User convertFirebaseUser(firebase_auth.User? firebaseUser) {
    if (firebaseUser == null) {
      return User.empty;
    } else {
      final user = User(
        id: firebaseUser.uid,
        email: firebaseUser.email,
      );
      return user;
    }
  }

  @override
  Stream<User> get user {
    return _firebaseAuth.authStateChanges().map(
          convertFirebaseUser,
        );
  }

  @override
  User get currentUser {
    return convertFirebaseUser(_firebaseAuth.currentUser);
  }

  @override
  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw FirebaseSignInWithEmailAndPasswordFailure.fromCode(e.code);
    } catch (_) {
      throw const FirebaseSignInWithEmailAndPasswordFailure();
    }
  }

  @override
  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw FirebaseSignUpWithEmailAndPasswordFailure.fromCode(e.code);
    } catch (_) {
      throw const FirebaseSignUpWithEmailAndPasswordFailure();
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (_) {
      throw SignOutFailure();
    }
  }
}
