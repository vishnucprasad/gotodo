part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = _AuthCheckRequested;
  const factory AuthEvent.setCredentialsFromSate() = _SetCredentials;
  const factory AuthEvent.nameChanged(String name) = _NameChanged;
  const factory AuthEvent.emailAddressChanged(
    String email,
  ) = _EmailAddressChanged;
  const factory AuthEvent.editUser() = _EditUser;
  const factory AuthEvent.refreshToken(String refreshToken) = _RefreshToken;
  const factory AuthEvent.signout() = _signout;
}
