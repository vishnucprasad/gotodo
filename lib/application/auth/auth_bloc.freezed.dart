// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() setCredentialsFromSate,
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailAddressChanged,
    required TResult Function() editUser,
    required TResult Function(String refreshToken) refreshToken,
    required TResult Function() signout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequested,
    TResult? Function()? setCredentialsFromSate,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function()? editUser,
    TResult? Function(String refreshToken)? refreshToken,
    TResult? Function()? signout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? setCredentialsFromSate,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailAddressChanged,
    TResult Function()? editUser,
    TResult Function(String refreshToken)? refreshToken,
    TResult Function()? signout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_SetCredentials value) setCredentialsFromSate,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_signout value) signout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
    TResult? Function(_SetCredentials value)? setCredentialsFromSate,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_signout value)? signout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_SetCredentials value)? setCredentialsFromSate,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_signout value)? signout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthCheckRequestedCopyWith<$Res> {
  factory _$$_AuthCheckRequestedCopyWith(_$_AuthCheckRequested value,
          $Res Function(_$_AuthCheckRequested) then) =
      __$$_AuthCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthCheckRequested>
    implements _$$_AuthCheckRequestedCopyWith<$Res> {
  __$$_AuthCheckRequestedCopyWithImpl(
      _$_AuthCheckRequested _value, $Res Function(_$_AuthCheckRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthCheckRequested implements _AuthCheckRequested {
  const _$_AuthCheckRequested();

  @override
  String toString() {
    return 'AuthEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() setCredentialsFromSate,
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailAddressChanged,
    required TResult Function() editUser,
    required TResult Function(String refreshToken) refreshToken,
    required TResult Function() signout,
  }) {
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequested,
    TResult? Function()? setCredentialsFromSate,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function()? editUser,
    TResult? Function(String refreshToken)? refreshToken,
    TResult? Function()? signout,
  }) {
    return authCheckRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? setCredentialsFromSate,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailAddressChanged,
    TResult Function()? editUser,
    TResult Function(String refreshToken)? refreshToken,
    TResult Function()? signout,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_SetCredentials value) setCredentialsFromSate,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_signout value) signout,
  }) {
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
    TResult? Function(_SetCredentials value)? setCredentialsFromSate,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_signout value)? signout,
  }) {
    return authCheckRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_SetCredentials value)? setCredentialsFromSate,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_signout value)? signout,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class _AuthCheckRequested implements AuthEvent {
  const factory _AuthCheckRequested() = _$_AuthCheckRequested;
}

/// @nodoc
abstract class _$$_SetCredentialsCopyWith<$Res> {
  factory _$$_SetCredentialsCopyWith(
          _$_SetCredentials value, $Res Function(_$_SetCredentials) then) =
      __$$_SetCredentialsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SetCredentialsCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SetCredentials>
    implements _$$_SetCredentialsCopyWith<$Res> {
  __$$_SetCredentialsCopyWithImpl(
      _$_SetCredentials _value, $Res Function(_$_SetCredentials) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SetCredentials implements _SetCredentials {
  const _$_SetCredentials();

  @override
  String toString() {
    return 'AuthEvent.setCredentialsFromSate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SetCredentials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() setCredentialsFromSate,
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailAddressChanged,
    required TResult Function() editUser,
    required TResult Function(String refreshToken) refreshToken,
    required TResult Function() signout,
  }) {
    return setCredentialsFromSate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequested,
    TResult? Function()? setCredentialsFromSate,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function()? editUser,
    TResult? Function(String refreshToken)? refreshToken,
    TResult? Function()? signout,
  }) {
    return setCredentialsFromSate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? setCredentialsFromSate,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailAddressChanged,
    TResult Function()? editUser,
    TResult Function(String refreshToken)? refreshToken,
    TResult Function()? signout,
    required TResult orElse(),
  }) {
    if (setCredentialsFromSate != null) {
      return setCredentialsFromSate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_SetCredentials value) setCredentialsFromSate,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_signout value) signout,
  }) {
    return setCredentialsFromSate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
    TResult? Function(_SetCredentials value)? setCredentialsFromSate,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_signout value)? signout,
  }) {
    return setCredentialsFromSate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_SetCredentials value)? setCredentialsFromSate,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_signout value)? signout,
    required TResult orElse(),
  }) {
    if (setCredentialsFromSate != null) {
      return setCredentialsFromSate(this);
    }
    return orElse();
  }
}

