import 'package:flutter/material.dart';

emailIsValid(String email) {
  if (email.isEmpty) {
    return "Email is missing!";
  }
  if (!email.contains('@')) {
    return "Email should contain @ sign.";
  }
  if (!email.contains(RegExp(r'.*@{1}.*\.{1}.+'))) {
    return "Email seems invalid";
  }
  return null;
}

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      decoration: const InputDecoration(
        hintText: 'Enter your email',
      ),
      validator: (String? value) {
        value = value ?? '';

        return emailIsValid(value);
      },
    );
  }
}
