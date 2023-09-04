part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required bool isSigning,
    required bool isUpdating,
    required SignupCredentials credentials,
    required bool hidePassword,
    required bool showErrorMessages,
    required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _SignupState;

  factory SignupState.initial() {
    return SignupState(
      isSigning: false,
      isUpdating: false,
      hidePassword: true,
      credentials: SignupCredentials.empty(),
      showErrorMessages: false,
      failureOrSuccessOption: none(),
    );
  }
}
