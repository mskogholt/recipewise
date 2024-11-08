import 'package:flutter/material.dart';
import 'package:recipewise/authentication/authentication.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipewise/authentication/sign_up/sign_up.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state.status.isSuccess) {
          Navigator.of(context).pop();
        } else if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.errorMessage ?? 'Sign Up Failure')),
            );
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
                child: Image.asset('assets/images/recipewise-logo.jpg'),
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
            const SizedBox(height: 8),
            SizedBox(
              width: 320,
              child: _PasswordInput(),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 320,
              child: _ConfirmPasswordInput(),
            ),
            const SizedBox(height: 8),
            _SignUpButton(),
          ],
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_emailInput_textField'),
          onChanged: (email) => context.read<SignUpCubit>().emailChanged(email),
          keyboardType: TextInputType.emailAddress,
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
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_passwordInput_textField'),
          onChanged: (password) =>
              context.read<SignUpCubit>().passwordChanged(password),
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

class _ConfirmPasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.confirmedPassword != current.confirmedPassword,
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_confirmedPasswordInput_textField'),
          onChanged: (confirmPassword) => context
              .read<SignUpCubit>()
              .confirmedPasswordChanged(confirmPassword),
          obscureText: true,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: 'Confirm your password.',
            errorText: state.confirmedPassword.isValid()
                ? null
                : 'passwords do not match',
          ),
        );
      },
    );
  }
}

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        return state.status.isInProgress
            ? CircularProgressIndicator(
                color: Theme.of(context).primaryColorLight,
              )
            : SizedBox(
                width: 320,
                child: ElevatedButton(
                  key: const Key('signUpForm_continue_raisedButton'),
                  onPressed: state.isValid
                      ? () => context.read<SignUpCubit>().signUpFormSubmitted()
                      : null,
                  child: const Text('Sign Up'),
                ),
              );
      },
    );
  }
}
