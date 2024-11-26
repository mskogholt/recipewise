// ignore_for_file: public_member_api_docs

import 'dart:async';

import 'package:authentication_api/authentication_api.dart';

class DummyAuthenticationApi implements AuthenticationApi {
  DummyAuthenticationApi() {
    streamer.add(User.empty);
  }
  final StreamController<User> streamer = StreamController<User>();
  User current = User.empty;

  @override
  User get currentUser => current;

  @override
  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 2), () {});
    final user = User(
      id: email,
      email: email,
    );
    current = user;
    streamer.add(user);

    return Future(() {});
  }

  @override
  Future<void> signOut() {
    const user = User.empty;
    current = user;
    streamer.add(user);
    return Future(() {});
  }

  @override
  Future<void> signUp({required String email, required String password}) async {
    await Future.delayed(const Duration(seconds: 2), () {});
    return Future(() {});
  }

  @override
  Stream<User> get user => streamer.stream;
}
