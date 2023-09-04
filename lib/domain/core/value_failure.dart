import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty({
    required String failedValue,
  }) = _Empty<T>;
  const factory ValueFailure.invalid({
    required String failedValue,
  }) = _Invalid<T>;
}
