part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required bool isAuthenticating,
    required bool isAuthenticated,
    required bool showError,
    required bool showValidationError,
    required bool hideCurrentPassword,
    required bool hideNewPassword,
    required bool hideConfirmationPassword,
    required String? errorMessage,
    required Credentials credentials,
    required Passwords passwords,
    required User? user,
    required Option<Either<Failure, dynamic>>? failureOrSuccessOption,
  }) = _AuthState;

  factory AuthState.initial() {
    return AuthState(
      isLoading: false,
      isAuthenticating: false,
      isAuthenticated: false,
      showError: false,
      showValidationError: false,
      hideCurrentPassword: true,
      hideNewPassword: true,
      hideConfirmationPassword: true,
      errorMessage: null,
      credentials: Credentials.empty(),
      passwords: Passwords.empty(),
      user: null,
      failureOrSuccessOption: none(),
    );
  }
}
