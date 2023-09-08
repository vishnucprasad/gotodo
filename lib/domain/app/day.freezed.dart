// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Day {
  DateTime get dateTime => throw _privateConstructorUsedError;
  int get date => throw _privateConstructorUsedError;
  int get weekDay => throw _privateConstructorUsedError;
  String get weekDayAbbreviation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DayCopyWith<Day> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayCopyWith<$Res> {
  factory $DayCopyWith(Day value, $Res Function(Day) then) =
      _$DayCopyWithImpl<$Res, Day>;
  @useResult
  $Res call(
      {DateTime dateTime, int date, int weekDay, String weekDayAbbreviation});
}

/// @nodoc
class _$DayCopyWithImpl<$Res, $Val extends Day> implements $DayCopyWith<$Res> {
  _$DayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? date = null,
    Object? weekDay = null,
    Object? weekDayAbbreviation = null,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      weekDay: null == weekDay
          ? _value.weekDay
          : weekDay // ignore: cast_nullable_to_non_nullable
              as int,
      weekDayAbbreviation: null == weekDayAbbreviation
          ? _value.weekDayAbbreviation
          : weekDayAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DayCopyWith<$Res> implements $DayCopyWith<$Res> {
  factory _$$_DayCopyWith(_$_Day value, $Res Function(_$_Day) then) =
      __$$_DayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime dateTime, int date, int weekDay, String weekDayAbbreviation});
}

/// @nodoc
class __$$_DayCopyWithImpl<$Res> extends _$DayCopyWithImpl<$Res, _$_Day>
    implements _$$_DayCopyWith<$Res> {
  __$$_DayCopyWithImpl(_$_Day _value, $Res Function(_$_Day) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? date = null,
    Object? weekDay = null,
    Object? weekDayAbbreviation = null,
  }) {
    return _then(_$_Day(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      weekDay: null == weekDay
          ? _value.weekDay
          : weekDay // ignore: cast_nullable_to_non_nullable
              as int,
      weekDayAbbreviation: null == weekDayAbbreviation
          ? _value.weekDayAbbreviation
          : weekDayAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Day implements _Day {
  const _$_Day(
      {required this.dateTime,
      required this.date,
      required this.weekDay,
      required this.weekDayAbbreviation});

  @override
  final DateTime dateTime;
  @override
  final int date;
  @override
  final int weekDay;
  @override
  final String weekDayAbbreviation;

  @override
  String toString() {
    return 'Day(dateTime: $dateTime, date: $date, weekDay: $weekDay, weekDayAbbreviation: $weekDayAbbreviation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Day &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.weekDay, weekDay) || other.weekDay == weekDay) &&
            (identical(other.weekDayAbbreviation, weekDayAbbreviation) ||
                other.weekDayAbbreviation == weekDayAbbreviation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, dateTime, date, weekDay, weekDayAbbreviation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DayCopyWith<_$_Day> get copyWith =>
      __$$_DayCopyWithImpl<_$_Day>(this, _$identity);
}

abstract class _Day implements Day {
  const factory _Day(
      {required final DateTime dateTime,
      required final int date,
      required final int weekDay,
      required final String weekDayAbbreviation}) = _$_Day;

  @override
  DateTime get dateTime;
  @override
  int get date;
  @override
  int get weekDay;
  @override
  String get weekDayAbbreviation;
  @override
  @JsonKey(ignore: true)
  _$$_DayCopyWith<_$_Day> get copyWith => throw _privateConstructorUsedError;
}
