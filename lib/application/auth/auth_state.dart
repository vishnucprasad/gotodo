part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required bool isAuthenticated,
    required bool showError,
    required bool showValidationError,
    required String? errorMessage,
    required Credentials credentials,
    required User? user,
    required Option<Either<Failure, dynamic>>? failureOrSuccessOption,
  }) = _AuthState;

  factory AuthState.initial() {
    return AuthState(
      isLoading: false,
      isAuthenticated: false,
      showError: false,
      showValidationError: false,
      errorMessage: null,
      credentials: Credentials.empty(),
      user: null,
      failureOrSuccessOption: none(),
    );
  }
}
