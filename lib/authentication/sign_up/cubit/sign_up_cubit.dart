import 'package:recipewise/authentication/authentication.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._authenticationRepository) : super(const SignUpState());

  final AuthenticationRepository _authenticationRepository;

  void emailChanged(String value) {
    final email = Email(email: value);
    emit(
      state.copyWith(
        email: email,
        isValid: FormValidator(
          email: email,
          password: state.password,
          confirmedPassword: state.confirmedPassword,
        ).validate(),
      ),
    );
  }

  void passwordChanged(String value) {
    final password = Password(password: value);
    emit(
      state.copyWith(
        password: password,
        isValid: FormValidator(
          email: state.email,
          password: password,
          confirmedPassword: state.confirmedPassword,
        ).validate(),
      ),
    );
  }

  void confirmedPasswordChanged(String value) {
    final bool isMatch = Password(password: value) == state.password;
    final confirmedPassword = Password(password: value, isMatch: isMatch);
    emit(
      state.copyWith(
        confirmedPassword: confirmedPassword,
        isValid: FormValidator(
          email: state.email,
          password: state.password,
          confirmedPassword: confirmedPassword,
        ).validate(),
      ),
    );
  }

  Future<void> signUpFormSubmitted() async {
    if (!state.isValid) return;
    emit(state.copyWith(status: FormSubmissionStatus.inProgress));
    try {
      await _authenticationRepository.signUp(
        email: state.email.email,
        password: state.password.password,
      );
      emit(state.copyWith(status: FormSubmissionStatus.success));
    } on SignUpWithEmailAndPasswordFailure catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.message,
          status: FormSubmissionStatus.failure,
        ),
      );
    } catch (_) {
      emit(state.copyWith(status: FormSubmissionStatus.failure));
    }
  }
}
