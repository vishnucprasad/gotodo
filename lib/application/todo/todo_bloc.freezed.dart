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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategoryList,
    required TResult Function(List<Day> dateList) getTodoList,
    required TResult Function(String refreshToken) refreshToken,
    required TResult Function() authCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCategoryList,
    TResult? Function(List<Day> dateList)? getTodoList,
    TResult? Function(String refreshToken)? refreshToken,
    TResult? Function()? authCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategoryList,
    TResult Function(List<Day> dateList)? getTodoList,
    TResult Function(String refreshToken)? refreshToken,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategoryList value) getCategoryList,
    required TResult Function(_GetTodoList value) getTodoList,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategoryList value)? getCategoryList,
    TResult? Function(_GetTodoList value)? getTodoList,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategoryList value)? getCategoryList,
    TResult Function(_GetTodoList value)? getTodoList,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetCategoryListCopyWith<$Res> {
  factory _$$_GetCategoryListCopyWith(
          _$_GetCategoryList value, $Res Function(_$_GetCategoryList) then) =
      __$$_GetCategoryListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCategoryListCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$_GetCategoryList>
    implements _$$_GetCategoryListCopyWith<$Res> {
  __$$_GetCategoryListCopyWithImpl(
      _$_GetCategoryList _value, $Res Function(_$_GetCategoryList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCategoryList implements _GetCategoryList {
  const _$_GetCategoryList();

  @override
  String toString() {
    return 'TodoEvent.getCategoryList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCategoryList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategoryList,
    required TResult Function(List<Day> dateList) getTodoList,
    required TResult Function(String refreshToken) refreshToken,
    required TResult Function() authCheckRequested,
  }) {
    return getCategoryList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCategoryList,
    TResult? Function(List<Day> dateList)? getTodoList,
    TResult? Function(String refreshToken)? refreshToken,
    TResult? Function()? authCheckRequested,
  }) {
    return getCategoryList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategoryList,
    TResult Function(List<Day> dateList)? getTodoList,
    TResult Function(String refreshToken)? refreshToken,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) {
    if (getCategoryList != null) {
      return getCategoryList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategoryList value) getCategoryList,
    required TResult Function(_GetTodoList value) getTodoList,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
  }) {
    return getCategoryList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategoryList value)? getCategoryList,
    TResult? Function(_GetTodoList value)? getTodoList,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
  }) {
    return getCategoryList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategoryList value)? getCategoryList,
    TResult Function(_GetTodoList value)? getTodoList,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (getCategoryList != null) {
      return getCategoryList(this);
    }
    return orElse();
  }
}

abstract class _GetCategoryList implements TodoEvent {
  const factory _GetCategoryList() = _$_GetCategoryList;
}

/// @nodoc
abstract class _$$_GetTodoListCopyWith<$Res> {
  factory _$$_GetTodoListCopyWith(
          _$_GetTodoList value, $Res Function(_$_GetTodoList) then) =
      __$$_GetTodoListCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Day> dateList});
}

/// @nodoc
class __$$_GetTodoListCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$_GetTodoList>
    implements _$$_GetTodoListCopyWith<$Res> {
  __$$_GetTodoListCopyWithImpl(
      _$_GetTodoList _value, $Res Function(_$_GetTodoList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateList = null,
  }) {
    return _then(_$_GetTodoList(
      null == dateList
          ? _value._dateList
          : dateList // ignore: cast_nullable_to_non_nullable
              as List<Day>,
    ));
  }
}

/// @nodoc

class _$_GetTodoList implements _GetTodoList {
  const _$_GetTodoList(final List<Day> dateList) : _dateList = dateList;

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
            other is _$_GetTodoList &&
            const DeepCollectionEquality().equals(other._dateList, _dateList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_dateList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTodoListCopyWith<_$_GetTodoList> get copyWith =>
      __$$_GetTodoListCopyWithImpl<_$_GetTodoList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategoryList,
    required TResult Function(List<Day> dateList) getTodoList,
    required TResult Function(String refreshToken) refreshToken,
    required TResult Function() authCheckRequested,
  }) {
    return getTodoList(dateList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCategoryList,
    TResult? Function(List<Day> dateList)? getTodoList,
    TResult? Function(String refreshToken)? refreshToken,
    TResult? Function()? authCheckRequested,
  }) {
    return getTodoList?.call(dateList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategoryList,
    TResult Function(List<Day> dateList)? getTodoList,
    TResult Function(String refreshToken)? refreshToken,
    TResult Function()? authCheckRequested,
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
    required TResult Function(_GetCategoryList value) getCategoryList,
    required TResult Function(_GetTodoList value) getTodoList,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
  }) {
    return getTodoList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategoryList value)? getCategoryList,
    TResult? Function(_GetTodoList value)? getTodoList,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
  }) {
    return getTodoList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategoryList value)? getCategoryList,
    TResult Function(_GetTodoList value)? getTodoList,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (getTodoList != null) {
      return getTodoList(this);
    }
    return orElse();
  }
}

abstract class _GetTodoList implements TodoEvent {
  const factory _GetTodoList(final List<Day> dateList) = _$_GetTodoList;

