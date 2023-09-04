// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SigninCredentials {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SigninCredentialsCopyWith<SigninCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninCredentialsCopyWith<$Res> {
  factory $SigninCredentialsCopyWith(
          SigninCredentials value, $Res Function(SigninCredentials) then) =
      _$SigninCredentialsCopyWithImpl<$Res, SigninCredentials>;
  @useResult
  $Res call({EmailAddress emailAddress, Password password});
}

/// @nodoc
class _$SigninCredentialsCopyWithImpl<$Res, $Val extends SigninCredentials>
    implements $SigninCredentialsCopyWith<$Res> {
  _$SigninCredentialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SigninCredentialsCopyWith<$Res>
    implements $SigninCredentialsCopyWith<$Res> {
  factory _$$_SigninCredentialsCopyWith(_$_SigninCredentials value,
          $Res Function(_$_SigninCredentials) then) =
      __$$_SigninCredentialsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmailAddress emailAddress, Password password});
}

/// @nodoc
class __$$_SigninCredentialsCopyWithImpl<$Res>
    extends _$SigninCredentialsCopyWithImpl<$Res, _$_SigninCredentials>
    implements _$$_SigninCredentialsCopyWith<$Res> {
  __$$_SigninCredentialsCopyWithImpl(
      _$_SigninCredentials _value, $Res Function(_$_SigninCredentials) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_$_SigninCredentials(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$_SigninCredentials extends _SigninCredentials {
  const _$_SigninCredentials(
      {required this.emailAddress, required this.password})
      : super._();

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;

  @override
  String toString() {
    return 'SigninCredentials(emailAddress: $emailAddress, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SigninCredentials &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SigninCredentialsCopyWith<_$_SigninCredentials> get copyWith =>
      __$$_SigninCredentialsCopyWithImpl<_$_SigninCredentials>(
          this, _$identity);
}

abstract class _SigninCredentials extends SigninCredentials {
  const factory _SigninCredentials(
      {required final EmailAddress emailAddress,
      required final Password password}) = _$_SigninCredentials;
  const _SigninCredentials._() : super._();

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$_SigninCredentialsCopyWith<_$_SigninCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}
