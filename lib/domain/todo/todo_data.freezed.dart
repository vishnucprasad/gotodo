// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoData {
  TodoTask get task => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoDataCopyWith<TodoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDataCopyWith<$Res> {
  factory $TodoDataCopyWith(TodoData value, $Res Function(TodoData) then) =
      _$TodoDataCopyWithImpl<$Res, TodoData>;
  @useResult
  $Res call(
      {TodoTask task, DateTime date, Category? category, String? description});

  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$TodoDataCopyWithImpl<$Res, $Val extends TodoData>
    implements $TodoDataCopyWith<$Res> {
  _$TodoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? date = null,
    Object? category = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TodoTask,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TodoDataCopyWith<$Res> implements $TodoDataCopyWith<$Res> {
  factory _$$_TodoDataCopyWith(
          _$_TodoData value, $Res Function(_$_TodoData) then) =
      __$$_TodoDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TodoTask task, DateTime date, Category? category, String? description});

  @override
  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_TodoDataCopyWithImpl<$Res>
    extends _$TodoDataCopyWithImpl<$Res, _$_TodoData>
    implements _$$_TodoDataCopyWith<$Res> {
  __$$_TodoDataCopyWithImpl(
      _$_TodoData _value, $Res Function(_$_TodoData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? date = null,
    Object? category = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_TodoData(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TodoTask,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TodoData extends _TodoData {
  const _$_TodoData(
      {required this.task,
      required this.date,
      required this.category,
      required this.description})
      : super._();

  @override
  final TodoTask task;
  @override
  final DateTime date;
  @override
  final Category? category;
  @override
  final String? description;

  @override
  String toString() {
    return 'TodoData(task: $task, date: $date, category: $category, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoData &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, task, date, category, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoDataCopyWith<_$_TodoData> get copyWith =>
      __$$_TodoDataCopyWithImpl<_$_TodoData>(this, _$identity);
}

abstract class _TodoData extends TodoData {
  const factory _TodoData(
      {required final TodoTask task,
      required final DateTime date,
      required final Category? category,
      required final String? description}) = _$_TodoData;
  const _TodoData._() : super._();

  @override
  TodoTask get task;
  @override
  DateTime get date;
  @override
  Category? get category;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_TodoDataCopyWith<_$_TodoData> get copyWith =>
      throw _privateConstructorUsedError;
}