  List<Day> get dateList;
  @JsonKey(ignore: true)
  _$$_GetTodoListCopyWith<_$_GetTodoList> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$TodoEventCopyWithImpl<$Res, _$_RefreshToken>
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
    return 'TodoEvent.refreshToken(refreshToken: $refreshToken)';
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
    required TResult Function() getCategoryList,
    required TResult Function(List<Day> dateList) getTodoList,
    required TResult Function(String refreshToken) refreshToken,
    required TResult Function() authCheckRequested,
  }) {
    return refreshToken(this.refreshToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCategoryList,
    TResult? Function(List<Day> dateList)? getTodoList,
    TResult? Function(String refreshToken)? refreshToken,
    TResult? Function()? authCheckRequested,
  }) {
    return refreshToken?.call(this.refreshToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategoryList,
    TResult Function(List<Day> dateList)? getTodoList,
    TResult Function(String refreshToken)? refreshToken,
    TResult Function()? authCheckRequested,
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
    required TResult Function(_GetCategoryList value) getCategoryList,
    required TResult Function(_GetTodoList value) getTodoList,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
  }) {
    return refreshToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategoryList value)? getCategoryList,
    TResult? Function(_GetTodoList value)? getTodoList,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
  }) {
    return refreshToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategoryList value)? getCategoryList,
    TResult Function(_GetTodoList value)? getTodoList,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken(this);
    }
    return orElse();
  }
}

abstract class _RefreshToken implements TodoEvent {
  const factory _RefreshToken(final String refreshToken) = _$_RefreshToken;

  String get refreshToken;
  @JsonKey(ignore: true)
  _$$_RefreshTokenCopyWith<_$_RefreshToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthCheckRequestedCopyWith<$Res> {
  factory _$$_AuthCheckRequestedCopyWith(_$_AuthCheckRequested value,
          $Res Function(_$_AuthCheckRequested) then) =
      __$$_AuthCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthCheckRequestedCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$_AuthCheckRequested>
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
    return 'TodoEvent.authCheckRequested()';
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
    required TResult Function() getCategoryList,
    required TResult Function(List<Day> dateList) getTodoList,
    required TResult Function(String refreshToken) refreshToken,
    required TResult Function() authCheckRequested,
  }) {
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCategoryList,
    TResult? Function(List<Day> dateList)? getTodoList,
    TResult? Function(String refreshToken)? refreshToken,
    TResult? Function()? authCheckRequested,
  }) {
    return authCheckRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategoryList,
    TResult Function(List<Day> dateList)? getTodoList,
    TResult Function(String refreshToken)? refreshToken,
    TResult Function()? authCheckRequested,
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
    required TResult Function(_GetCategoryList value) getCategoryList,
    required TResult Function(_GetTodoList value) getTodoList,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
  }) {
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategoryList value)? getCategoryList,
    TResult? Function(_GetTodoList value)? getTodoList,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_AuthCheckRequested value)? authCheckRequested,
  }) {
    return authCheckRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategoryList value)? getCategoryList,
    TResult Function(_GetTodoList value)? getTodoList,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class _AuthCheckRequested implements TodoEvent {
  const factory _AuthCheckRequested() = _$_AuthCheckRequested;
}

/// @nodoc
mixin _$TodoState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get checkAuth => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<Category> get categoryList => throw _privateConstructorUsedError;
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
      bool checkAuth,
      bool showError,
      String? errorMessage,
      List<Category> categoryList,
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
    Object? checkAuth = null,
    Object? showError = null,
    Object? errorMessage = freezed,
    Object? categoryList = null,
    Object? todoList = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      checkAuth: null == checkAuth
          ? _value.checkAuth
          : checkAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<Category>,
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
      bool checkAuth,
      bool showError,
      String? errorMessage,
      List<Category> categoryList,
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
    Object? checkAuth = null,
    Object? showError = null,
    Object? errorMessage = freezed,
    Object? categoryList = null,
    Object? todoList = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_TodoState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      checkAuth: null == checkAuth
          ? _value.checkAuth
          : checkAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<Category>,
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
      required this.checkAuth,
      required this.showError,
      required this.errorMessage,
      required final List<Category> categoryList,
      required final List<List<Todo>?> todoList,
      required this.failureOrSuccessOption})
      : _categoryList = categoryList,
        _todoList = todoList;

  @override
  final bool isLoading;
  @override
  final bool checkAuth;
  @override
  final bool showError;
  @override
  final String? errorMessage;
  final List<Category> _categoryList;
  @override
  List<Category> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

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
    return 'TodoState(isLoading: $isLoading, checkAuth: $checkAuth, showError: $showError, errorMessage: $errorMessage, categoryList: $categoryList, todoList: $todoList, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.checkAuth, checkAuth) ||
                other.checkAuth == checkAuth) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList) &&
            const DeepCollectionEquality().equals(other._todoList, _todoList) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      checkAuth,
      showError,
      errorMessage,
      const DeepCollectionEquality().hash(_categoryList),
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
      required final bool checkAuth,
      required final bool showError,
      required final String? errorMessage,
      required final List<Category> categoryList,
      required final List<List<Todo>?> todoList,
      required final Option<Either<Failure, dynamic>>
          failureOrSuccessOption}) = _$_TodoState;

  @override
  bool get isLoading;
  @override
  bool get checkAuth;
  @override
  bool get showError;
  @override
  String? get errorMessage;
  @override
  List<Category> get categoryList;
  @override
  List<List<Todo>?> get todoList;
  @override
  Option<Either<Failure, dynamic>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}
