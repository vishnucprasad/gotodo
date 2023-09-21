// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Credentials {
  Name get name => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CredentialsCopyWith<Credentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialsCopyWith<$Res> {
  factory $CredentialsCopyWith(
          Credentials value, $Res Function(Credentials) then) =
      _$CredentialsCopyWithImpl<$Res, Credentials>;
  @useResult
  $Res call({Name name, EmailAddress emailAddress});
}

/// @nodoc
class _$CredentialsCopyWithImpl<$Res, $Val extends Credentials>
    implements $CredentialsCopyWith<$Res> {
  _$CredentialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? emailAddress = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CredentialsCopyWith<$Res>
    implements $CredentialsCopyWith<$Res> {
  factory _$$_CredentialsCopyWith(
          _$_Credentials value, $Res Function(_$_Credentials) then) =
      __$$_CredentialsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Name name, EmailAddress emailAddress});
}

/// @nodoc
class __$$_CredentialsCopyWithImpl<$Res>
    extends _$CredentialsCopyWithImpl<$Res, _$_Credentials>
    implements _$$_CredentialsCopyWith<$Res> {
  __$$_CredentialsCopyWithImpl(
      _$_Credentials _value, $Res Function(_$_Credentials) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? emailAddress = null,
  }) {
    return _then(_$_Credentials(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
    ));
  }
}

/// @nodoc

class _$_Credentials extends _Credentials {
  const _$_Credentials({required this.name, required this.emailAddress})
      : super._();

  @override
  final Name name;
  @override
  final EmailAddress emailAddress;

  @override
  String toString() {
    return 'Credentials(name: $name, emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Credentials &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, emailAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CredentialsCopyWith<_$_Credentials> get copyWith =>
      __$$_CredentialsCopyWithImpl<_$_Credentials>(this, _$identity);
}

abstract class _Credentials extends Credentials {
  const factory _Credentials(
      {required final Name name,
      required final EmailAddress emailAddress}) = _$_Credentials;
  const _Credentials._() : super._();

  @override
  Name get name;
  @override
  EmailAddress get emailAddress;
  @override
  @JsonKey(ignore: true)
  _$$_CredentialsCopyWith<_$_Credentials> get copyWith =>
      throw _privateConstructorUsedError;
}
