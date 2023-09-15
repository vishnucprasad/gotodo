// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryData {
  CategoryName get categoryName => throw _privateConstructorUsedError;
  String get colorString => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryDataCopyWith<CategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDataCopyWith<$Res> {
  factory $CategoryDataCopyWith(
          CategoryData value, $Res Function(CategoryData) then) =
      _$CategoryDataCopyWithImpl<$Res, CategoryData>;
  @useResult
  $Res call({CategoryName categoryName, String colorString});
}

/// @nodoc
class _$CategoryDataCopyWithImpl<$Res, $Val extends CategoryData>
    implements $CategoryDataCopyWith<$Res> {
  _$CategoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? colorString = null,
  }) {
    return _then(_value.copyWith(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as CategoryName,
      colorString: null == colorString
          ? _value.colorString
          : colorString // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryDataCopyWith<$Res>
    implements $CategoryDataCopyWith<$Res> {
  factory _$$_CategoryDataCopyWith(
          _$_CategoryData value, $Res Function(_$_CategoryData) then) =
      __$$_CategoryDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryName categoryName, String colorString});
}

/// @nodoc
class __$$_CategoryDataCopyWithImpl<$Res>
    extends _$CategoryDataCopyWithImpl<$Res, _$_CategoryData>
    implements _$$_CategoryDataCopyWith<$Res> {
  __$$_CategoryDataCopyWithImpl(
      _$_CategoryData _value, $Res Function(_$_CategoryData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? colorString = null,
  }) {
    return _then(_$_CategoryData(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as CategoryName,
      colorString: null == colorString
          ? _value.colorString
          : colorString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CategoryData extends _CategoryData {
  const _$_CategoryData({required this.categoryName, required this.colorString})
      : super._();

  @override
  final CategoryName categoryName;
  @override
  final String colorString;

  @override
  String toString() {
    return 'CategoryData(categoryName: $categoryName, colorString: $colorString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryData &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.colorString, colorString) ||
                other.colorString == colorString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryName, colorString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryDataCopyWith<_$_CategoryData> get copyWith =>
      __$$_CategoryDataCopyWithImpl<_$_CategoryData>(this, _$identity);
}

abstract class _CategoryData extends CategoryData {
  const factory _CategoryData(
      {required final CategoryName categoryName,
      required final String colorString}) = _$_CategoryData;
  const _CategoryData._() : super._();

  @override
  CategoryName get categoryName;
  @override
  String get colorString;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryDataCopyWith<_$_CategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}
