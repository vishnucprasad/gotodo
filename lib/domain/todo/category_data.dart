import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gotodo/presentation/core/colors.dart';
import 'package:gotodo/presentation/extension/hex_color.extension.dart';

import '../core/value_failure.dart';
import '../core/value_objects.dart';
part 'category_data.freezed.dart';

@freezed
class CategoryData with _$CategoryData {
  const CategoryData._();
  const factory CategoryData({
    required CategoryName categoryName,
    required String colorString,
  }) = _CategoryData;

  factory CategoryData.empty() {
    return CategoryData(
      categoryName: CategoryName(""),
      colorString: primaryColor.toHex(),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return categoryName.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
