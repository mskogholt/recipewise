import 'package:recipewise/authentication/authentication.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authenticationRepository) : super(const LoginState());

  final AuthenticationRepository _authenticationRepository;

  void emailChanged(String value) {
    final email = Email(email: value);
    emit(
      state.copyWith(
          email: email,
          isValid:
              FormValidator(email: email, password: state.password).validate()),
    );
  }

  void passwordChanged(String value) {
    final password = Password(password: value);
    emit(
      state.copyWith(
        password: password,
        isValid:
            FormValidator(email: state.email, password: password).validate(),
      ),
    );
  }

  Future<void> logInWithCredentials() async {
    if (!state.isValid) return;
    emit(state.copyWith(status: FormSubmissionStatus.inProgress));
    try {
      await _authenticationRepository.logInWithEmailAndPassword(
        email: state.email.email,
        password: state.password.password,
      );
      emit(state.copyWith(status: FormSubmissionStatus.success));
    } on LogInWithEmailAndPasswordFailure catch (e) {
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

  Future<void> logInWithGoogle() async {
    emit(state.copyWith(status: FormSubmissionStatus.inProgress));
    try {
      await _authenticationRepository.logInWithGoogle();
      emit(state.copyWith(status: FormSubmissionStatus.success));
    } on LogInWithGoogleFailure catch (e) {
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

  void resetFailure() {
    emit(state.copyWith(status: FormSubmissionStatus.initial));
  }
}
