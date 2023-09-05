// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SigninEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() obscureTextChanged,
    required TResult Function() signin,
    required TResult Function() saveTokens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? obscureTextChanged,
    TResult? Function()? signin,
    TResult? Function()? saveTokens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? obscureTextChanged,
    TResult Function()? signin,
    TResult Function()? saveTokens,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ObscureTextChanged value) obscureTextChanged,
    required TResult Function(_Signin value) signin,
    required TResult Function(_SaveTokens value) saveTokens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ObscureTextChanged value)? obscureTextChanged,
    TResult? Function(_Signin value)? signin,
    TResult? Function(_SaveTokens value)? saveTokens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ObscureTextChanged value)? obscureTextChanged,
    TResult Function(_Signin value)? signin,
    TResult Function(_SaveTokens value)? saveTokens,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninEventCopyWith<$Res> {
  factory $SigninEventCopyWith(
          SigninEvent value, $Res Function(SigninEvent) then) =
      _$SigninEventCopyWithImpl<$Res, SigninEvent>;
}

/// @nodoc
class _$SigninEventCopyWithImpl<$Res, $Val extends SigninEvent>
    implements $SigninEventCopyWith<$Res> {
  _$SigninEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EmailAddressChangedCopyWith<$Res> {
  factory _$$_EmailAddressChangedCopyWith(_$_EmailAddressChanged value,
          $Res Function(_$_EmailAddressChanged) then) =
      __$$_EmailAddressChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailAddress});
}