abstract class _SetCredentials implements AuthEvent {
  const factory _SetCredentials() = _$_SetCredentials;
}

/// @nodoc
abstract class _$$_NameChangedCopyWith<$Res> {
  factory _$$_NameChangedCopyWith(
          _$_NameChanged value, $Res Function(_$_NameChanged) then) =
      __$$_NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_NameChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_NameChanged>
    implements _$$_NameChangedCopyWith<$Res> {
  __$$_NameChangedCopyWithImpl(
      _$_NameChanged _value, $Res Function(_$_NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_NameChanged(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'AuthEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameChanged &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      __$$_NameChangedCopyWithImpl<_$_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() setCredentialsFromSate,
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailAddressChanged,
    required TResult Function() editUser,
    required TResult Function(String refreshToken) refreshToken,
    required TResult Function() signout,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequested,
    TResult? Function()? setCredentialsFromSate,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function()? editUser,
    TResult? Function(String refreshToken)? refreshToken,
    TResult? Function()? signout,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? setCredentialsFromSate,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailAddressChanged,
    TResult Function()? editUser,
    TResult Function(String refreshToken)? refreshToken,
    TResult Function()? signout,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_SetCredentials value) setCredentialsFromSate,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_signout value) signout,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
    TResult? Function(_SetCredentials value)? setCredentialsFromSate,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_signout value)? signout,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_SetCredentials value)? setCredentialsFromSate,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_signout value)? signout,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements AuthEvent {
  const factory _NameChanged(final String name) = _$_NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailAddressChangedCopyWith<$Res> {
  factory _$$_EmailAddressChangedCopyWith(_$_EmailAddressChanged value,
          $Res Function(_$_EmailAddressChanged) then) =
      __$$_EmailAddressChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EmailAddressChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_EmailAddressChanged>
    implements _$$_EmailAddressChangedCopyWith<$Res> {
  __$$_EmailAddressChangedCopyWithImpl(_$_EmailAddressChanged _value,
      $Res Function(_$_EmailAddressChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EmailAddressChanged(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailAddressChanged implements _EmailAddressChanged {
  const _$_EmailAddressChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.emailAddressChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailAddressChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailAddressChangedCopyWith<_$_EmailAddressChanged> get copyWith =>
      __$$_EmailAddressChangedCopyWithImpl<_$_EmailAddressChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() setCredentialsFromSate,
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailAddressChanged,
    required TResult Function() editUser,
    required TResult Function(String refreshToken) refreshToken,
    required TResult Function() signout,
  }) {
    return emailAddressChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequested,
    TResult? Function()? setCredentialsFromSate,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function()? editUser,
    TResult? Function(String refreshToken)? refreshToken,
    TResult? Function()? signout,
  }) {
    return emailAddressChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? setCredentialsFromSate,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailAddressChanged,
    TResult Function()? editUser,
    TResult Function(String refreshToken)? refreshToken,
    TResult Function()? signout,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_SetCredentials value) setCredentialsFromSate,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_signout value) signout,
  }) {
    return emailAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
    TResult? Function(_SetCredentials value)? setCredentialsFromSate,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_signout value)? signout,
  }) {
    return emailAddressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_SetCredentials value)? setCredentialsFromSate,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_signout value)? signout,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailAddressChanged implements AuthEvent {
  const factory _EmailAddressChanged(final String email) =
      _$_EmailAddressChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$_EmailAddressChangedCopyWith<_$_EmailAddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditUserCopyWith<$Res> {
  factory _$$_EditUserCopyWith(
          _$_EditUser value, $Res Function(_$_EditUser) then) =
      __$$_EditUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EditUserCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_EditUser>
    implements _$$_EditUserCopyWith<$Res> {
  __$$_EditUserCopyWithImpl(
      _$_EditUser _value, $Res Function(_$_EditUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EditUser implements _EditUser {
  const _$_EditUser();

  @override
  String toString() {
    return 'AuthEvent.editUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EditUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() setCredentialsFromSate,
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailAddressChanged,
    required TResult Function() editUser,
    required TResult Function(String refreshToken) refreshToken,
    required TResult Function() signout,
  }) {
    return editUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequested,
    TResult? Function()? setCredentialsFromSate,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function()? editUser,
    TResult? Function(String refreshToken)? refreshToken,
    TResult? Function()? signout,
  }) {
    return editUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? setCredentialsFromSate,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailAddressChanged,
    TResult Function()? editUser,
    TResult Function(String refreshToken)? refreshToken,
    TResult Function()? signout,
    required TResult orElse(),
  }) {
    if (editUser != null) {
      return editUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_SetCredentials value) setCredentialsFromSate,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_signout value) signout,
  }) {
    return editUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
    TResult? Function(_SetCredentials value)? setCredentialsFromSate,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_signout value)? signout,
  }) {
    return editUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_SetCredentials value)? setCredentialsFromSate,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_signout value)? signout,
    required TResult orElse(),
  }) {
    if (editUser != null) {
      return editUser(this);
    }
    return orElse();
  }
}

