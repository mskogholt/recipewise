import 'dart:async';

import 'package:recipewise/authentication/data/providers/authentication_api.dart';
import 'package:recipewise/authentication/data/providers/user.dart';

class DummyAuthenticationApi implements AuthenticationApi {
  final StreamController<User> streamer = StreamController<User>();
  User current = User.empty;

  DummyAuthenticationApi() {
    streamer.add(User.empty);
  }

  @override
  User get currentUser => current;

  @override
  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    User user = User(
      id: email,
      email: email,
    );
    current = user;
    streamer.add(user);

    return Future(() {});
  }

  @override
  Future<void> signOut() {
    User user = User.empty;
    current = user;
    streamer.add(user);
    return Future(() {});
  }

  @override
  Future<void> signUp({required String email, required String password}) async {
    await Future.delayed(const Duration(seconds: 2));
    return Future(() {});
  }

  @override
  Stream<User> get user => streamer.stream;
}
