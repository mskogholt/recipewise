import 'package:recipewise/authentication/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipewise/authentication/sign_up/sign_up.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SignUpPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Sign Up'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: BlocProvider<SignUpCubit>(
          create: (_) => SignUpCubit(context.read<AuthenticationRepository>()),
          child: const SignUpForm(),
        ),
      ),
    );
  }
}
