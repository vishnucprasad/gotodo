// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDateList,
    required TResult Function(int index) changeSelectedDateIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDateList,
    TResult? Function(int index)? changeSelectedDateIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDateList,
    TResult Function(int index)? changeSelectedDateIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDateList value) getDateList,
    required TResult Function(_ChangeSelectedDateIndex value)
        changeSelectedDateIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDateList value)? getDateList,
    TResult? Function(_ChangeSelectedDateIndex value)? changeSelectedDateIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDateList value)? getDateList,
    TResult Function(_ChangeSelectedDateIndex value)? changeSelectedDateIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetDateListCopyWith<$Res> {
  factory _$$_GetDateListCopyWith(
          _$_GetDateList value, $Res Function(_$_GetDateList) then) =
      __$$_GetDateListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetDateListCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_GetDateList>
    implements _$$_GetDateListCopyWith<$Res> {
  __$$_GetDateListCopyWithImpl(
      _$_GetDateList _value, $Res Function(_$_GetDateList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetDateList implements _GetDateList {
  const _$_GetDateList();

  @override
  String toString() {
    return 'AppEvent.getDateList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetDateList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDateList,
    required TResult Function(int index) changeSelectedDateIndex,
  }) {
    return getDateList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDateList,
    TResult? Function(int index)? changeSelectedDateIndex,
  }) {
    return getDateList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDateList,
    TResult Function(int index)? changeSelectedDateIndex,
    required TResult orElse(),
  }) {
    if (getDateList != null) {
      return getDateList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDateList value) getDateList,
    required TResult Function(_ChangeSelectedDateIndex value)
        changeSelectedDateIndex,
  }) {
    return getDateList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDateList value)? getDateList,
    TResult? Function(_ChangeSelectedDateIndex value)? changeSelectedDateIndex,
  }) {
    return getDateList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDateList value)? getDateList,
    TResult Function(_ChangeSelectedDateIndex value)? changeSelectedDateIndex,
    required TResult orElse(),
  }) {
    if (getDateList != null) {
      return getDateList(this);
    }
    return orElse();
  }
}

abstract class _GetDateList implements AppEvent {
  const factory _GetDateList() = _$_GetDateList;
}

/// @nodoc
abstract class _$$_ChangeSelectedDateIndexCopyWith<$Res> {
  factory _$$_ChangeSelectedDateIndexCopyWith(_$_ChangeSelectedDateIndex value,
          $Res Function(_$_ChangeSelectedDateIndex) then) =
      __$$_ChangeSelectedDateIndexCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_ChangeSelectedDateIndexCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_ChangeSelectedDateIndex>
    implements _$$_ChangeSelectedDateIndexCopyWith<$Res> {
  __$$_ChangeSelectedDateIndexCopyWithImpl(_$_ChangeSelectedDateIndex _value,
      $Res Function(_$_ChangeSelectedDateIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_ChangeSelectedDateIndex(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeSelectedDateIndex implements _ChangeSelectedDateIndex {
  const _$_ChangeSelectedDateIndex(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'AppEvent.changeSelectedDateIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeSelectedDateIndex &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeSelectedDateIndexCopyWith<_$_ChangeSelectedDateIndex>
      get copyWith =>
          __$$_ChangeSelectedDateIndexCopyWithImpl<_$_ChangeSelectedDateIndex>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDateList,
    required TResult Function(int index) changeSelectedDateIndex,
  }) {
    return changeSelectedDateIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDateList,
    TResult? Function(int index)? changeSelectedDateIndex,
  }) {
    return changeSelectedDateIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDateList,
    TResult Function(int index)? changeSelectedDateIndex,
    required TResult orElse(),
  }) {
    if (changeSelectedDateIndex != null) {
      return changeSelectedDateIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDateList value) getDateList,
    required TResult Function(_ChangeSelectedDateIndex value)
        changeSelectedDateIndex,
  }) {
    return changeSelectedDateIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDateList value)? getDateList,
    TResult? Function(_ChangeSelectedDateIndex value)? changeSelectedDateIndex,
  }) {
    return changeSelectedDateIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDateList value)? getDateList,
    TResult Function(_ChangeSelectedDateIndex value)? changeSelectedDateIndex,
    required TResult orElse(),
  }) {
    if (changeSelectedDateIndex != null) {
      return changeSelectedDateIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangeSelectedDateIndex implements AppEvent {
  const factory _ChangeSelectedDateIndex(final int index) =
      _$_ChangeSelectedDateIndex;

  int get index;
  @JsonKey(ignore: true)
  _$$_ChangeSelectedDateIndexCopyWith<_$_ChangeSelectedDateIndex>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<Day> get dateList => throw _privateConstructorUsedError;
  int get selectedDateIndex => throw _privateConstructorUsedError;
  Option<Either<Failure, dynamic>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool showError,
      String? errorMessage,
      List<Day> dateList,
      int selectedDateIndex,
      Option<Either<Failure, dynamic>> failureOrSuccessOption});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

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
    Object? dateList = null,
    Object? selectedDateIndex = null,
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
      dateList: null == dateList
          ? _value.dateList
          : dateList // ignore: cast_nullable_to_non_nullable
              as List<Day>,
      selectedDateIndex: null == selectedDateIndex
          ? _value.selectedDateIndex
          : selectedDateIndex // ignore: cast_nullable_to_non_nullable
              as int,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SigninStateCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$_SigninStateCopyWith(
          _$_SigninState value, $Res Function(_$_SigninState) then) =
      __$$_SigninStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool showError,
      String? errorMessage,
      List<Day> dateList,
      int selectedDateIndex,
      Option<Either<Failure, dynamic>> failureOrSuccessOption});
}

