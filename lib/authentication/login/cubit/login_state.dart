part of 'login_cubit.dart';

final class LoginState extends Equatable {
  const LoginState({
    this.email = const Email(email: ''),
    this.password = const Password(password: ''),
    this.status = FormSubmissionStatus.initial,
    this.isValid = false,
    this.errorMessage,
  });

  final Email email;
  final Password password;
  final FormSubmissionStatus status;
  final bool isValid;
  final String? errorMessage;

  @override
  List<Object?> get props => [email, password, status, isValid, errorMessage];

  LoginState copyWith({
    Email? email,
    Password? password,
    FormSubmissionStatus? status,
    bool? isValid,
    String? errorMessage,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
      isValid: isValid ?? this.isValid,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
