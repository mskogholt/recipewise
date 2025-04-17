import 'package:flutter/material.dart';

passwordIsValid(String password) {
  if (password.isEmpty) {
    return "Password is missing!";
  }
  if (password.length < 12) {
    return "Password should be at least 12 characters";
  }
  if (password.startsWith("123456")) {
    return "Seriously? Don't use 123456";
  }
  return null;
}

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
    required this.passwordController,
    this.validation = passwordIsValid,
    this.hintText = 'Enter your password',
  });

  final TextEditingController passwordController;
  final String hintText;
  final Function validation;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      controller: passwordController,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      validator: (String? value) {
        value = value ?? '';
        return validation(value);
      },
    );
  }
}