/// @nodoc
class __$$_EmailAddressChangedCopyWithImpl<$Res>
    extends _$SigninEventCopyWithImpl<$Res, _$_EmailAddressChanged>
    implements _$$_EmailAddressChangedCopyWith<$Res> {
  __$$_EmailAddressChangedCopyWithImpl(_$_EmailAddressChanged _value,
      $Res Function(_$_EmailAddressChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
  }) {
    return _then(_$_EmailAddressChanged(
      null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailAddressChanged implements _EmailAddressChanged {
  const _$_EmailAddressChanged(this.emailAddress);

  @override
  final String emailAddress;

  @override
  String toString() {
    return 'SigninEvent.emailAddressChanged(emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailAddressChanged &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailAddressChangedCopyWith<_$_EmailAddressChanged> get copyWith =>
      __$$_EmailAddressChangedCopyWithImpl<_$_EmailAddressChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() obscureTextChanged,
    required TResult Function() signin,
    required TResult Function() saveTokens,
  }) {
    return emailAddressChanged(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? obscureTextChanged,
    TResult? Function()? signin,
    TResult? Function()? saveTokens,
  }) {
    return emailAddressChanged?.call(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? obscureTextChanged,
    TResult Function()? signin,
    TResult Function()? saveTokens,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ObscureTextChanged value) obscureTextChanged,
    required TResult Function(_Signin value) signin,
    required TResult Function(_SaveTokens value) saveTokens,
  }) {
    return emailAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ObscureTextChanged value)? obscureTextChanged,
    TResult? Function(_Signin value)? signin,
    TResult? Function(_SaveTokens value)? saveTokens,
  }) {
    return emailAddressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ObscureTextChanged value)? obscureTextChanged,
    TResult Function(_Signin value)? signin,
    TResult Function(_SaveTokens value)? saveTokens,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailAddressChanged implements SigninEvent {
  const factory _EmailAddressChanged(final String emailAddress) =
      _$_EmailAddressChanged;

  String get emailAddress;
  @JsonKey(ignore: true)
  _$$_EmailAddressChangedCopyWith<_$_EmailAddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$SigninEventCopyWithImpl<$Res, _$_PasswordChanged>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_PasswordChanged(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SigninEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() obscureTextChanged,
    required TResult Function() signin,
    required TResult Function() saveTokens,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? obscureTextChanged,
    TResult? Function()? signin,
    TResult? Function()? saveTokens,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? obscureTextChanged,
    TResult Function()? signin,
    TResult Function()? saveTokens,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ObscureTextChanged value) obscureTextChanged,
    required TResult Function(_Signin value) signin,
    required TResult Function(_SaveTokens value) saveTokens,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ObscureTextChanged value)? obscureTextChanged,
    TResult? Function(_Signin value)? signin,
    TResult? Function(_SaveTokens value)? saveTokens,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ObscureTextChanged value)? obscureTextChanged,
    TResult Function(_Signin value)? signin,
    TResult Function(_SaveTokens value)? saveTokens,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SigninEvent {
  const factory _PasswordChanged(final String password) = _$_PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ObscureTextChangedCopyWith<$Res> {
  factory _$$_ObscureTextChangedCopyWith(_$_ObscureTextChanged value,
          $Res Function(_$_ObscureTextChanged) then) =
      __$$_ObscureTextChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ObscureTextChangedCopyWithImpl<$Res>
    extends _$SigninEventCopyWithImpl<$Res, _$_ObscureTextChanged>
    implements _$$_ObscureTextChangedCopyWith<$Res> {
  __$$_ObscureTextChangedCopyWithImpl(
      _$_ObscureTextChanged _value, $Res Function(_$_ObscureTextChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ObscureTextChanged implements _ObscureTextChanged {
  const _$_ObscureTextChanged();

  @override
  String toString() {
    return 'SigninEvent.obscureTextChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ObscureTextChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() obscureTextChanged,
    required TResult Function() signin,
    required TResult Function() saveTokens,
  }) {
    return obscureTextChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? obscureTextChanged,
    TResult? Function()? signin,
    TResult? Function()? saveTokens,
  }) {
    return obscureTextChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? obscureTextChanged,
    TResult Function()? signin,
    TResult Function()? saveTokens,
    required TResult orElse(),
  }) {
    if (obscureTextChanged != null) {
      return obscureTextChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ObscureTextChanged value) obscureTextChanged,
    required TResult Function(_Signin value) signin,
    required TResult Function(_SaveTokens value) saveTokens,
  }) {
    return obscureTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ObscureTextChanged value)? obscureTextChanged,
    TResult? Function(_Signin value)? signin,
    TResult? Function(_SaveTokens value)? saveTokens,
  }) {
    return obscureTextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ObscureTextChanged value)? obscureTextChanged,
    TResult Function(_Signin value)? signin,
    TResult Function(_SaveTokens value)? saveTokens,
    required TResult orElse(),
  }) {
    if (obscureTextChanged != null) {
      return obscureTextChanged(this);
    }
    return orElse();
  }
}

abstract class _ObscureTextChanged implements SigninEvent {
  const factory _ObscureTextChanged() = _$_ObscureTextChanged;
}

/// @nodoc
abstract class _$$_SigninCopyWith<$Res> {
  factory _$$_SigninCopyWith(_$_Signin value, $Res Function(_$_Signin) then) =
      __$$_SigninCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SigninCopyWithImpl<$Res>
    extends _$SigninEventCopyWithImpl<$Res, _$_Signin>
    implements _$$_SigninCopyWith<$Res> {
  __$$_SigninCopyWithImpl(_$_Signin _value, $Res Function(_$_Signin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Signin implements _Signin {
  const _$_Signin();

  @override
  String toString() {
    return 'SigninEvent.signin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Signin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() obscureTextChanged,
    required TResult Function() signin,
    required TResult Function() saveTokens,
  }) {
    return signin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? obscureTextChanged,
    TResult? Function()? signin,
    TResult? Function()? saveTokens,
  }) {
    return signin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? obscureTextChanged,
    TResult Function()? signin,
    TResult Function()? saveTokens,
    required TResult orElse(),
  }) {
    if (signin != null) {
      return signin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ObscureTextChanged value) obscureTextChanged,
    required TResult Function(_Signin value) signin,
    required TResult Function(_SaveTokens value) saveTokens,
  }) {
    return signin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ObscureTextChanged value)? obscureTextChanged,
    TResult? Function(_Signin value)? signin,
    TResult? Function(_SaveTokens value)? saveTokens,
  }) {
    return signin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ObscureTextChanged value)? obscureTextChanged,
    TResult Function(_Signin value)? signin,
    TResult Function(_SaveTokens value)? saveTokens,
    required TResult orElse(),
  }) {
    if (signin != null) {
      return signin(this);
    }
    return orElse();
  }
}

