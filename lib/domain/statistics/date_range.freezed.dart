// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_range.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DateRange {
  DateTime get fromDate => throw _privateConstructorUsedError;
  DateTime get toDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DateRangeCopyWith<DateRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateRangeCopyWith<$Res> {
  factory $DateRangeCopyWith(DateRange value, $Res Function(DateRange) then) =
      _$DateRangeCopyWithImpl<$Res, DateRange>;
  @useResult
  $Res call({DateTime fromDate, DateTime toDate});
}

/// @nodoc
class _$DateRangeCopyWithImpl<$Res, $Val extends DateRange>
    implements $DateRangeCopyWith<$Res> {
  _$DateRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? toDate = null,
  }) {
    return _then(_value.copyWith(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DateRangeCopyWith<$Res> implements $DateRangeCopyWith<$Res> {
  factory _$$_DateRangeCopyWith(
          _$_DateRange value, $Res Function(_$_DateRange) then) =
      __$$_DateRangeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime fromDate, DateTime toDate});
}

/// @nodoc
class __$$_DateRangeCopyWithImpl<$Res>
    extends _$DateRangeCopyWithImpl<$Res, _$_DateRange>
    implements _$$_DateRangeCopyWith<$Res> {
  __$$_DateRangeCopyWithImpl(
      _$_DateRange _value, $Res Function(_$_DateRange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? toDate = null,
  }) {
    return _then(_$_DateRange(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DateRange implements _DateRange {
  const _$_DateRange({required this.fromDate, required this.toDate});

  @override
  final DateTime fromDate;
  @override
  final DateTime toDate;

  @override
  String toString() {
    return 'DateRange(fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateRange &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromDate, toDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateRangeCopyWith<_$_DateRange> get copyWith =>
      __$$_DateRangeCopyWithImpl<_$_DateRange>(this, _$identity);
}

abstract class _DateRange implements DateRange {
  const factory _DateRange(
      {required final DateTime fromDate,
      required final DateTime toDate}) = _$_DateRange;

  @override
  DateTime get fromDate;
  @override
  DateTime get toDate;
  @override
  @JsonKey(ignore: true)
  _$$_DateRangeCopyWith<_$_DateRange> get copyWith =>
      throw _privateConstructorUsedError;
}
