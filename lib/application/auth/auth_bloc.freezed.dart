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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            User user,
            bool? showValidationError,
            Credentials? credentials,
            bool? isLoading,
            Option<Either<Failure, dynamic>>? failureOrSuccessOption)
        authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String errorMessage) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            User user,
            bool? showValidationError,
            Credentials? credentials,
            bool? isLoading,
            Option<Either<Failure, dynamic>>? failureOrSuccessOption)?
        authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(String errorMessage)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            User user,
            bool? showValidationError,
            Credentials? credentials,
            bool? isLoading,
            Option<Either<Failure, dynamic>>? failureOrSuccessOption)?
        authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String errorMessage)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_ErrorState value) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_ErrorState value)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            User user,
            bool? showValidationError,
            Credentials? credentials,
            bool? isLoading,
            Option<Either<Failure, dynamic>>? failureOrSuccessOption)
        authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String errorMessage) errorState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            User user,
            bool? showValidationError,
            Credentials? credentials,
            bool? isLoading,
            Option<Either<Failure, dynamic>>? failureOrSuccessOption)?
        authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(String errorMessage)? errorState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            User user,
            bool? showValidationError,
            Credentials? credentials,
            bool? isLoading,
            Option<Either<Failure, dynamic>>? failureOrSuccessOption)?
        authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String errorMessage)? errorState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {User user,
      bool? showValidationError,
      Credentials? credentials,
      bool? isLoading,
      Option<Either<Failure, dynamic>>? failureOrSuccessOption});

  $UserCopyWith<$Res> get user;
  $CredentialsCopyWith<$Res>? get credentials;
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Authenticated>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? showValidationError = freezed,
    Object? credentials = freezed,
    Object? isLoading = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_$_Authenticated(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      showValidationError: freezed == showValidationError
          ? _value.showValidationError
          : showValidationError // ignore: cast_nullable_to_non_nullable
              as bool?,
      credentials: freezed == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as Credentials?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      failureOrSuccessOption: freezed == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, dynamic>>?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CredentialsCopyWith<$Res>? get credentials {
    if (_value.credentials == null) {
      return null;
    }

    return $CredentialsCopyWith<$Res>(_value.credentials!, (value) {
      return _then(_value.copyWith(credentials: value));
    });
  }
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(
      {required this.user,
      this.showValidationError,
      this.credentials,
      this.isLoading,
      this.failureOrSuccessOption});

  @override
  final User user;
  @override
  final bool? showValidationError;
  @override
  final Credentials? credentials;
  @override
  final bool? isLoading;
  @override
  final Option<Either<Failure, dynamic>>? failureOrSuccessOption;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user, showValidationError: $showValidationError, credentials: $credentials, isLoading: $isLoading, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authenticated &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.showValidationError, showValidationError) ||
                other.showValidationError == showValidationError) &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, showValidationError,
      credentials, isLoading, failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      __$$_AuthenticatedCopyWithImpl<_$_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            User user,
            bool? showValidationError,
            Credentials? credentials,
            bool? isLoading,
            Option<Either<Failure, dynamic>>? failureOrSuccessOption)
        authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String errorMessage) errorState,
  }) {
    return authenticated(user, showValidationError, credentials, isLoading,
        failureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            User user,
            bool? showValidationError,
            Credentials? credentials,
            bool? isLoading,
            Option<Either<Failure, dynamic>>? failureOrSuccessOption)?
        authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(String errorMessage)? errorState,
  }) {
    return authenticated?.call(user, showValidationError, credentials,
        isLoading, failureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            User user,
            bool? showValidationError,
            Credentials? credentials,
            bool? isLoading,
            Option<Either<Failure, dynamic>>? failureOrSuccessOption)?
        authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String errorMessage)? errorState,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user, showValidationError, credentials, isLoading,
          failureOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated(
          {required final User user,
          final bool? showValidationError,
          final Credentials? credentials,
          final bool? isLoading,
          final Option<Either<Failure, dynamic>>? failureOrSuccessOption}) =
      _$_Authenticated;

  User get user;
  bool? get showValidationError;
  Credentials? get credentials;
  bool? get isLoading;
  Option<Either<Failure, dynamic>>? get failureOrSuccessOption;
  @JsonKey(ignore: true)
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnAuthenticatedCopyWith<$Res> {
  factory _$$_UnAuthenticatedCopyWith(
          _$_UnAuthenticated value, $Res Function(_$_UnAuthenticated) then) =
      __$$_UnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_UnAuthenticated>
    implements _$$_UnAuthenticatedCopyWith<$Res> {
  __$$_UnAuthenticatedCopyWithImpl(
      _$_UnAuthenticated _value, $Res Function(_$_UnAuthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnAuthenticated implements _UnAuthenticated {
  const _$_UnAuthenticated();

  @override
  String toString() {
    return 'AuthState.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            User user,
            bool? showValidationError,
            Credentials? credentials,
            bool? isLoading,
            Option<Either<Failure, dynamic>>? failureOrSuccessOption)
        authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String errorMessage) errorState,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            User user,
            bool? showValidationError,
            Credentials? credentials,
            bool? isLoading,
            Option<Either<Failure, dynamic>>? failureOrSuccessOption)?
        authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(String errorMessage)? errorState,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            User user,
            bool? showValidationError,
            Credentials? credentials,
            bool? isLoading,
            Option<Either<Failure, dynamic>>? failureOrSuccessOption)?
        authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String errorMessage)? errorState,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticated implements AuthState {
  const factory _UnAuthenticated() = _$_UnAuthenticated;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_ErrorState>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_ErrorState(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorState implements _ErrorState {
  const _$_ErrorState({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthState.errorState(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            User user,
            bool? showValidationError,
            Credentials? credentials,
            bool? isLoading,
            Option<Either<Failure, dynamic>>? failureOrSuccessOption)
        authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(String errorMessage) errorState,
  }) {
    return errorState(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            User user,
            bool? showValidationError,
            Credentials? credentials,
            bool? isLoading,
            Option<Either<Failure, dynamic>>? failureOrSuccessOption)?
        authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(String errorMessage)? errorState,
  }) {
    return errorState?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            User user,
            bool? showValidationError,
            Credentials? credentials,
            bool? isLoading,
            Option<Either<Failure, dynamic>>? failureOrSuccessOption)?
        authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(String errorMessage)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements AuthState {
  const factory _ErrorState({required final String errorMessage}) =
      _$_ErrorState;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
