part of 'signin_bloc.dart';

@freezed
class SigninState with _$SigninState {
  const factory SigninState({
    required bool isSigning,
    required bool isUpdating,
    required SigninCredentials credentials,
    required Tokens? tokens,
    required bool hidePassword,
    required bool showErrorMessages,
    required Option<Either<Failure, Tokens>> failureOrSuccessOption,
  }) = _SigninState;

  factory SigninState.initial() {
    return SigninState(
      isSigning: false,
      isUpdating: false,
      credentials: SigninCredentials.empty(),
      tokens: null,
      hidePassword: true,
      showErrorMessages: false,
      failureOrSuccessOption: none(),
    );
  }
}