abstract class _Signin implements SigninEvent {
  const factory _Signin() = _$_Signin;
}

/// @nodoc
abstract class _$$_SaveTokensCopyWith<$Res> {
  factory _$$_SaveTokensCopyWith(
          _$_SaveTokens value, $Res Function(_$_SaveTokens) then) =
      __$$_SaveTokensCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveTokensCopyWithImpl<$Res>
    extends _$SigninEventCopyWithImpl<$Res, _$_SaveTokens>
    implements _$$_SaveTokensCopyWith<$Res> {
  __$$_SaveTokensCopyWithImpl(
      _$_SaveTokens _value, $Res Function(_$_SaveTokens) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SaveTokens implements _SaveTokens {
  const _$_SaveTokens();

  @override
  String toString() {
    return 'SigninEvent.saveTokens()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SaveTokens);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() obscureTextChanged,
    required TResult Function() signin,
    required TResult Function() saveTokens,
  }) {
    return saveTokens();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? obscureTextChanged,
    TResult? Function()? signin,
    TResult? Function()? saveTokens,
  }) {
    return saveTokens?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? obscureTextChanged,
    TResult Function()? signin,
    TResult Function()? saveTokens,
    required TResult orElse(),
  }) {
    if (saveTokens != null) {
      return saveTokens();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ObscureTextChanged value) obscureTextChanged,
    required TResult Function(_Signin value) signin,
    required TResult Function(_SaveTokens value) saveTokens,
  }) {
    return saveTokens(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ObscureTextChanged value)? obscureTextChanged,
    TResult? Function(_Signin value)? signin,
    TResult? Function(_SaveTokens value)? saveTokens,
  }) {
    return saveTokens?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ObscureTextChanged value)? obscureTextChanged,
    TResult Function(_Signin value)? signin,
    TResult Function(_SaveTokens value)? saveTokens,
    required TResult orElse(),
  }) {
    if (saveTokens != null) {
      return saveTokens(this);
    }
    return orElse();
  }
}

abstract class _SaveTokens implements SigninEvent {
  const factory _SaveTokens() = _$_SaveTokens;
}

