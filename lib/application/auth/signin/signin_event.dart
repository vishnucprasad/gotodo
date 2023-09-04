part of 'signin_bloc.dart';

@freezed
class SigninEvent with _$SigninEvent {
  const factory SigninEvent.emailAddressChanged(String emailAddress) =
      _EmailAddressChanged;
  const factory SigninEvent.passwordChanged(String password) = _PasswordChanged;
  const factory SigninEvent.obscureTextChanged() = _ObscureTextChanged;
  const factory SigninEvent.signin() = _Signin;
}