abstract class _EditUser implements AuthEvent {
  const factory _EditUser() = _$_EditUser;
}

/// @nodoc
abstract class _$$_RefreshTokenCopyWith<$Res> {
  factory _$$_RefreshTokenCopyWith(
          _$_RefreshToken value, $Res Function(_$_RefreshToken) then) =
      __$$_RefreshTokenCopyWithImpl<$Res>;
  @useResult
  $Res call({String refreshToken});
}

/// @nodoc
class __$$_RefreshTokenCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_RefreshToken>
    implements _$$_RefreshTokenCopyWith<$Res> {
  __$$_RefreshTokenCopyWithImpl(
      _$_RefreshToken _value, $Res Function(_$_RefreshToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_$_RefreshToken(
      null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RefreshToken implements _RefreshToken {
  const _$_RefreshToken(this.refreshToken);

  @override
  final String refreshToken;

  @override
  String toString() {
    return 'AuthEvent.refreshToken(refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshToken &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshTokenCopyWith<_$_RefreshToken> get copyWith =>
      __$$_RefreshTokenCopyWithImpl<_$_RefreshToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() setCredentialsFromSate,
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailAddressChanged,
    required TResult Function() editUser,
    required TResult Function(String refreshToken) refreshToken,
    required TResult Function() signout,
  }) {
    return refreshToken(this.refreshToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequested,
    TResult? Function()? setCredentialsFromSate,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function()? editUser,
    TResult? Function(String refreshToken)? refreshToken,
    TResult? Function()? signout,
  }) {
    return refreshToken?.call(this.refreshToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? setCredentialsFromSate,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailAddressChanged,
    TResult Function()? editUser,
    TResult Function(String refreshToken)? refreshToken,
    TResult Function()? signout,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken(this.refreshToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_SetCredentials value) setCredentialsFromSate,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_signout value) signout,
  }) {
    return refreshToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
    TResult? Function(_SetCredentials value)? setCredentialsFromSate,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_signout value)? signout,
  }) {
    return refreshToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_SetCredentials value)? setCredentialsFromSate,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_signout value)? signout,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken(this);
    }
    return orElse();
  }
}

abstract class _RefreshToken implements AuthEvent {
  const factory _RefreshToken(final String refreshToken) = _$_RefreshToken;

