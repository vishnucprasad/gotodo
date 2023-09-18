import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_range.freezed.dart';

@freezed
class DateRange with _$DateRange {
  const factory DateRange({
    required DateTime fromDate,
    required DateTime toDate,
  }) = _DateRange;

  factory DateRange.week() {
    final today = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
    );
    final startOfWeek =
        today.subtract(Duration(days: today.weekday < 7 ? today.weekday : 0));
    final endOfWeek =
        today.add(const Duration(days: 6)).subtract(const Duration(seconds: 1));

    return DateRange(
      fromDate: startOfWeek,
      toDate: endOfWeek,
    );
  }

  factory DateRange.month() {
    final today = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
    );
    final startOfMonth = DateTime(today.year, today.month, 1);
    final endOfMonth = DateTime(today.year, today.month + 1, 0);

    return DateRange(
      fromDate: startOfMonth,
      toDate: endOfMonth,
    );
  }

  factory DateRange.year() {
    final today = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
    );
    final startOfMonth = DateTime(today.year);
    final endOfMonth = DateTime(today.year, 12, 31);

    return DateRange(
      fromDate: startOfMonth,
      toDate: endOfMonth,
    );
  }

  factory DateRange.infinity() {
    return DateRange(
      fromDate: DateTime.fromMillisecondsSinceEpoch(0),
      toDate: DateTime(2100),
    );
  }
}
