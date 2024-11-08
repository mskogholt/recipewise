import 'package:flutter/material.dart';
import 'package:recipewise/authentication/authentication.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipewise/authentication/login/login.dart';
import 'package:recipewise/authentication/sign_up/sign_up.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.errorMessage ?? 'Authentication Failure'),
              ),
            );
          context.read<LoginCubit>().resetFailure();
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: SizedBox(
                width: 320.0,
                child: Image.asset('images/recipewise-logo.jpg'),
              ),
            ),
            const SizedBox(
              height: 48.0,
              width: 100000,
            ),
            SizedBox(
              width: 320,
              child: _EmailInput(),
            ),
            const SizedBox(
              height: 8.0,
            ),
            SizedBox(
              width: 320,
              child: _PasswordInput(),
            ),
            const SizedBox(
              height: 24.0,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 320,
              ),
              child: _LoginButton(),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 320,
              child: _GoogleLoginButton(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: SizedBox(
                width: 320,
                child: _SignUpButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_emailInput_textField'),
          onChanged: (email) => context.read<LoginCubit>().emailChanged(email),
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: 'Enter your email.',
            errorText: state.email.isValid() ? null : 'invalid email',
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_passwordInput_textField'),
          onChanged: (password) =>
              context.read<LoginCubit>().passwordChanged(password),
          obscureText: true,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: 'Enter your password.',
            errorText: state.password.isValid() ? null : 'invalid password',
          ),
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return state.status.isInProgress
            ? CircularProgressIndicator(
                color: Theme.of(context).primaryColorLight,
              )
            : SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  key: const Key('loginForm_continue_raisedButton'),
                  onPressed: state.isValid
                      ? () => context.read<LoginCubit>().logInWithCredentials()
                      : null, // Ensures button is 'disabled' until valid input given
                  child: const Text('Log in'),
                ),
              );
      },
    );
  }
}

class _GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      key: const Key('loginForm_googleLogin_raisedButton'),
      label: const Text(
        'Sign in with Google',
      ),
      icon: const Icon(
        FontAwesomeIcons.google,
        color: Colors.white,
        size: 16,
      ),
      onPressed: () => context.read<LoginCubit>().logInWithGoogle(),
    );
  }
}

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextButton(
      key: const Key('loginForm_createAccount_flatButton'),
      onPressed: () => Navigator.of(context).push<void>(SignUpPage.route()),
      child: Text(
        'CREATE ACCOUNT',
        style: TextStyle(color: theme.primaryColor),
      ),
    );
  }
}
