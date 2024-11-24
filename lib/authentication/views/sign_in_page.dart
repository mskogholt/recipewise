import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:recipewise/authentication/data/providers/authentication_api.dart';
import 'package:recipewise/authentication/views/sign_up_page.dart';
import 'package:recipewise/authentication/widgets/email_field.dart';
import 'package:recipewise/authentication/widgets/password_field.dart';
import 'package:recipewise/authentication/data/repository/authentication_repository.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool inProgress = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      child:
                          PasswordField(passwordController: passwordController),
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
                                          .signInWithEmailAndPassword(
                                            email: emailController.text,
                                            password: passwordController.text,
                                          );
                                      setState(() {
                                        inProgress = false;
                                      });
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
                                  child: Text('Sign In'),
                                ),
                              ),
                            ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SignUpPage();
                          }));
                        },
                        child: RichText(
                          text: TextSpan(
                              text: 'Don\'t have an account? ',
                              style: Theme.of(context).textTheme.labelLarge,
                              children: [
                                TextSpan(
                                  text: 'Sign up!',
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
