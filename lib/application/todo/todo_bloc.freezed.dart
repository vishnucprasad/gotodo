// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoEvent {
  List<Day> get dateList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Day> dateList) getTodoList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Day> dateList)? getTodoList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Day> dateList)? getTodoList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getTodoList value) getTodoList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getTodoList value)? getTodoList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getTodoList value)? getTodoList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoEventCopyWith<TodoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
  @useResult
  $Res call({List<Day> dateList});
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateList = null,
  }) {
    return _then(_value.copyWith(
      dateList: null == dateList
          ? _value.dateList
          : dateList // ignore: cast_nullable_to_non_nullable
              as List<Day>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_getTodoListCopyWith<$Res>
    implements $TodoEventCopyWith<$Res> {
  factory _$$_getTodoListCopyWith(
          _$_getTodoList value, $Res Function(_$_getTodoList) then) =
      __$$_getTodoListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Day> dateList});
}

/// @nodoc
class __$$_getTodoListCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$_getTodoList>
    implements _$$_getTodoListCopyWith<$Res> {
  __$$_getTodoListCopyWithImpl(
      _$_getTodoList _value, $Res Function(_$_getTodoList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateList = null,
  }) {
    return _then(_$_getTodoList(
      null == dateList
          ? _value._dateList
          : dateList // ignore: cast_nullable_to_non_nullable
              as List<Day>,
    ));
  }
}

/// @nodoc

class _$_getTodoList implements _getTodoList {
  const _$_getTodoList(final List<Day> dateList) : _dateList = dateList;

  final List<Day> _dateList;
  @override
  List<Day> get dateList {
    if (_dateList is EqualUnmodifiableListView) return _dateList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dateList);
  }

  @override
  String toString() {
    return 'TodoEvent.getTodoList(dateList: $dateList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getTodoList &&
            const DeepCollectionEquality().equals(other._dateList, _dateList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_dateList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_getTodoListCopyWith<_$_getTodoList> get copyWith =>
      __$$_getTodoListCopyWithImpl<_$_getTodoList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Day> dateList) getTodoList,
  }) {
    return getTodoList(dateList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Day> dateList)? getTodoList,
  }) {
    return getTodoList?.call(dateList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Day> dateList)? getTodoList,
    required TResult orElse(),
  }) {
    if (getTodoList != null) {
      return getTodoList(dateList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getTodoList value) getTodoList,
  }) {
    return getTodoList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getTodoList value)? getTodoList,
  }) {
    return getTodoList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getTodoList value)? getTodoList,
    required TResult orElse(),
  }) {
    if (getTodoList != null) {
      return getTodoList(this);
    }
    return orElse();
  }
}

abstract class _getTodoList implements TodoEvent {
  const factory _getTodoList(final List<Day> dateList) = _$_getTodoList;

  @override
  List<Day> get dateList;
  @override
  @JsonKey(ignore: true)
  _$$_getTodoListCopyWith<_$_getTodoList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<List<Todo>?> get todoList => throw _privateConstructorUsedError;
  Option<Either<Failure, dynamic>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool showError,
      String? errorMessage,
      List<List<Todo>?> todoList,
      Option<Either<Failure, dynamic>> failureOrSuccessOption});
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? showError = null,
    Object? errorMessage = freezed,
    Object? todoList = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      todoList: null == todoList
          ? _value.todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<List<Todo>?>,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoStateCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$$_TodoStateCopyWith(
          _$_TodoState value, $Res Function(_$_TodoState) then) =
      __$$_TodoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool showError,
      String? errorMessage,
      List<List<Todo>?> todoList,
      Option<Either<Failure, dynamic>> failureOrSuccessOption});
}

/// @nodoc
class __$$_TodoStateCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$_TodoState>
    implements _$$_TodoStateCopyWith<$Res> {
  __$$_TodoStateCopyWithImpl(
      _$_TodoState _value, $Res Function(_$_TodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? showError = null,
    Object? errorMessage = freezed,
    Object? todoList = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_TodoState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      todoList: null == todoList
          ? _value._todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<List<Todo>?>,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_TodoState implements _TodoState {
  const _$_TodoState(
      {required this.isLoading,
      required this.showError,
      required this.errorMessage,
      required final List<List<Todo>?> todoList,
      required this.failureOrSuccessOption})
      : _todoList = todoList;

  @override
  final bool isLoading;
  @override
  final bool showError;
  @override
  final String? errorMessage;
  final List<List<Todo>?> _todoList;
  @override
  List<List<Todo>?> get todoList {
    if (_todoList is EqualUnmodifiableListView) return _todoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoList);
  }

  @override
  final Option<Either<Failure, dynamic>> failureOrSuccessOption;

  @override
  String toString() {
    return 'TodoState(isLoading: $isLoading, showError: $showError, errorMessage: $errorMessage, todoList: $todoList, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._todoList, _todoList) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      showError,
      errorMessage,
      const DeepCollectionEquality().hash(_todoList),
      failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      __$$_TodoStateCopyWithImpl<_$_TodoState>(this, _$identity);
}

abstract class _TodoState implements TodoState {
  const factory _TodoState(
      {required final bool isLoading,
      required final bool showError,
      required final String? errorMessage,
      required final List<List<Todo>?> todoList,
      required final Option<Either<Failure, dynamic>>
          failureOrSuccessOption}) = _$_TodoState;

  @override
  bool get isLoading;
  @override
  bool get showError;
  @override
  String? get errorMessage;
  @override
  List<List<Todo>?> get todoList;
  @override
  Option<Either<Failure, dynamic>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}