  String get refreshToken;
  @JsonKey(ignore: true)
  _$$_RefreshTokenCopyWith<_$_RefreshToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_signoutCopyWith<$Res> {
  factory _$$_signoutCopyWith(
          _$_signout value, $Res Function(_$_signout) then) =
      __$$_signoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_signoutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_signout>
    implements _$$_signoutCopyWith<$Res> {
  __$$_signoutCopyWithImpl(_$_signout _value, $Res Function(_$_signout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_signout implements _signout {
  const _$_signout();

  @override
  String toString() {
    return 'AuthEvent.signout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_signout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() setCredentialsFromSate,
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailAddressChanged,
    required TResult Function() editUser,
    required TResult Function(String refreshToken) refreshToken,
    required TResult Function() signout,
  }) {
    return signout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequested,
    TResult? Function()? setCredentialsFromSate,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailAddressChanged,
    TResult? Function()? editUser,
    TResult? Function(String refreshToken)? refreshToken,
    TResult? Function()? signout,
  }) {
    return signout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? setCredentialsFromSate,
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailAddressChanged,
    TResult Function()? editUser,
    TResult Function(String refreshToken)? refreshToken,
    TResult Function()? signout,
    required TResult orElse(),
  }) {
    if (signout != null) {
      return signout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_SetCredentials value) setCredentialsFromSate,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_EditUser value) editUser,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_signout value) signout,
  }) {
    return signout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
    TResult? Function(_SetCredentials value)? setCredentialsFromSate,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(_EditUser value)? editUser,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_signout value)? signout,
  }) {
    return signout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_SetCredentials value)? setCredentialsFromSate,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_EditUser value)? editUser,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_signout value)? signout,
    required TResult orElse(),
  }) {
    if (signout != null) {
      return signout(this);
    }
    return orElse();
  }
}

abstract class _signout implements AuthEvent {
  const factory _signout() = _$_signout;
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isAuthenticated => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  bool get showValidationError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  Credentials get credentials => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Option<Either<Failure, dynamic>>? get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isAuthenticated,
      bool showError,
      bool showValidationError,
      String? errorMessage,
      Credentials credentials,
      User? user,
      Option<Either<Failure, dynamic>>? failureOrSuccessOption});

  $CredentialsCopyWith<$Res> get credentials;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isAuthenticated = null,
    Object? showError = null,
    Object? showValidationError = null,
    Object? errorMessage = freezed,
    Object? credentials = null,
    Object? user = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      showValidationError: null == showValidationError
          ? _value.showValidationError
          : showValidationError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      credentials: null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as Credentials,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      failureOrSuccessOption: freezed == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, dynamic>>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CredentialsCopyWith<$Res> get credentials {
    return $CredentialsCopyWith<$Res>(_value.credentials, (value) {
      return _then(_value.copyWith(credentials: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isAuthenticated,
      bool showError,
      bool showValidationError,
      String? errorMessage,
      Credentials credentials,
      User? user,
      Option<Either<Failure, dynamic>>? failureOrSuccessOption});

  @override
  $CredentialsCopyWith<$Res> get credentials;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isAuthenticated = null,
    Object? showError = null,
    Object? showValidationError = null,
    Object? errorMessage = freezed,
    Object? credentials = null,
    Object? user = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_$_AuthState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      showValidationError: null == showValidationError
          ? _value.showValidationError
          : showValidationError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      credentials: null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as Credentials,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      failureOrSuccessOption: freezed == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, dynamic>>?,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.isLoading,
      required this.isAuthenticated,
      required this.showError,
      required this.showValidationError,
      required this.errorMessage,
      required this.credentials,
      required this.user,
      required this.failureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final bool isAuthenticated;
  @override
  final bool showError;
  @override
  final bool showValidationError;
  @override
  final String? errorMessage;
  @override
  final Credentials credentials;
  @override
  final User? user;
  @override
  final Option<Either<Failure, dynamic>>? failureOrSuccessOption;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, isAuthenticated: $isAuthenticated, showError: $showError, showValidationError: $showValidationError, errorMessage: $errorMessage, credentials: $credentials, user: $user, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.showValidationError, showValidationError) ||
                other.showValidationError == showValidationError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isAuthenticated,
      showError,
      showValidationError,
      errorMessage,
      credentials,
      user,
      failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool isLoading,
      required final bool isAuthenticated,
      required final bool showError,
      required final bool showValidationError,
      required final String? errorMessage,
      required final Credentials credentials,
      required final User? user,
      required final Option<Either<Failure, dynamic>>?
          failureOrSuccessOption}) = _$_AuthState;

  @override
  bool get isLoading;
  @override
  bool get isAuthenticated;
  @override
  bool get showError;
  @override
  bool get showValidationError;
  @override
  String? get errorMessage;
  @override
  Credentials get credentials;
  @override
  User? get user;
  @override
  Option<Either<Failure, dynamic>>? get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
