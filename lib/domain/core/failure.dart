import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gotodo/domain/core/constants.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.clientFailure(String msg) = _ClientFailure;
  const factory Failure.serverFailure(String msg) = _ServerFailure;
  const factory Failure.tokenFailure(TokenType type) = _TokenFailure;
}
