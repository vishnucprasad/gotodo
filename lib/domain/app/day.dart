import 'package:freezed_annotation/freezed_annotation.dart';

part 'day.freezed.dart';

@freezed
class Day with _$Day {
  const factory Day({
    required DateTime dateTime,
    required int date,
    required int weekDay,
    required String weekDayAbbreviation,
  }) = _Day;

  static bool isToday(Day day) {
    final today = DateTime.now();
    return day.dateTime.day == today.day &&
        day.dateTime.month == today.month &&
        day.dateTime.year == today.year;
  }

  static bool isPreviousDay(Day day) {
    final today = DateTime.now();
    return day.dateTime.year < today.year ||
        (day.dateTime.month < today.month && day.dateTime.year <= today.year) ||
        (day.dateTime.day < today.day &&
            day.dateTime.month <= today.month &&
            day.dateTime.year <= today.year);
  }
}
