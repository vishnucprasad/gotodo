import 'package:dartz/dartz.dart';
import 'package:gotodo/domain/core/value_failure.dart';
import 'package:gotodo/domain/core/value_object.dart';
import 'package:gotodo/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory EmailAddress(String input) {
    return EmailAddress._(validateStringNotEmpty(input).flatMap(
      (a) => validateEmailAddress(a),
    ));
  }
  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Password(String input) {
    return Password._(validateStringNotEmpty(input).flatMap(
      (a) => validatePassWord(a),
    ));
  }
  const Password._(this.value);
}

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Name(String input) {
    return Name._(validateStringNotEmpty(input).flatMap(
      (a) => validateName(a),
    ));
  }
  const Name._(this.value);
}

class CategoryName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory CategoryName(String input) {
    return CategoryName._(validateStringNotEmpty(input));
  }
  const CategoryName._(this.value);
}
