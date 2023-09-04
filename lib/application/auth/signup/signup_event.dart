part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.nameChanged(String name) = _NameChanged;
  const factory SignupEvent.emailAddressChanged(String emailAddress) =
      _EmailAddressChanged;
  const factory SignupEvent.passwordChanged(String password) = _PasswordChanged;
  const factory SignupEvent.obscureTextChanged() = _ObscureTextChanged;
  const factory SignupEvent.signup() = _Signup;
}