/// @nodoc
mixin _$SigninState {
  bool get isSigning => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;
  SigninCredentials get credentials => throw _privateConstructorUsedError;
  Tokens? get tokens => throw _privateConstructorUsedError;
  bool get hidePassword => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<Failure, Tokens>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SigninStateCopyWith<SigninState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninStateCopyWith<$Res> {
  factory $SigninStateCopyWith(
          SigninState value, $Res Function(SigninState) then) =
      _$SigninStateCopyWithImpl<$Res, SigninState>;
  @useResult
  $Res call(
      {bool isSigning,
      bool isUpdating,
      SigninCredentials credentials,
      Tokens? tokens,
      bool hidePassword,
      bool showErrorMessages,
      Option<Either<Failure, Tokens>> failureOrSuccessOption});

  $SigninCredentialsCopyWith<$Res> get credentials;
  $TokensCopyWith<$Res>? get tokens;
}

/// @nodoc
class _$SigninStateCopyWithImpl<$Res, $Val extends SigninState>
    implements $SigninStateCopyWith<$Res> {
  _$SigninStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSigning = null,
    Object? isUpdating = null,
    Object? credentials = null,
    Object? tokens = freezed,
    Object? hidePassword = null,
    Object? showErrorMessages = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isSigning: null == isSigning
          ? _value.isSigning
          : isSigning // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
      credentials: null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as SigninCredentials,
      tokens: freezed == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as Tokens?,
      hidePassword: null == hidePassword
          ? _value.hidePassword
          : hidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Tokens>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SigninCredentialsCopyWith<$Res> get credentials {
    return $SigninCredentialsCopyWith<$Res>(_value.credentials, (value) {
      return _then(_value.copyWith(credentials: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokensCopyWith<$Res>? get tokens {
    if (_value.tokens == null) {
      return null;
    }

    return $TokensCopyWith<$Res>(_value.tokens!, (value) {
      return _then(_value.copyWith(tokens: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SigninStateCopyWith<$Res>
    implements $SigninStateCopyWith<$Res> {
  factory _$$_SigninStateCopyWith(
          _$_SigninState value, $Res Function(_$_SigninState) then) =
      __$$_SigninStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSigning,
      bool isUpdating,
      SigninCredentials credentials,
      Tokens? tokens,
      bool hidePassword,
      bool showErrorMessages,
      Option<Either<Failure, Tokens>> failureOrSuccessOption});

  @override
  $SigninCredentialsCopyWith<$Res> get credentials;
  @override
  $TokensCopyWith<$Res>? get tokens;
}

/// @nodoc
class __$$_SigninStateCopyWithImpl<$Res>
    extends _$SigninStateCopyWithImpl<$Res, _$_SigninState>
    implements _$$_SigninStateCopyWith<$Res> {
  __$$_SigninStateCopyWithImpl(
      _$_SigninState _value, $Res Function(_$_SigninState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSigning = null,
    Object? isUpdating = null,
    Object? credentials = null,
    Object? tokens = freezed,
    Object? hidePassword = null,
    Object? showErrorMessages = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_SigninState(
      isSigning: null == isSigning
          ? _value.isSigning
          : isSigning // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
      credentials: null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as SigninCredentials,
      tokens: freezed == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as Tokens?,
      hidePassword: null == hidePassword
          ? _value.hidePassword
          : hidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Tokens>>,
    ));
  }
}

/// @nodoc

class _$_SigninState implements _SigninState {
  const _$_SigninState(
      {required this.isSigning,
      required this.isUpdating,
      required this.credentials,
      required this.tokens,
      required this.hidePassword,
      required this.showErrorMessages,
      required this.failureOrSuccessOption});

  @override
  final bool isSigning;
  @override
  final bool isUpdating;
  @override
  final SigninCredentials credentials;
  @override
  final Tokens? tokens;
  @override
  final bool hidePassword;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<Failure, Tokens>> failureOrSuccessOption;

  @override
  String toString() {
    return 'SigninState(isSigning: $isSigning, isUpdating: $isUpdating, credentials: $credentials, tokens: $tokens, hidePassword: $hidePassword, showErrorMessages: $showErrorMessages, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SigninState &&
            (identical(other.isSigning, isSigning) ||
                other.isSigning == isSigning) &&
            (identical(other.isUpdating, isUpdating) ||
                other.isUpdating == isUpdating) &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials) &&
            (identical(other.tokens, tokens) || other.tokens == tokens) &&
            (identical(other.hidePassword, hidePassword) ||
                other.hidePassword == hidePassword) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSigning,
      isUpdating,
      credentials,
      tokens,
      hidePassword,
      showErrorMessages,
      failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SigninStateCopyWith<_$_SigninState> get copyWith =>
      __$$_SigninStateCopyWithImpl<_$_SigninState>(this, _$identity);
}

abstract class _SigninState implements SigninState {
  const factory _SigninState(
      {required final bool isSigning,
      required final bool isUpdating,
      required final SigninCredentials credentials,
      required final Tokens? tokens,
      required final bool hidePassword,
      required final bool showErrorMessages,
      required final Option<Either<Failure, Tokens>>
          failureOrSuccessOption}) = _$_SigninState;

  @override
  bool get isSigning;
  @override
  bool get isUpdating;
  @override
  SigninCredentials get credentials;
  @override
  Tokens? get tokens;
  @override
  bool get hidePassword;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<Failure, Tokens>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_SigninStateCopyWith<_$_SigninState> get copyWith =>
      throw _privateConstructorUsedError;
}
