// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passwords.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Passwords {
  Password get currentPassword => throw _privateConstructorUsedError;
  Password get newPassword => throw _privateConstructorUsedError;
  ConfirmationPassword get confirmationPassword =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordsCopyWith<Passwords> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordsCopyWith<$Res> {
  factory $PasswordsCopyWith(Passwords value, $Res Function(Passwords) then) =
      _$PasswordsCopyWithImpl<$Res, Passwords>;
  @useResult
  $Res call(
      {Password currentPassword,
      Password newPassword,
      ConfirmationPassword confirmationPassword});
}

/// @nodoc
class _$PasswordsCopyWithImpl<$Res, $Val extends Passwords>
    implements $PasswordsCopyWith<$Res> {
  _$PasswordsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = null,
    Object? newPassword = null,
    Object? confirmationPassword = null,
  }) {
    return _then(_value.copyWith(
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmationPassword: null == confirmationPassword
          ? _value.confirmationPassword
          : confirmationPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmationPassword,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PasswordsCopyWith<$Res> implements $PasswordsCopyWith<$Res> {
  factory _$$_PasswordsCopyWith(
          _$_Passwords value, $Res Function(_$_Passwords) then) =
      __$$_PasswordsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Password currentPassword,
      Password newPassword,
      ConfirmationPassword confirmationPassword});
}

/// @nodoc
class __$$_PasswordsCopyWithImpl<$Res>
    extends _$PasswordsCopyWithImpl<$Res, _$_Passwords>
    implements _$$_PasswordsCopyWith<$Res> {
  __$$_PasswordsCopyWithImpl(
      _$_Passwords _value, $Res Function(_$_Passwords) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = null,
    Object? newPassword = null,
    Object? confirmationPassword = null,
  }) {
    return _then(_$_Passwords(
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmationPassword: null == confirmationPassword
          ? _value.confirmationPassword
          : confirmationPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmationPassword,
    ));
  }
}

/// @nodoc

class _$_Passwords extends _Passwords {
  const _$_Passwords(
      {required this.currentPassword,
      required this.newPassword,
      required this.confirmationPassword})
      : super._();

  @override
  final Password currentPassword;
  @override
  final Password newPassword;
  @override
  final ConfirmationPassword confirmationPassword;

  @override
  String toString() {
    return 'Passwords(currentPassword: $currentPassword, newPassword: $newPassword, confirmationPassword: $confirmationPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Passwords &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmationPassword, confirmationPassword) ||
                other.confirmationPassword == confirmationPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentPassword, newPassword, confirmationPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordsCopyWith<_$_Passwords> get copyWith =>
      __$$_PasswordsCopyWithImpl<_$_Passwords>(this, _$identity);
}

abstract class _Passwords extends Passwords {
  const factory _Passwords(
      {required final Password currentPassword,
      required final Password newPassword,
      required final ConfirmationPassword confirmationPassword}) = _$_Passwords;
  const _Passwords._() : super._();

  @override
  Password get currentPassword;
  @override
  Password get newPassword;
  @override
  ConfirmationPassword get confirmationPassword;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordsCopyWith<_$_Passwords> get copyWith =>
      throw _privateConstructorUsedError;
}
