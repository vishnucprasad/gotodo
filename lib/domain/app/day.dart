import 'package:freezed_annotation/freezed_annotation.dart';

part 'day.freezed.dart';

@freezed
class Day with _$Day {
  const factory Day({
    required int date,
    required int weekDay,
    required String weekDayAbbreviation,
  }) = _Day;
}