/// @nodoc
class __$$_SigninStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_SigninState>
    implements _$$_SigninStateCopyWith<$Res> {
  __$$_SigninStateCopyWithImpl(
      _$_SigninState _value, $Res Function(_$_SigninState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? showError = null,
    Object? errorMessage = freezed,
    Object? dateList = null,
    Object? selectedDateIndex = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_SigninState(
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
      dateList: null == dateList
          ? _value._dateList
          : dateList // ignore: cast_nullable_to_non_nullable
              as List<Day>,
      selectedDateIndex: null == selectedDateIndex
          ? _value.selectedDateIndex
          : selectedDateIndex // ignore: cast_nullable_to_non_nullable
              as int,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_SigninState implements _SigninState {
  const _$_SigninState(
      {required this.isLoading,
      required this.showError,
      required this.errorMessage,
      required final List<Day> dateList,
      required this.selectedDateIndex,
      required this.failureOrSuccessOption})
      : _dateList = dateList;

  @override
  final bool isLoading;
  @override
  final bool showError;
  @override
  final String? errorMessage;
  final List<Day> _dateList;
  @override
  List<Day> get dateList {
    if (_dateList is EqualUnmodifiableListView) return _dateList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dateList);
  }

  @override
  final int selectedDateIndex;
  @override
  final Option<Either<Failure, dynamic>> failureOrSuccessOption;

  @override
  String toString() {
    return 'AppState(isLoading: $isLoading, showError: $showError, errorMessage: $errorMessage, dateList: $dateList, selectedDateIndex: $selectedDateIndex, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SigninState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._dateList, _dateList) &&
            (identical(other.selectedDateIndex, selectedDateIndex) ||
                other.selectedDateIndex == selectedDateIndex) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      showError,
      errorMessage,
      const DeepCollectionEquality().hash(_dateList),
      selectedDateIndex,
      failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SigninStateCopyWith<_$_SigninState> get copyWith =>
      __$$_SigninStateCopyWithImpl<_$_SigninState>(this, _$identity);
}

abstract class _SigninState implements AppState {
  const factory _SigninState(
      {required final bool isLoading,
      required final bool showError,
      required final String? errorMessage,
      required final List<Day> dateList,
      required final int selectedDateIndex,
      required final Option<Either<Failure, dynamic>>
          failureOrSuccessOption}) = _$_SigninState;

  @override
  bool get isLoading;
  @override
  bool get showError;
  @override
  String? get errorMessage;
  @override
  List<Day> get dateList;
  @override
  int get selectedDateIndex;
  @override
  Option<Either<Failure, dynamic>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_SigninStateCopyWith<_$_SigninState> get copyWith =>
      throw _privateConstructorUsedError;
}
