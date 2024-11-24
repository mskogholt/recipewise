import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:recipewise/authentication/data/providers/authentication_api.dart';
import 'package:recipewise/authentication/widgets/email_field.dart';
import 'package:recipewise/authentication/widgets/password_field.dart';
import 'package:recipewise/authentication/data/repository/authentication_repository.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool inProgress = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Form(
              key: formKey,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 400.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: 200.0,
                      ),
                      child: Image.asset('images/logo.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: EmailField(emailController: emailController),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: PasswordField(
                        passwordController: passwordController,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: PasswordField(
                        passwordController: confirmPasswordController,
                        hintText: 'Confirm your password',
                        validation: (String password) {
                          if (password != passwordController.text) {
                            return 'The passwords don\'t match';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: inProgress
                          ? CircularProgressIndicator(
                              color: Theme.of(context).primaryColorLight,
                            )
                          : SizedBox(
                              width: double.infinity,
                              child: FilledButton(
                                onPressed: () async {
                                  bool valid =
                                      formKey.currentState?.validate() ?? false;
                                  if (valid) {
                                    try {
                                      setState(() {
                                        inProgress = true;
                                      });
                                      await context
                                          .read<AuthenticationRepository>()
                                          .signUp(
                                            email: emailController.text,
                                            password: passwordController.text,
                                          );
                                      if (context.mounted) {
                                        Navigator.pop(context);
                                      }
                                    } on SignInWithEmailAndPasswordFailure catch (error) {
                                      if (context.mounted) {
                                        ScaffoldMessenger.of(context)
                                          ..hideCurrentSnackBar()
                                          ..showSnackBar(
                                            SnackBar(
                                              content: Text(error.message),
                                            ),
                                          );
                                      }
                                    } catch (error) {
                                      if (context.mounted) {
                                        ScaffoldMessenger.of(context)
                                          ..hideCurrentSnackBar()
                                          ..showSnackBar(
                                            SnackBar(
                                              content: Text(error.toString()),
                                            ),
                                          );
                                      }
                                    }
                                  }
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 20.0),
                                  child: Text('Sign Up'),
                                ),
                              ),
                            ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: RichText(
                          text: TextSpan(
                              text: 'Already have an account? ',
                              style: Theme.of(context).textTheme.labelLarge,
                              children: [
                                TextSpan(
                                  text: 'Sign in!',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                ),
                              ]),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
