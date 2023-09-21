part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated({
    required User user,
    bool? showValidationError,
    Credentials? credentials,
    bool? isLoading,
    Option<Either<Failure, dynamic>>? failureOrSuccessOption,
  }) = _Authenticated;
  const factory AuthState.unAuthenticated() = _UnAuthenticated;
  const factory AuthState.errorState({
    required String errorMessage,
  }) = _ErrorState;
}
